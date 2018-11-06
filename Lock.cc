#include "Lock.h"

namespace coroutine {
bool Spinlock::try_lock()
{
	return lk.try_lock();
};


void Spinlock::lock()
{
	while (!lk.try_lock()) {
	}
	/*
	 * do some thing later
	 */
}

void Spinlock::unlock()
{
	/*
	 * do some thing later
	 */
	lk.unlock();
}

bool Sleeplock::try_lock()
{
	return lk.try_lock();
}

void Sleeplock::lock()
{
	if (lk.try_lock()) {
	} else {
	}
}

void Sleeplock::unlock()
{
	// do some later
	lk.unlock();
}
}
