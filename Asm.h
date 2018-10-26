#pragma once

namespace coroutine {
#define Rsp(__rsp)  {asm volatile ("movq %%rsp, %0" : (=a)(__rsp) ::);}
}
