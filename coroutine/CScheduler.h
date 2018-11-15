#pragma once

#include <iostream>
#include <vector>
#include <queue>
#include <mutex>
#include <condition_variable>
#include <atomic>
#include <unordered_map>
#include <thread>

#include "Common.h"
#include "Lock.h"
#include "Coroutine.h"
#include "Asm.h"

namespace coroutine {

const uint64_t stackSize = 0x1000;
class Scheduler;
class GlobalQueue;
class Coroutine;


extern "C" {

	void Switch(Scheduler *, Coroutine *, Coroutine *);

 	void StartCoroutine(Coroutine *coroutine);

}

using CurrentCoroutines = std::unordered_map<std::thread::id, Coroutine *>;

class Coroutine : public NoCopyAndMove<Coroutine> {
public:
	typedef enum {
		RUNNING,
		RUNABLE,
		WAITTING,
		ZOMBIED
	}CStatus;
public:
	explicit Coroutine(coroutine_func);

	explicit Coroutine(uint64_t (*func)(void *), void *arg);

	Coroutine(const Coroutine &other) = delete;

	Coroutine(Coroutine &&other) = delete;


	void Yeild();

	void WaitFor(Spinlock *spinlock);

	~Coroutine() {
	}

	CStatus  GetStatus();

	void	SetStatus();

	friend class Scheduler;
	friend class GlobalQueue;
	friend void Switch(Scheduler *, Coroutine *, Coroutine *);

	friend void StartCoroutine(Coroutine *coroutine);

	static void setCurrent(Coroutine *);

	static Coroutine *current(void);

private:
	Coroutine(void);
	/*
	 * here we judge we have one or more coroutines
	 * */
	void OnExit(uint64_t code);

	void Destroy();
private:
	std::vector<char>	stack;

	coroutine_func func;

	uint64_t	cid;

	uint64_t 	rsp;

	Scheduler	*scheduler;

	Spinlock	*wlock;

	CStatus		status;

	bool 		yeild;
	//十分重要的计数器 如果这个计数器 == 0则终止程序了呢
	static std::atomic_ulong coroutines;


	static Spinlock currentLock;

	static CurrentCoroutines currentCoroutines;
};


class Scheduler : public NoCopyAndMove<Scheduler>{
public:
	Scheduler();

	Scheduler(const Scheduler &other) = delete;

	Scheduler(Scheduler &&other) = delete;

	~Scheduler(){};

	void Schedule();

	void SwitchCoroutine(Coroutine *next);

	void SwitchCoroutine();
	
	void PushCoroutine(Coroutine *coroutine);
	
	void Exit();
public:
	typedef enum {
		RUNNING,
		SCHEDULER,
		STEALOTHER,
		STEALGLOBAL,
		WAITGLOABL
	}SStatus;
private:
	Coroutine *StealOther();

	Coroutine *StealGlobal();

	Coroutine *Wait();

	void Register();

	void Lend(std::deque<Coroutine *> &swapQueue);
	
	friend void Switch(Scheduler *, Coroutine *, Coroutine *);

	friend GlobalQueue;

private:
	std::deque<Coroutine *> queue;


	Spinlock				lock;

	Coroutine				*current;

	Coroutine				schedulerCoroutine;


	static std::vector<Scheduler *> schedulers;

	static Spinlock			slock;

	static GlobalQueue		globalQueue;
};

class GlobalQueue : public NoCopyAndMove<GlobalQueue>{
public:
	GlobalQueue();

	GlobalQueue(const GlobalQueue &other) = delete;

	GlobalQueue(GlobalQueue &&other) = delete;

	void	PushCoroutine(Coroutine *);
	
	void    Exit();
	void 	PushCoroutine(std::deque<Coroutine *> &);
	
	Coroutine *PopCoroutine(Scheduler *scheduler);

	std::deque<Coroutine *> PopCoroutine(void);
private:
	class GlobalQueueLock {
	public:
		void lock()
		{
			lk.lock();
		}
	
		void spinlock()
		{
			while(!lk.try_lock());
		}

		bool try_lock()
		{
			return lk.try_lock();
		}

		void unlock()
		{
			lk.unlock();
		}
	public:
		OsLock 	lk;
	};

	friend Scheduler;
	GlobalQueueLock 		lock;
	std::deque<Coroutine *> queue;
	
	bool 					exited = false;
	std::condition_variable wait;
	uint64_t				nwait;
};

class SchedulerPool : NoCopyAndMove<SchedulerPool> {
/*
 * balabala
 */
};
}
