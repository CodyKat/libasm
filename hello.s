section   .text
          global    _start
str:	db "a"
_start:
	push	rbp
	mov	rbp, rsp

	mov	rdi, 1
	mov	rsi, str
	mov	edx, 1
	mov rax, 0x02000004
	syscall

	pop	rbp
	ret