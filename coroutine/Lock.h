#pragma once

#include <mutex>

#include "Common.h"

namespace coroutine {
class Coroutine;
class Scheduler;
class Spinlock : public NoCopyAndMove<Spinlock> {
public:
	Spinlock(){}
	Spinlock(const Spinlock &other) = delete;
	Spinlock(Spinlock &&other) = delete;
	bool try_lock();
	void lock();
	void unlock();

	friend Coroutine;
	friend Scheduler;
private:
	OsLock	lk;
};

class Sleeplock : public NoCopyAndMove<Sleeplock> {
public:
	Sleeplock(){}
	Sleeplock(const Sleeplock &other) = delete;
	Sleeplock(Sleeplock &&other) = delete;
	bool try_lock();
	void lock();
	void unlock();
	friend Coroutine;
	friend Scheduler;
private:
	OsLock	lk;
};

}
