#pragma once

#include <functional>

namespace coroutine {
#ifndef uint64_t
typedef unsigned long uint64_t;
#endif

class Coroutine;
using coroutine_func = std::function<uint64_t(void)>;
typedef uint64_t (*coroutine_func1)(void *arg);

void CoroutineInit(int nthreads);

void CoroutineGo();
void CreateCoroutine(coroutine_func func);
void CreateCoroutine(coroutine_func1 func, void *arg);
void CoroutineYeild();

Coroutine *CurrentCoroutine();

}
