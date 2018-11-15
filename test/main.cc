#include "coroutine/Coroutine.h"
#include "coroutine/CScheduler.h"
#include <iostream>
#include <mutex>
#include "gtest/gtest.h"

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


TEST(A, 1) {
    ASSERT_EQ(1, 2);
	coroutine::CoroutineInit(4);
	for (int i = 0; i < 100; i++) {
		coroutine::CreateCoroutine(test, nullptr);
	}
	coroutine::CoroutineGo();
}
