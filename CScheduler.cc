#include "CScheduler.h"
#include "Asm.h"

#include <cstring>
#include <cstdio>
#include <cstdlib>

namespace coroutine {

void Switch(Scheduler *scheduler, Coroutine **current, Coroutine *next)
{
	scheduler->current = next;
	*current = next;
}

extern "C" void swtch(void);

void Scheduler::SwitchCoroutine(Coroutine *next)
{
	asm volatile( "\
			pushq	%0;\
			pushq	%1;\
			pushq 	%2;\
			pushq	%3;\
			pushq	%4;\
			callq	*%5;"
			:
			:"a" (next->rsp), "b" (next), "c" (&current->rsp), "d" (&current), "S" (this), "D" (swtch)
			:"memory", "cc");
}


void StartCoroutine(Coroutine *coroutine)
{
	uint64_t exit_code = 0;
	exit_code = coroutine->func(coroutine->arg);
	coroutine->OnExit(exit_code);
}

extern "C" void toStart(void);

Coroutine::Coroutine(coroutine_func func, void *arg) : stack(stackSize, 0), status(RUNABLE), cid(-1), rsp(0)
{
	char *stackTop = stack.data() + stackSize;
	uint64_t this_ptr = (uint64_t)(this);
	uint64_t start_eip = (uint64_t)(toStart);
	stackTop = (char *)(((uint64_t)stackTop) & ~0x7);
	stackTop -= 0x8;
	std::memcpy(stackTop, &this_ptr, 0x8);
	//uint64_t *a = (uint64_t *)(stackTop);
	stackTop -= 0x8;
	std::memcpy(stackTop, &start_eip, 0x8);
	stackTop -= 0x8 * 5;
	rsp = (uint64_t)(stackTop);
	this->func = func;
	this->arg = arg;
}

Coroutine::Coroutine()
{
	cid = 0;
	stack.clear();
	status = RUNNING;
	func = nullptr;
	arg = nullptr;
}

void Coroutine::OnExit(uint64_t code)
{
	std::exit(code);
}
Scheduler::Scheduler()
{
	current = new Coroutine();
}
}
