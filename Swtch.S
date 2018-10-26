.extern Switch
.extern StartCoroutine
.text
.globl swtch
.type swtch, @function
swtch:
	movq	0x8(%rsp), %rax
	movq	0x10(%rsp), %rcx
	movq	0x18(%rsp), %rdx
	movq	0x20(%rsp), %rsi
	movq	0x28(%rsp), %rdi
	pushq	%rbx
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	%r15
	movq	%rsp, %rbx
	movq	%rbx, (%rdx)
	movq	%rdi, %rsp
	movq	%rax, %rdi
	movq	%rsi, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdx
	callq	Switch
	popq	%r15
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%rbx
	retq

.globl toStart
.type toStart, @function
toStart:
	movq	(%rsp), %rdi
	call	StartCoroutine
	retq
