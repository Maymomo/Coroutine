#include "Coroutine.h"
#include "CScheduler.h"
#include "Asm.h"

#include <thread>
#include <map>
#include <iostream>

namespace coroutine {

using SCPair = std::pair<Scheduler *, Coroutine *>;
using PerThreadScheduler = std::map<std::thread::id, SCPair>;


static PerThreadScheduler scmap;

void CoroutineInit()
{
	std::thread::id id = std::this_thread::get_id();
	std::cout << id << std::endl;
	// init context
}


uint64_t  test(void *arg)
{
	std::cout << "I'm new coroutine" << std::endl;
	return 0;
}

void Test()
{
	Scheduler s;
	Coroutine c(test, nullptr);
	s.SwitchCoroutine(&c);
}
}
