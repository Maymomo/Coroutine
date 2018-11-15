#include "coroutine/Coroutine.h"
#include "coroutine/CScheduler.h"
#include <iostream>
#include <mutex>

static std::mutex l;

uint64_t test(void *arg)
{
	static int k = 0;
	for(int i = 0; i < 1; i++) {
        std::cout << "Hello, world" << std::endl;
		coroutine::CoroutineYeild();
	}
	return 0;
}

int main(void)
{

	coroutine::CoroutineInit(4);
	for (int i = 0; i < 100; i++) {
		coroutine::CreateCoroutine(test, nullptr);
	}
	coroutine::CoroutineGo();
	return 0;
}