#pragma once

namespace coroutine {
#ifndef uint64_t
typedef unsigned long uint64_t;
#endif

typedef uint64_t (*coroutine_func)(void *);

void CoroutineInit();
void CoroutineGo();
void CreateCoroutine(coroutine_func func, void *arg);
void CoroutineYeild();

void Test();

}
