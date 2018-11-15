#pragma once

namespace coroutine {

static inline uint64_t Rsp() {
	uint64_t rsp;
	asm volatile ("movq %%rsp, %0;"
	: "=a"(rsp)
	:
	:);
	return rsp;
}

}
