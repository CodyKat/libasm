	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_ft_strncmp             ## -- Begin function ft_strncmp
	.p2align	4, 0x90
_ft_strncmp:                            ## @ft_strncmp
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -28(%rbp)
	cmpl	$0, %eax
	jle	LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -29(%rbp)
	movq	-24(%rbp), %rax
	movb	(%rax), %cl
	movb	%cl, -30(%rbp)
	movzbl	-29(%rbp), %edx
	movzbl	-30(%rbp), %esi
	cmpl	%esi, %edx
	jle	LBB0_4
## %bb.3:
	movl	$1, -4(%rbp)
	jmp	LBB0_13
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movzbl	-29(%rbp), %eax
	movzbl	-30(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	LBB0_6
## %bb.5:
	movl	$-1, -4(%rbp)
	jmp	LBB0_13
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movzbl	-29(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movzbl	-30(%rbp), %eax
	cmpl	$0, %eax
	jne	LBB0_9
## %bb.8:
	movl	$0, -4(%rbp)
	jmp	LBB0_13
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB0_1
LBB0_12:
	movl	$0, -4(%rbp)
LBB0_13:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
