	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp				; push rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp			; mov rbp rsp
	.cfi_def_cfa_register %rbp
	leaq	L_.str(%rip), %rsi	; rsi			; lea rsi [.str + rip]
	movl	$1, %edx			; mov edx 1
	movl	$1, %edi			; mov edi 1
	callq	_write				; call _write
	xorl	%eax, %eax			; xor eax, eax
	popq	%rbp				; pop rbp
	retq						; ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"1"

.subsections_via_symbols
