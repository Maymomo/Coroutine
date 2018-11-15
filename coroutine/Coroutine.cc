#include "Coroutine.h"
#include "CScheduler.h"
#include "Asm.h"

#include <vector>
#include <thread>
#include <unordered_map>
#include <iostream>


namespace coroutine {


static std::vector<Scheduler*> schedulers;
static std::vector<std::thread> threads;
static Spinlock tslock;

auto initOther = [&tslock, &schedulers] () -> void {
		Scheduler *scheduler = new Scheduler();
		{
			std::lock_guard<Spinlock> lk(tslock);
			schedulers.push_back(scheduler);
		}
		scheduler->Schedule();
};

void CoroutineInit(int nthreads)
{

	Scheduler *scheduler = new Scheduler();
	schedulers.push_back(scheduler);
	for (int i = 0; i < nthreads - 1; i++) {
		threads.push_back(std::thread(initOther));
	}

	for (std::thread &thread : threads) {
		thread.detach();
	}
}

void CoroutineGo()
{
	schedulers[0]->Schedule();
}

void CreateCoroutine(coroutine_func1 func, void *arg)
{
	new Coroutine(func, arg);
}

void CoroutineYeild()
{
	Coroutine *current = Coroutine::current();
	current->Yeild();
}

Coroutine *CurrentCoroutine()
{
	return Coroutine::current();
}
}
