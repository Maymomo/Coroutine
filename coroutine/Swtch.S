.extern Switch
.extern StartCoroutine
.text
.globl swtch
.type swtch, @function
swtch:
	push 	%rbp
	movq	%rsp, %rbp

	// rdi scheduler
	// rsi current
	// rdx &current->rsp
	// rcx next
	// r8  next->rsp
	
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	pushq   %rax

	movq	%rsp, %rbx
	movq	%rbx, (%rdx)

	movq	%r8, %rsp

	movq	%rcx, %rdx

	callq	Switch

	popq	%rax
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbx

	popq	%rbp
	retq

.globl toStart
.type toStart, @function
toStart:
	movq	(%rsp), %rdi
	call	StartCoroutine
	retq
