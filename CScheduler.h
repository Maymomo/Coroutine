#pragma once

#include <iostream>
#include <vector>

#include <unordered_map>

#include "Coroutine.h"

namespace coroutine {
typedef enum {
	RUNNING,
	RUNABLE,
	ZOMBIED
}CStatus;


class Scheduler;
class Coroutine;


extern "C" void Switch(Scheduler *, Coroutine **, Coroutine *);
extern "C" void StartCoroutine(Coroutine *coroutine);

class Coroutine {
public:
	Coroutine(coroutine_func func, void *arg);

	friend  class Scheduler;
	friend void Switch(Scheduler *, Coroutine **, Coroutine *);
	friend void StartCoroutine(Coroutine *coroutine);
	const 	uint64_t stackSize = 0x10000;
private:
	Coroutine(void);
	void OnExit(uint64_t code);
private:
	uint64_t	cid;
	std::vector<char>	stack;
	uint64_t 	rsp;
	coroutine_func func;
	void		*arg;
	CStatus		status;
};


class Scheduler {
public:
	Scheduler();
	void Schedule();
	void SwitchCoroutine(Coroutine *next);
private:
	friend void Switch(Scheduler *, Coroutine **, Coroutine *);
private:
	std::unordered_map<uint64_t, Coroutine*> coroutine_map;
	std::vector<Coroutine*> queue;
	uint64_t				coroutine_count;
	Coroutine				*current;
};
}
