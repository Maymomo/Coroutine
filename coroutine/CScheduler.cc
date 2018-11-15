#include <unordered_map>
#include <queue>
#include <thread>
#include <cstring>
#include <cstdio>
#include <cstdlib>
#include <assert.h>
#include <atomic>
#include <condition_variable>

#include "Asm.h"
#include "Common.h"
#include "CScheduler.h"
#include "Lock.h"

namespace coroutine {

std::atomic_ulong coroutines;

Spinlock Coroutine::currentLock;

CurrentCoroutines Coroutine::currentCoroutines;


void Switch(Scheduler *scheduler, Coroutine *current, Coroutine *next)
{
	scheduler->current = next;
	next->scheduler = scheduler;
	current->scheduler = nullptr;
	if (current->status == Coroutine::CStatus::ZOMBIED)
		delete current;
	else {
		if (current->wlock != nullptr)
			current->wlock->unlock();
		if (current->yeild) {
			current->yeild = false;
			scheduler->globalQueue.PushCoroutine(current);
		}
	}
	Coroutine::setCurrent(next);
}



std::vector<Scheduler *> Scheduler::schedulers;
Spinlock		Scheduler::slock;
GlobalQueue		Scheduler::globalQueue;

void Coroutine::setCurrent(Coroutine *current)
{
	std::lock_guard<Spinlock> lk(currentLock);
	currentCoroutines[std::this_thread::get_id()] = current;
}

Scheduler::Scheduler() : schedulerCoroutine()
{
	current = &schedulerCoroutine;
	current->scheduler = this;
	Coroutine::setCurrent(current);
}


void Scheduler::Schedule()
{

	while(1)  {
		Coroutine *next = nullptr;
		{
			std::lock_guard<Spinlock> lk(lock);
			if (queue.size() > 0) {
				next = queue.front();
				queue.pop_front();
				goto find;
			}
		}
		if ((next = StealOther()) != nullptr)
			goto find;
		if ((next = StealGlobal()) != nullptr)
			goto find;
		else
			continue;
find:
		SwitchCoroutine(next);
	}
}

Coroutine *Scheduler::StealOther()
{
	Scheduler *max = nullptr;

	Coroutine *next = nullptr;

	uint64_t  maxCoroutine = 1;

	std::lock_guard<Spinlock> lks(slock);

	for (Scheduler *scheduler : schedulers) {
		if (scheduler == this)
			continue;
		uint64_t otherCount = 0;
		{
			std::lock_guard<Spinlock> lk(scheduler->lock);
			otherCount = scheduler->queue.size();
		}
		if (maxCoroutine < otherCount) {
			maxCoroutine = otherCount;
			max = scheduler;
		}
	}
	if (max == nullptr) {
		return nullptr;
	}

	std::deque<Coroutine *> swapQueue;
	max->Lend(swapQueue);
	if (swapQueue.empty())
		return nullptr;
	std::lock_guard<Spinlock> lk(lock);
	queue.insert(queue.begin(), swapQueue.begin(), swapQueue.end());
	next = queue.front();
	queue.pop_front();

	return next;
}

void Scheduler::Lend(std::deque<Coroutine *> &swapQueue)
{
	std::lock_guard<Spinlock> lk(lock);
	uint64_t maxCoroutine = queue.size();
	if (maxCoroutine <= 1)
		return;
	swapQueue.insert(swapQueue.cend(), queue.end() - (maxCoroutine / 2), queue.end());
	queue.erase(queue.end()-(maxCoroutine / 2), queue.end());
}

Coroutine *Scheduler::StealGlobal()
{
	Coroutine *next = globalQueue.PopCoroutine(this);
	return next;
}


void Scheduler::PushCoroutine(Coroutine *coroutine)
{
	std::lock_guard<Spinlock> lk(lock);
	queue.push_back(coroutine);
}

Coroutine *Scheduler::Wait()
{
	return nullptr;
}

void Scheduler::Exit()
{
	globalQueue.Exit();
}

extern "C" void swtch(Scheduler *, Coroutine *, uint64_t *, Coroutine *, uint64_t);

void Scheduler::SwitchCoroutine(Coroutine *next)
{
	swtch(this, current, &current->rsp, next, next->rsp);
}

void Scheduler::SwitchCoroutine()
{
	SwitchCoroutine(&schedulerCoroutine);
}

void StartCoroutine(Coroutine *coroutine)
{
	uint64_t exit_code = 0;
	exit_code = coroutine->func();
	coroutine->OnExit(exit_code);
}

extern "C" void toStart(void);


std::atomic_ulong Coroutine::coroutines(0);
Coroutine::Coroutine(coroutine_func func) : stack(stackSize, 0),
	func(func), 
	cid(-1), 
	wlock(nullptr),
	status(RUNABLE)
{
	char *stackTop = stack.data() + stackSize;
	uint64_t this_ptr = (uint64_t)(this);
	uint64_t start_eip = (uint64_t)(toStart);
	stackTop = (char *)(((uint64_t)stackTop) & ~0xf);
	stackTop -= 0x10;
	std::memcpy(stackTop, &this_ptr, 0x8);
	stackTop -= 0x8;
	std::memcpy(stackTop, &start_eip, 0x8);
	stackTop -= 0x8 * 7;
	rsp = (uint64_t)(stackTop);
	scheduler = nullptr;
	coroutines++;
	/*
	 * add this to scheduler' queue
	 */
	Scheduler *currentScheduelr = current()->scheduler;
	currentScheduelr->PushCoroutine(this);
}

Coroutine::Coroutine(uint64_t (*func)(void *), void *arg):
	Coroutine(std::bind(func, arg))
{
}

Coroutine::Coroutine()
{
	cid = 0;
	stack.clear();
	status = RUNNING;
	func = nullptr;
}

void Coroutine::Yeild()
{
	yeild = true;
	scheduler->SwitchCoroutine();
	yeild = false;
}

void Coroutine::WaitFor(Spinlock *spinlock)
{
	wlock = spinlock;
	scheduler->SwitchCoroutine();
	wlock->lock();
	wlock = nullptr;
}


void Coroutine::OnExit(uint64_t code)
{
	if(--coroutines == 0) {
		scheduler->Exit();
		std::exit(code);
	}
	this->status = ZOMBIED;
	scheduler->SwitchCoroutine();
}

Coroutine *Coroutine::current(void)
{
	Coroutine *current = nullptr;
	{
		std::lock_guard<Spinlock> lk(currentLock);
		current = currentCoroutines[std::this_thread::get_id()];
	}
	assert(current != nullptr);
	return current;
}

GlobalQueue::GlobalQueue():nwait(0)
{
}


void GlobalQueue::PushCoroutine(Coroutine *coroutine)
{
	lock.spinlock();
	queue.insert(queue.end(), coroutine);
	if (nwait > 0) {
		wait.notify_all();
	}
	lock.unlock();
}

void GlobalQueue::PushCoroutine(std::deque<Coroutine *> &coroutines)
{
	lock.spinlock();
	queue.insert(queue.end(), coroutines.begin(), coroutines.end());
	if (nwait > 0) {
		wait.notify_all();
	}
	lock.unlock();
}

void GlobalQueue::Exit()
{
	lock.spinlock();
	exited = true;
	if (nwait > 0) {
		wait.notify_all();
	}
	lock.unlock();
}

Coroutine *GlobalQueue::PopCoroutine(Scheduler *scheduler)
{
	std::unique_lock<OsLock> lk(lock.lk);
	Coroutine *next = nullptr;
	if (queue.empty()) {
		nwait++;
		if (exited) {
			std::exit(EXIT_SUCCESS);
		}
		wait.wait(lk, [this] {
				return !queue.empty() || exited;
				});
		if (exited) {
			std::exit(EXIT_SUCCESS);
		}
		nwait--;
	}
	if (queue.empty()) {
		return nullptr;
	}
	next = queue.front();
	queue.pop_front();
	std::lock_guard<Spinlock> lks(scheduler->slock);
	scheduler->queue.swap(queue);
	return next;
}
}
