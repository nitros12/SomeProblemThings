	.file	"render.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.unlikely,"x"
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.section	.text.unlikely,"x"
.Ltext_cold0:
	.text
	.globl	addvec
	.def	addvec;	.scl	2;	.type	32;	.endef
	.seh_proc	addvec
addvec:
.LFB46:
	.file 1 "render.c"
	.loc 1 38 0
	.cfi_startproc
.LVL0:
	.seh_endprologue
	.loc 1 39 0
	movsd	(%rcx), %xmm0
	addsd	(%rdx), %xmm0
	movsd	%xmm0, (%rcx)
	.loc 1 40 0
	movsd	8(%rcx), %xmm0
	addsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rcx)
	.loc 1 41 0
	movsd	16(%rcx), %xmm0
	addsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rcx)
	ret
	.cfi_endproc
.LFE46:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely,"x"
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	mulvec
	.def	mulvec;	.scl	2;	.type	32;	.endef
	.seh_proc	mulvec
mulvec:
.LFB47:
	.loc 1 44 0
	.cfi_startproc
.LVL1:
	.seh_endprologue
	.loc 1 45 0
	movsd	(%rcx), %xmm0
	mulsd	(%rdx), %xmm0
	movsd	%xmm0, (%rcx)
	.loc 1 46 0
	movsd	8(%rcx), %xmm0
	mulsd	8(%rdx), %xmm0
	movsd	%xmm0, 8(%rcx)
	.loc 1 47 0
	movsd	16(%rcx), %xmm0
	mulsd	16(%rdx), %xmm0
	movsd	%xmm0, 16(%rcx)
	ret
	.cfi_endproc
.LFE47:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely,"x"
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	rotXvec
	.def	rotXvec;	.scl	2;	.type	32;	.endef
	.seh_proc	rotXvec
rotXvec:
.LFB48:
	.loc 1 50 0
	.cfi_startproc
.LVL2:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.seh_stackalloc	80
	.cfi_def_cfa_offset 96
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.cfi_offset 23, -64
	.cfi_offset 24, -48
	.cfi_offset 25, -32
	.seh_endprologue
	.loc 1 50 0
	movapd	%xmm1, %xmm8
	movq	%rcx, %rbx
	.loc 1 51 0
	movapd	%xmm1, %xmm0
	call	cos
.LVL3:
	movsd	16(%rbx), %xmm6
	movapd	%xmm0, %xmm7
	movapd	%xmm8, %xmm0
	call	sin
.LVL4:
	movsd	8(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	.loc 1 52 0
	mulsd	%xmm7, %xmm6
	.loc 1 51 0
	mulsd	%xmm7, %xmm2
	.loc 1 53 0
	movaps	64(%rsp), %xmm8
.LVL5:
	.loc 1 51 0
	mulsd	%xmm0, %xmm1
	.loc 1 53 0
	movaps	48(%rsp), %xmm7
	.loc 1 51 0
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm2, 8(%rbx)
	.loc 1 52 0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 16(%rbx)
	.loc 1 53 0
	movaps	32(%rsp), %xmm6
	addq	$80, %rsp
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL6:
	ret
	.cfi_endproc
.LFE48:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely,"x"
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	rotYvec
	.def	rotYvec;	.scl	2;	.type	32;	.endef
	.seh_proc	rotYvec
rotYvec:
.LFB49:
	.loc 1 55 0
	.cfi_startproc
.LVL7:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.seh_stackalloc	80
	.cfi_def_cfa_offset 96
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.cfi_offset 23, -64
	.cfi_offset 24, -48
	.cfi_offset 25, -32
	.seh_endprologue
	.loc 1 55 0
	movapd	%xmm1, %xmm8
	movq	%rcx, %rbx
	.loc 1 56 0
	movapd	%xmm1, %xmm0
	call	cos
.LVL8:
	movsd	16(%rbx), %xmm6
	movapd	%xmm0, %xmm7
	movapd	%xmm8, %xmm0
	call	sin
.LVL9:
	movsd	(%rbx), %xmm1
	mulsd	%xmm6, %xmm0
	.loc 1 58 0
	movaps	64(%rsp), %xmm8
.LVL10:
	.loc 1 57 0
	mulsd	%xmm7, %xmm6
	.loc 1 56 0
	mulsd	%xmm7, %xmm1
	.loc 1 58 0
	movaps	48(%rsp), %xmm7
	.loc 1 57 0
	subsd	%xmm0, %xmm6
	.loc 1 56 0
	addsd	%xmm0, %xmm1
	.loc 1 57 0
	movsd	%xmm6, 16(%rbx)
	.loc 1 58 0
	movaps	32(%rsp), %xmm6
	.loc 1 56 0
	movsd	%xmm1, (%rbx)
	.loc 1 58 0
	addq	$80, %rsp
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL11:
	ret
	.cfi_endproc
.LFE49:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely,"x"
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	rotZvec
	.def	rotZvec;	.scl	2;	.type	32;	.endef
	.seh_proc	rotZvec
rotZvec:
.LFB50:
	.loc 1 60 0
	.cfi_startproc
.LVL12:
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.seh_stackalloc	80
	.cfi_def_cfa_offset 96
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	.cfi_offset 23, -64
	.cfi_offset 24, -48
	.cfi_offset 25, -32
	.seh_endprologue
	.loc 1 60 0
	movapd	%xmm1, %xmm8
	movq	%rcx, %rbx
	.loc 1 61 0
	movapd	%xmm1, %xmm0
	call	cos
.LVL13:
	movsd	8(%rbx), %xmm6
	movapd	%xmm0, %xmm7
	movapd	%xmm8, %xmm0
	call	sin
.LVL14:
	movsd	(%rbx), %xmm2
	movapd	%xmm6, %xmm1
	.loc 1 62 0
	mulsd	%xmm7, %xmm6
	.loc 1 61 0
	mulsd	%xmm7, %xmm2
	.loc 1 63 0
	movaps	64(%rsp), %xmm8
.LVL15:
	.loc 1 61 0
	mulsd	%xmm0, %xmm1
	.loc 1 63 0
	movaps	48(%rsp), %xmm7
	.loc 1 61 0
	subsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm1
	movsd	%xmm2, (%rbx)
	.loc 1 62 0
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm6
	movsd	%xmm6, 8(%rbx)
	.loc 1 63 0
	movaps	32(%rsp), %xmm6
	addq	$80, %rsp
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL16:
	ret
	.cfi_endproc
.LFE50:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely,"x"
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	rotateVec
	.def	rotateVec;	.scl	2;	.type	32;	.endef
	.seh_proc	rotateVec
rotateVec:
.LFB51:
	.loc 1 65 0
	.cfi_startproc
.LVL17:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 128
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.cfi_offset 23, -96
	.cfi_offset 24, -80
	.cfi_offset 25, -64
	.cfi_offset 26, -48
	.seh_endprologue
	.loc 1 65 0
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.loc 1 66 0
	movsd	(%rdx), %xmm8
.LVL18:
.LBB44:
.LBB45:
	.loc 1 51 0
	movapd	%xmm8, %xmm0
	call	cos
.LVL19:
	movsd	16(%rbx), %xmm7
	movapd	%xmm0, %xmm6
	movapd	%xmm8, %xmm0
	call	sin
.LVL20:
	movsd	8(%rbx), %xmm8
.LVL21:
	movapd	%xmm7, %xmm1
	.loc 1 52 0
	mulsd	%xmm6, %xmm7
	.loc 1 51 0
	mulsd	%xmm6, %xmm8
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm8
	.loc 1 52 0
	mulsd	%xmm8, %xmm0
	.loc 1 51 0
	movsd	%xmm8, 8(%rbx)
	.loc 1 52 0
	movapd	%xmm0, %xmm6
	addsd	%xmm7, %xmm6
.LBE45:
.LBE44:
	.loc 1 67 0
	movsd	8(%rsi), %xmm7
.LVL22:
.LBB46:
.LBB47:
	.loc 1 56 0
	movapd	%xmm7, %xmm0
	call	cos
.LVL23:
	movapd	%xmm0, %xmm9
	movapd	%xmm7, %xmm0
	call	sin
.LVL24:
	mulsd	%xmm6, %xmm0
	.loc 1 57 0
	mulsd	%xmm9, %xmm6
	.loc 1 56 0
	movsd	(%rbx), %xmm7
.LVL25:
	mulsd	%xmm9, %xmm7
	.loc 1 57 0
	subsd	%xmm0, %xmm6
	.loc 1 56 0
	addsd	%xmm0, %xmm7
	.loc 1 57 0
	movsd	%xmm6, 16(%rbx)
.LBE47:
.LBE46:
	.loc 1 68 0
	movsd	16(%rsi), %xmm9
.LVL26:
.LBB48:
.LBB49:
	.loc 1 61 0
	movapd	%xmm9, %xmm0
	call	cos
.LVL27:
	movapd	%xmm0, %xmm6
	movapd	%xmm9, %xmm0
	mulsd	%xmm6, %xmm7
	call	sin
.LVL28:
	movapd	%xmm0, %xmm1
.LBE49:
.LBE48:
	.loc 1 69 0
	movaps	80(%rsp), %xmm9
.LVL29:
.LBB54:
.LBB50:
	.loc 1 61 0
	mulsd	%xmm8, %xmm1
	.loc 1 62 0
	mulsd	%xmm6, %xmm8
.LBE50:
.LBE54:
	.loc 1 69 0
	movaps	32(%rsp), %xmm6
.LBB55:
.LBB51:
	.loc 1 61 0
	subsd	%xmm1, %xmm7
	movapd	%xmm7, %xmm1
	movsd	%xmm7, (%rbx)
.LBE51:
.LBE55:
	.loc 1 69 0
	movaps	48(%rsp), %xmm7
.LBB56:
.LBB52:
	.loc 1 62 0
	mulsd	%xmm0, %xmm1
	addsd	%xmm8, %xmm1
.LBE52:
.LBE56:
	.loc 1 69 0
	movaps	64(%rsp), %xmm8
.LBB57:
.LBB53:
	.loc 1 62 0
	movsd	%xmm1, 8(%rbx)
.LBE53:
.LBE57:
	.loc 1 69 0
	addq	$104, %rsp
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
.LVL30:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL31:
	ret
	.cfi_endproc
.LFE51:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely,"x"
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	translateRotate
	.def	translateRotate;	.scl	2;	.type	32;	.endef
	.seh_proc	translateRotate
translateRotate:
.LFB52:
	.loc 1 71 0
	.cfi_startproc
.LVL32:
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 16
	.cfi_offset 5, -16
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 24
	.cfi_offset 4, -24
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	addq	$-128, %rsp
	.seh_stackalloc	128
	.cfi_def_cfa_offset 160
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	movaps	%xmm10, 96(%rsp)
	.seh_savexmm	%xmm10, 96
	movaps	%xmm11, 112(%rsp)
	.seh_savexmm	%xmm11, 112
	.cfi_offset 23, -128
	.cfi_offset 24, -112
	.cfi_offset 25, -96
	.cfi_offset 26, -80
	.cfi_offset 27, -64
	.cfi_offset 28, -48
	.seh_endprologue
.LVL33:
	.loc 1 71 0
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	movq	%r8, %rdi
.LBB68:
.LBB69:
	.loc 1 39 0
	movsd	(%rcx), %xmm1
	.loc 1 41 0
	movsd	16(%rcx), %xmm9
	.loc 1 39 0
	addsd	(%r8), %xmm1
	.loc 1 41 0
	addsd	16(%r8), %xmm9
	.loc 1 39 0
	movsd	%xmm1, (%rbx)
	movapd	%xmm1, %xmm10
	.loc 1 41 0
	movapd	%xmm9, %xmm8
.LVL34:
.LBE69:
.LBE68:
.LBB70:
.LBB71:
	.loc 1 66 0
	movsd	(%rdx), %xmm6
.LVL35:
.LBB72:
.LBB73:
	.loc 1 51 0
	movapd	%xmm6, %xmm0
	call	cos
.LVL36:
	movapd	%xmm0, %xmm9
	movapd	%xmm6, %xmm0
	call	sin
.LVL37:
	movsd	8(%rbx), %xmm6
.LVL38:
	movapd	%xmm8, %xmm1
	addsd	8(%rdi), %xmm6
	mulsd	%xmm0, %xmm1
	mulsd	%xmm9, %xmm6
	.loc 1 52 0
	mulsd	%xmm8, %xmm9
	.loc 1 51 0
	subsd	%xmm1, %xmm6
	.loc 1 52 0
	mulsd	%xmm6, %xmm0
	.loc 1 51 0
	movsd	%xmm6, 8(%rbx)
.LBE73:
.LBE72:
	.loc 1 67 0
	movsd	8(%rsi), %xmm7
.LVL39:
.LBB75:
.LBB74:
	.loc 1 52 0
	addsd	%xmm9, %xmm0
	movapd	%xmm0, %xmm8
.LBE74:
.LBE75:
.LBB76:
.LBB77:
	.loc 1 56 0
	movapd	%xmm7, %xmm0
	call	cos
.LVL40:
	movapd	%xmm0, %xmm9
	movapd	%xmm7, %xmm0
	call	sin
.LVL41:
	movapd	%xmm0, %xmm7
.LVL42:
	mulsd	%xmm8, %xmm7
	.loc 1 57 0
	mulsd	%xmm9, %xmm8
	subsd	%xmm7, %xmm8
	movsd	%xmm8, 16(%rbx)
.LBE77:
.LBE76:
	.loc 1 68 0
	movsd	16(%rsi), %xmm11
.LVL43:
.LBB78:
.LBB79:
	.loc 1 61 0
	movapd	%xmm11, %xmm0
	call	cos
.LVL44:
	movapd	%xmm0, %xmm8
	movapd	%xmm11, %xmm0
	call	sin
.LVL45:
	movapd	%xmm10, %xmm1
	movapd	%xmm0, %xmm2
.LBE79:
.LBE78:
.LBE71:
.LBE70:
	.loc 1 74 0
	movaps	96(%rsp), %xmm10
.LBB95:
.LBB90:
.LBB85:
.LBB80:
	.loc 1 61 0
	mulsd	%xmm9, %xmm1
	mulsd	%xmm6, %xmm2
.LBE80:
.LBE85:
.LBE90:
.LBE95:
	.loc 1 74 0
	movaps	80(%rsp), %xmm9
.LBB96:
.LBB91:
.LBB86:
.LBB81:
	.loc 1 62 0
	mulsd	%xmm8, %xmm6
.LBE81:
.LBE86:
.LBE91:
.LBE96:
	.loc 1 74 0
	movaps	112(%rsp), %xmm11
.LVL46:
.LBB97:
.LBB92:
.LBB87:
.LBB82:
	.loc 1 61 0
	addsd	%xmm7, %xmm1
	mulsd	%xmm8, %xmm1
.LBE82:
.LBE87:
.LBE92:
.LBE97:
	.loc 1 74 0
	movaps	64(%rsp), %xmm8
.LBB98:
.LBB93:
.LBB88:
.LBB83:
	.loc 1 61 0
	movapd	%xmm1, %xmm7
	subsd	%xmm2, %xmm7
	movsd	%xmm7, (%rbx)
	.loc 1 62 0
	mulsd	%xmm0, %xmm7
	addsd	%xmm6, %xmm7
.LBE83:
.LBE88:
.LBE93:
.LBE98:
	.loc 1 74 0
	movaps	32(%rsp), %xmm6
.LBB99:
.LBB94:
.LBB89:
.LBB84:
	.loc 1 62 0
	movsd	%xmm7, 8(%rbx)
.LBE84:
.LBE89:
.LBE94:
.LBE99:
	.loc 1 74 0
	movaps	48(%rsp), %xmm7
	subq	$-128, %rsp
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
.LVL47:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 16
.LVL48:
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 8
.LVL49:
	ret
	.cfi_endproc
.LFE52:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely,"x"
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	rotateTri
	.def	rotateTri;	.scl	2;	.type	32;	.endef
	.seh_proc	rotateTri
rotateTri:
.LFB53:
	.loc 1 76 0
	.cfi_startproc
.LVL50:
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.seh_stackalloc	104
	.cfi_def_cfa_offset 128
	movaps	%xmm6, 32(%rsp)
	.seh_savexmm	%xmm6, 32
	movaps	%xmm7, 48(%rsp)
	.seh_savexmm	%xmm7, 48
	movaps	%xmm8, 64(%rsp)
	.seh_savexmm	%xmm8, 64
	movaps	%xmm9, 80(%rsp)
	.seh_savexmm	%xmm9, 80
	.cfi_offset 23, -96
	.cfi_offset 24, -80
	.cfi_offset 25, -64
	.cfi_offset 26, -48
	.seh_endprologue
	.loc 1 76 0
	movq	%rcx, %rbx
	movq	%rdx, %rsi
	.loc 1 77 0
	call	rotateVec
.LVL51:
	.loc 1 78 0
	leaq	24(%rbx), %rcx
	movq	%rsi, %rdx
	call	rotateVec
.LVL52:
.LBB108:
.LBB109:
	.loc 1 66 0
	movsd	(%rsi), %xmm8
.LVL53:
.LBB110:
.LBB111:
	.loc 1 51 0
	movapd	%xmm8, %xmm0
	call	cos
.LVL54:
	movsd	64(%rbx), %xmm7
	movapd	%xmm0, %xmm6
	movapd	%xmm8, %xmm0
	call	sin
.LVL55:
	movsd	56(%rbx), %xmm8
.LVL56:
	movapd	%xmm7, %xmm2
	.loc 1 52 0
	mulsd	%xmm6, %xmm7
	.loc 1 51 0
	mulsd	%xmm6, %xmm8
	mulsd	%xmm0, %xmm2
	subsd	%xmm2, %xmm8
	.loc 1 52 0
	mulsd	%xmm8, %xmm0
	movapd	%xmm0, %xmm6
	addsd	%xmm7, %xmm6
.LBE111:
.LBE110:
	.loc 1 67 0
	movsd	8(%rsi), %xmm7
.LVL57:
.LBB112:
.LBB113:
	.loc 1 56 0
	movapd	%xmm7, %xmm0
	call	cos
.LVL58:
	movapd	%xmm0, %xmm9
	movapd	%xmm7, %xmm0
	call	sin
.LVL59:
	mulsd	%xmm6, %xmm0
	.loc 1 57 0
	mulsd	%xmm9, %xmm6
	.loc 1 56 0
	movsd	48(%rbx), %xmm7
.LVL60:
	mulsd	%xmm9, %xmm7
	.loc 1 57 0
	subsd	%xmm0, %xmm6
.LBE113:
.LBE112:
	.loc 1 68 0
	movsd	16(%rsi), %xmm9
.LVL61:
.LBB116:
.LBB114:
	.loc 1 56 0
	addsd	%xmm0, %xmm7
.LBE114:
.LBE116:
.LBB117:
.LBB118:
	.loc 1 61 0
	movapd	%xmm9, %xmm0
.LBE118:
.LBE117:
.LBB124:
.LBB115:
	.loc 1 57 0
	movsd	%xmm6, 64(%rbx)
.LBE115:
.LBE124:
.LBB125:
.LBB119:
	.loc 1 61 0
	call	cos
.LVL62:
	movapd	%xmm0, %xmm6
	movapd	%xmm9, %xmm0
	mulsd	%xmm6, %xmm7
	call	sin
.LVL63:
	movapd	%xmm0, %xmm1
.LBE119:
.LBE125:
.LBE109:
.LBE108:
	.loc 1 80 0
	movaps	80(%rsp), %xmm9
.LVL64:
.LBB134:
.LBB130:
.LBB126:
.LBB120:
	.loc 1 61 0
	mulsd	%xmm8, %xmm1
	.loc 1 62 0
	mulsd	%xmm6, %xmm8
.LBE120:
.LBE126:
.LBE130:
.LBE134:
	.loc 1 80 0
	movaps	32(%rsp), %xmm6
.LBB135:
.LBB131:
.LBB127:
.LBB121:
	.loc 1 61 0
	subsd	%xmm1, %xmm7
	movapd	%xmm7, %xmm1
	movsd	%xmm7, 48(%rbx)
.LBE121:
.LBE127:
.LBE131:
.LBE135:
	.loc 1 80 0
	movaps	48(%rsp), %xmm7
.LBB136:
.LBB132:
.LBB128:
.LBB122:
	.loc 1 62 0
	mulsd	%xmm0, %xmm1
	addsd	%xmm8, %xmm1
.LBE122:
.LBE128:
.LBE132:
.LBE136:
	.loc 1 80 0
	movaps	64(%rsp), %xmm8
.LBB137:
.LBB133:
.LBB129:
.LBB123:
	.loc 1 62 0
	movsd	%xmm1, 56(%rbx)
.LBE123:
.LBE129:
.LBE133:
.LBE137:
	.loc 1 80 0
	addq	$104, %rsp
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
.LVL65:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 8
.LVL66:
	ret
	.cfi_endproc
.LFE53:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely,"x"
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	depthTri
	.def	depthTri;	.scl	2;	.type	32;	.endef
	.seh_proc	depthTri
depthTri:
.LFB54:
	.loc 1 82 0
	.cfi_startproc
.LVL67:
	subq	$120, %rsp
	.seh_stackalloc	120
	.cfi_def_cfa_offset 128
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	movaps	%xmm9, 48(%rsp)
	.seh_savexmm	%xmm9, 48
	movaps	%xmm10, 64(%rsp)
	.seh_savexmm	%xmm10, 64
	movaps	%xmm11, 80(%rsp)
	.seh_savexmm	%xmm11, 80
	movaps	%xmm12, 96(%rsp)
	.seh_savexmm	%xmm12, 96
	.cfi_offset 23, -128
	.cfi_offset 24, -112
	.cfi_offset 25, -96
	.cfi_offset 26, -80
	.cfi_offset 27, -64
	.cfi_offset 28, -48
	.cfi_offset 29, -32
	.seh_endprologue
	.loc 1 84 0
	movsd	56(%rcx), %xmm8
	.loc 1 83 0
	movsd	(%rcx), %xmm7
	.loc 1 84 0
	movapd	%xmm8, %xmm5
	.loc 1 83 0
	movsd	24(%rcx), %xmm4
	.loc 1 84 0
	movsd	32(%rcx), %xmm8
	.loc 1 83 0
	movsd	48(%rcx), %xmm6
	subsd	%xmm7, %xmm4
	.loc 1 84 0
	movsd	8(%rcx), %xmm11
	movapd	%xmm8, %xmm3
	.loc 1 83 0
	subsd	%xmm7, %xmm6
	movsd	64(%rcx), %xmm10
	.loc 1 84 0
	subsd	%xmm11, %xmm5
	.loc 1 83 0
	movsd	16(%rcx), %xmm0
	.loc 1 84 0
	subsd	%xmm11, %xmm3
	movapd	%xmm4, %xmm8
	.loc 1 83 0
	movsd	40(%rcx), %xmm9
.LVL68:
	.loc 1 84 0
	movapd	%xmm6, %xmm12
	mulsd	%xmm5, %xmm8
	mulsd	%xmm3, %xmm12
	subsd	%xmm12, %xmm8
.LVL69:
	.loc 1 86 0
	ucomisd	.LC8(%rip), %xmm8
	jp	.L12
	je	.L10
.L12:
	.loc 1 83 0
	subsd	%xmm0, %xmm10
.LVL70:
	subsd	%xmm0, %xmm9
.LVL71:
	.loc 1 91 0
	subsd	%xmm11, %xmm2
.LVL72:
	subsd	%xmm7, %xmm1
.LVL73:
	mulsd	%xmm10, %xmm4
.LVL74:
	mulsd	%xmm9, %xmm6
.LVL75:
	mulsd	%xmm10, %xmm3
.LVL76:
	mulsd	%xmm9, %xmm5
.LVL77:
	subsd	%xmm6, %xmm4
	subsd	%xmm5, %xmm3
	divsd	%xmm8, %xmm4
	divsd	%xmm8, %xmm3
	mulsd	%xmm2, %xmm4
.LVL78:
	mulsd	%xmm1, %xmm3
.LVL79:
	addsd	%xmm4, %xmm0
.LVL80:
	subsd	%xmm3, %xmm0
.LVL81:
.L10:
	.loc 1 92 0
	movaps	(%rsp), %xmm6
	movaps	16(%rsp), %xmm7
.LVL82:
	movaps	32(%rsp), %xmm8
.LVL83:
	movaps	48(%rsp), %xmm9
	movaps	64(%rsp), %xmm10
	movaps	80(%rsp), %xmm11
.LVL84:
	movaps	96(%rsp), %xmm12
.LVL85:
	addq	$120, %rsp
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely,"x"
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	triSign
	.def	triSign;	.scl	2;	.type	32;	.endef
	.seh_proc	triSign
triSign:
.LFB55:
	.loc 1 94 0
	.cfi_startproc
.LVL86:
	.seh_endprologue
	.loc 1 95 0
	movsd	(%rcx), %xmm0
	movsd	(%r8), %xmm2
	movsd	8(%r8), %xmm3
	movapd	%xmm0, %xmm1
	movsd	8(%rdx), %xmm0
	subsd	%xmm2, %xmm1
	subsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	(%rdx), %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	8(%rcx), %xmm1
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	.loc 1 96 0
	ret
	.cfi_endproc
.LFE55:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely,"x"
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	trisignbool
	.def	trisignbool;	.scl	2;	.type	32;	.endef
	.seh_proc	trisignbool
trisignbool:
.LFB56:
	.loc 1 98 0
	.cfi_startproc
.LVL87:
	.seh_endprologue
.LVL88:
.LBB138:
.LBB139:
	.loc 1 95 0
	movsd	(%r8), %xmm2
.LBE139:
.LBE138:
	.loc 1 99 0
	movsd	(%rcx), %xmm0
.LBB141:
.LBB140:
	.loc 1 95 0
	movsd	8(%r8), %xmm3
.LBE140:
.LBE141:
	.loc 1 99 0
	subsd	%xmm2, %xmm0
	movapd	%xmm0, %xmm1
	movsd	8(%rdx), %xmm0
	subsd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	(%rdx), %xmm1
	subsd	%xmm2, %xmm1
	movapd	%xmm1, %xmm2
	movsd	8(%rcx), %xmm1
	subsd	%xmm3, %xmm1
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	seta	%al
	.loc 1 100 0
	ret
	.cfi_endproc
.LFE56:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely,"x"
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	projectVec
	.def	projectVec;	.scl	2;	.type	32;	.endef
	.seh_proc	projectVec
projectVec:
.LFB57:
	.loc 1 102 0
	.cfi_startproc
.LVL89:
	.seh_endprologue
	.loc 1 104 0
	movsd	.LC12(%rip), %xmm0
	movl	width(%rip), %r8d
	movsd	16(%rdx), %xmm3
	.loc 1 102 0
	movq	%rcx, %rax
	.loc 1 104 0
	pxor	%xmm1, %xmm1
	mulsd	%xmm0, %xmm3
	sarl	%r8d
	.loc 1 105 0
	movsd	8(%rdx), %xmm2
	.loc 1 104 0
	cvtsi2sd	%r8d, %xmm1
	.loc 1 105 0
	movl	height(%rip), %r8d
	.loc 1 104 0
	divsd	%xmm0, %xmm3
.LVL90:
	.loc 1 105 0
	sarl	%r8d
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r8d, %xmm0
	subsd	%xmm0, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
.LVL91:
	.loc 1 106 0
	movsd	(%rdx), %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm0, 8(%rcx)
.LVL92:
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, (%rcx)
	.loc 1 107 0
	ret
	.cfi_endproc
.LFE57:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely,"x"
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	projectTri
	.def	projectTri;	.scl	2;	.type	32;	.endef
	.seh_proc	projectTri
projectTri:
.LFB58:
	.loc 1 109 0
	.cfi_startproc
.LVL93:
	.seh_endprologue
.LVL94:
.LBB148:
.LBB149:
	.loc 1 104 0
	movsd	.LC12(%rip), %xmm4
	movl	width(%rip), %eax
	movsd	16(%rcx), %xmm5
	pxor	%xmm1, %xmm1
	mulsd	%xmm4, %xmm5
	sarl	%eax
	.loc 1 105 0
	pxor	%xmm0, %xmm0
	.loc 1 104 0
	cvtsi2sd	%eax, %xmm1
	.loc 1 105 0
	movl	height(%rip), %eax
.LBE149:
.LBE148:
	.loc 1 110 0
	movsd	(%rcx), %xmm3
.LBB154:
.LBB150:
	.loc 1 104 0
	divsd	%xmm4, %xmm5
.LVL95:
	.loc 1 105 0
	sarl	%eax
	cvtsi2sd	%eax, %xmm0
.LBE150:
.LBE154:
	.loc 1 110 0
	subsd	%xmm1, %xmm3
.LVL96:
.LBB155:
.LBB151:
	.loc 1 105 0
	movsd	8(%rcx), %xmm2
	subsd	%xmm0, %xmm2
.LBE151:
.LBE155:
	.loc 1 110 0
	divsd	%xmm5, %xmm3
.LBB156:
.LBB152:
	.loc 1 105 0
	divsd	%xmm5, %xmm2
.LBE152:
.LBE156:
	.loc 1 110 0
	addsd	%xmm1, %xmm3
.LVL97:
	movsd	%xmm3, (%rdx)
.LBB157:
.LBB158:
	.loc 1 104 0
	movsd	40(%rcx), %xmm5
.LBE158:
.LBE157:
	.loc 1 111 0
	movsd	24(%rcx), %xmm3
.LVL98:
.LBB164:
.LBB159:
	.loc 1 104 0
	mulsd	%xmm4, %xmm5
.LBE159:
.LBE164:
	.loc 1 111 0
	subsd	%xmm1, %xmm3
.LBB165:
.LBB153:
	.loc 1 105 0
	addsd	%xmm0, %xmm2
.LVL99:
.LBE153:
.LBE165:
.LBB166:
.LBB160:
	.loc 1 104 0
	divsd	%xmm4, %xmm5
.LBE160:
.LBE166:
	.loc 1 110 0
	movsd	%xmm2, 8(%rdx)
.LVL100:
.LBB167:
.LBB161:
	.loc 1 105 0
	movsd	32(%rcx), %xmm2
	subsd	%xmm0, %xmm2
.LBE161:
.LBE167:
	.loc 1 111 0
	divsd	%xmm5, %xmm3
.LBB168:
.LBB162:
	.loc 1 105 0
	divsd	%xmm5, %xmm2
.LBE162:
.LBE168:
	.loc 1 111 0
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 16(%rdx)
.LBB169:
.LBB170:
	.loc 1 104 0
	movsd	64(%rcx), %xmm3
	mulsd	%xmm4, %xmm3
.LBE170:
.LBE169:
.LBB173:
.LBB163:
	.loc 1 105 0
	addsd	%xmm0, %xmm2
.LVL101:
.LBE163:
.LBE173:
.LBB174:
.LBB171:
	.loc 1 104 0
	divsd	%xmm4, %xmm3
.LBE171:
.LBE174:
	.loc 1 111 0
	movsd	%xmm2, 24(%rdx)
.LVL102:
.LBB175:
.LBB172:
	.loc 1 105 0
	movsd	56(%rcx), %xmm2
	subsd	%xmm0, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
.LVL103:
.LBE172:
.LBE175:
	.loc 1 112 0
	movsd	48(%rcx), %xmm2
	subsd	%xmm1, %xmm2
	movsd	%xmm0, 40(%rdx)
	divsd	%xmm3, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 32(%rdx)
	ret
	.cfi_endproc
.LFE58:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely,"x"
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	vecInTri
	.def	vecInTri;	.scl	2;	.type	32;	.endef
	.seh_proc	vecInTri
vecInTri:
.LFB59:
	.loc 1 115 0
	.cfi_startproc
.LVL104:
	subq	$88, %rsp
	.seh_stackalloc	88
	.cfi_def_cfa_offset 96
	movaps	%xmm6, (%rsp)
	.seh_savexmm	%xmm6, 0
	movaps	%xmm7, 16(%rsp)
	.seh_savexmm	%xmm7, 16
	movaps	%xmm8, 32(%rsp)
	.seh_savexmm	%xmm8, 32
	movaps	%xmm9, 48(%rsp)
	.seh_savexmm	%xmm9, 48
	movaps	%xmm10, 64(%rsp)
	.seh_savexmm	%xmm10, 64
	.cfi_offset 23, -96
	.cfi_offset 24, -80
	.cfi_offset 25, -64
	.cfi_offset 26, -48
	.cfi_offset 27, -32
	.seh_endprologue
.LVL105:
.LBB188:
.LBB189:
.LBB190:
.LBB191:
	.loc 1 95 0
	movsd	24(%rcx), %xmm9
	movsd	(%rdx), %xmm3
.LBE191:
.LBE190:
.LBE189:
.LBE188:
.LBB204:
.LBB205:
.LBB206:
.LBB207:
	movsd	32(%rcx), %xmm2
.LBE207:
.LBE206:
	.loc 1 99 0
	movapd	%xmm9, %xmm4
.LBB209:
.LBB208:
	.loc 1 95 0
	movsd	40(%rcx), %xmm0
.LBE208:
.LBE209:
	.loc 1 99 0
	movapd	%xmm3, %xmm5
.LBE205:
.LBE204:
.LBB219:
.LBB200:
.LBB196:
.LBB192:
	.loc 1 95 0
	movsd	16(%rcx), %xmm8
.LBE192:
.LBE196:
.LBE200:
.LBE219:
.LBB220:
.LBB210:
	.loc 1 99 0
	subsd	%xmm0, %xmm4
.LBE210:
.LBE220:
.LBB221:
.LBB201:
.LBB197:
.LBB193:
	.loc 1 95 0
	movsd	8(%rdx), %xmm1
.LVL106:
.LBE193:
.LBE197:
.LBE201:
.LBE221:
.LBB222:
.LBB211:
	.loc 1 99 0
	subsd	%xmm2, %xmm5
	movapd	%xmm8, %xmm10
.LBE211:
.LBE222:
.LBB223:
.LBB202:
.LBB198:
.LBB194:
	.loc 1 95 0
	movsd	8(%rcx), %xmm6
.LBE194:
.LBE198:
.LBE202:
.LBE223:
.LBB224:
.LBB212:
	.loc 1 99 0
	subsd	%xmm2, %xmm10
.LBE212:
.LBE224:
.LBB225:
.LBB203:
.LBB199:
.LBB195:
	.loc 1 95 0
	movsd	(%rcx), %xmm7
.LBE195:
.LBE199:
.LBE203:
.LBE225:
.LBB226:
.LBB213:
	.loc 1 99 0
	mulsd	%xmm5, %xmm4
	movapd	%xmm1, %xmm5
.LBE213:
.LBE226:
	.loc 1 120 0
	subsd	%xmm7, %xmm2
.LBB227:
.LBB214:
	.loc 1 99 0
	subsd	%xmm0, %xmm5
.LBE214:
.LBE227:
	.loc 1 120 0
	subsd	%xmm6, %xmm0
.LBB228:
.LBB215:
	.loc 1 99 0
	mulsd	%xmm10, %xmm5
.LBE215:
.LBE228:
	.loc 1 120 0
	movapd	%xmm3, %xmm10
	subsd	%xmm7, %xmm3
	subsd	%xmm8, %xmm10
.LBB229:
.LBB216:
	.loc 1 99 0
	subsd	%xmm5, %xmm4
	pxor	%xmm5, %xmm5
.LBE216:
.LBE229:
	.loc 1 120 0
	mulsd	%xmm3, %xmm0
.LBB230:
.LBB217:
	.loc 1 99 0
	ucomisd	%xmm4, %xmm5
.LBE217:
.LBE230:
	.loc 1 120 0
	movapd	%xmm6, %xmm4
	subsd	%xmm9, %xmm4
.LBB231:
.LBB218:
	.loc 1 99 0
	seta	%dl
.LVL107:
.LBE218:
.LBE231:
	.loc 1 120 0
	mulsd	%xmm10, %xmm4
	movapd	%xmm7, %xmm10
	.loc 1 121 0
	movaps	16(%rsp), %xmm7
	.loc 1 120 0
	subsd	%xmm8, %xmm10
	movapd	%xmm1, %xmm8
	subsd	%xmm6, %xmm1
	.loc 1 121 0
	movaps	(%rsp), %xmm6
	.loc 1 120 0
	subsd	%xmm9, %xmm8
	.loc 1 121 0
	movaps	48(%rsp), %xmm9
	.loc 1 120 0
	mulsd	%xmm2, %xmm1
	mulsd	%xmm10, %xmm8
	.loc 1 121 0
	movaps	64(%rsp), %xmm10
	.loc 1 120 0
	subsd	%xmm1, %xmm0
	subsd	%xmm8, %xmm4
	.loc 1 121 0
	movaps	32(%rsp), %xmm8
	.loc 1 120 0
	ucomisd	%xmm4, %xmm5
	seta	%al
	cmpb	%dl, %al
	sete	%cl
.LVL108:
	ucomisd	%xmm0, %xmm5
	seta	%al
	cmpb	%dl, %al
	sete	%al
	andl	%ecx, %eax
	.loc 1 121 0
	addq	$88, %rsp
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE59:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE15:
	.text
.LHOTE15:
	.section .rdata,"dr"
.LC16:
	.ascii "\33[2J\0"
	.section	.text.unlikely,"x"
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	drawScreen
	.def	drawScreen;	.scl	2;	.type	32;	.endef
	.seh_proc	drawScreen
drawScreen:
.LFB60:
	.loc 1 123 0
	.cfi_startproc
.LVL109:
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 32
	.cfi_offset 5, -32
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 40
	.cfi_offset 4, -40
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$32, %rsp
	.seh_stackalloc	32
	.cfi_def_cfa_offset 80
	.seh_endprologue
.LBB233:
	.loc 1 126 0
	xorl	%ebx, %ebx
	leaq	width(%rip), %rsi
	leaq	height(%rip), %rbp
.LBE233:
	.loc 1 123 0
	movq	%rcx, %rdi
	.loc 1 124 0
	leaq	.LC16(%rip), %rcx
.LVL110:
	call	printf
.LVL111:
.LBB234:
	.loc 1 126 0
	movl	height(%rip), %eax
	testl	%eax, %eax
	jle	.L19
.LVL112:
	.p2align 4,,10
.L26:
	.loc 1 127 0 discriminator 1
	movl	(%rsi), %eax
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.L25
.LVL113:
	.p2align 4,,10
.L27:
	.loc 1 128 0 discriminator 3
	imull	%ebx, %eax
	addl	%r12d, %eax
	.loc 1 127 0 discriminator 3
	addl	$1, %r12d
.LVL114:
	.loc 1 128 0 discriminator 3
	cltq
	salq	$4, %rax
	movsbl	(%rdi,%rax), %ecx
	call	putchar
.LVL115:
	.loc 1 127 0 discriminator 3
	movl	(%rsi), %eax
	cmpl	%r12d, %eax
	jg	.L27
.LVL116:
.L25:
	.loc 1 130 0
	movl	$10, %ecx
	.loc 1 126 0
	addl	$1, %ebx
.LVL117:
	.loc 1 130 0
	call	putchar
.LVL118:
	.loc 1 126 0
	cmpl	%ebx, 0(%rbp)
	jg	.L26
.LVL119:
.L19:
.LBE234:
	.loc 1 132 0
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 40
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 32
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 24
.LVL120:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely,"x"
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	limit
	.def	limit;	.scl	2;	.type	32;	.endef
	.seh_proc	limit
limit:
.LFB61:
	.loc 1 134 0
	.cfi_startproc
.LVL121:
	.seh_endprologue
	.loc 1 135 0
	cmpl	%edx, %ecx
	movl	%edx, %eax
	jl	.L31
	cmpl	%r8d, %ecx
	movl	%r8d, %eax
	cmovle	%ecx, %eax
.L31:
	.loc 1 138 0
	rep ret
	.cfi_endproc
.LFE61:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE18:
	.text
.LHOTE18:
	.section .rdata,"dr"
.LC19:
	.ascii "1234567890abcdefg\0"
	.section	.text.unlikely,"x"
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	getPix
	.def	getPix;	.scl	2;	.type	32;	.endef
	.seh_proc	getPix
getPix:
.LFB62:
	.loc 1 140 0
	.cfi_startproc
.LVL122:
	subq	$40, %rsp
	.seh_stackalloc	40
	.cfi_def_cfa_offset 48
	.seh_endprologue
	.loc 1 141 0
	call	round
.LVL123:
	cvttsd2si	%xmm0, %eax
.LVL124:
	movl	$16, %edx
	cmpl	$16, %eax
	cmovg	%edx, %eax
.LVL125:
	movl	$0, %edx
	testl	%eax, %eax
	cmovs	%edx, %eax
	leaq	.LC19(%rip), %rdx
	cltq
	movzbl	(%rdx,%rax), %eax
	.loc 1 142 0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely,"x"
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	wipeBuffer
	.def	wipeBuffer;	.scl	2;	.type	32;	.endef
	.seh_proc	wipeBuffer
wipeBuffer:
.LFB63:
	.loc 1 144 0
	.cfi_startproc
.LVL126:
	.seh_endprologue
.LBB235:
	.loc 1 145 0
	movl	height(%rip), %eax
	imull	width(%rip), %eax
	testl	%eax, %eax
	jle	.L34
	subl	$1, %eax
	movsd	.LC21(%rip), %xmm0
	addq	$1, %rax
	salq	$4, %rax
	addq	%rcx, %rax
.LVL127:
	.p2align 4,,10
.L36:
	.loc 1 146 0 discriminator 2
	movb	$32, (%rcx)
	.loc 1 147 0 discriminator 2
	movsd	%xmm0, 8(%rcx)
.LVL128:
	addq	$16, %rcx
	.loc 1 145 0 discriminator 2
	cmpq	%rax, %rcx
	jne	.L36
.L34:
	rep ret
.LBE235:
	.cfi_endproc
.LFE63:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely,"x"
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.globl	rasterTri
	.def	rasterTri;	.scl	2;	.type	32;	.endef
	.seh_proc	rasterTri
rasterTri:
.LFB64:
	.loc 1 151 0
	.cfi_startproc
.LVL129:
	pushq	%r15
	.seh_pushreg	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.seh_pushreg	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.seh_pushreg	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 64
	.cfi_offset 4, -64
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -72
	subq	$296, %rsp
	.seh_stackalloc	296
	.cfi_def_cfa_offset 368
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movaps	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	movaps	%xmm10, 192(%rsp)
	.seh_savexmm	%xmm10, 192
	movaps	%xmm11, 208(%rsp)
	.seh_savexmm	%xmm11, 208
	movaps	%xmm12, 224(%rsp)
	.seh_savexmm	%xmm12, 224
	movaps	%xmm13, 240(%rsp)
	.seh_savexmm	%xmm13, 240
	movaps	%xmm14, 256(%rsp)
	.seh_savexmm	%xmm14, 256
	movaps	%xmm15, 272(%rsp)
	.seh_savexmm	%xmm15, 272
	.cfi_offset 23, -240
	.cfi_offset 24, -224
	.cfi_offset 25, -208
	.cfi_offset 26, -192
	.cfi_offset 27, -176
	.cfi_offset 28, -160
	.cfi_offset 29, -144
	.cfi_offset 30, -128
	.cfi_offset 31, -112
	.cfi_offset 32, -96
	.seh_endprologue
.LVL130:
.LBB267:
.LBB268:
.LBB269:
	.loc 1 104 0
	pxor	%xmm1, %xmm1
.LBE269:
.LBE268:
.LBE267:
.LBB288:
	.loc 1 156 0
	xorl	%ebp, %ebp
	xorl	%edi, %edi
.LBE288:
	.loc 1 151 0
	movq	%rcx, %rbx
.LBB310:
.LBB275:
.LBB270:
	.loc 1 104 0
	movsd	.LC12(%rip), %xmm2
	movl	width(%rip), %r15d
	movsd	16(%rcx), %xmm4
.LBE270:
.LBE275:
.LBE310:
	.loc 1 151 0
	movq	%rdx, 376(%rsp)
.LBB311:
.LBB276:
.LBB271:
	.loc 1 104 0
	movsd	(%rcx), %xmm0
	mulsd	%xmm2, %xmm4
	movl	%r15d, %eax
	sarl	%eax
	.loc 1 105 0
	movsd	8(%rcx), %xmm3
	.loc 1 104 0
	cvtsi2sd	%eax, %xmm1
	.loc 1 105 0
	movl	height(%rip), %eax
	.loc 1 104 0
	divsd	%xmm2, %xmm4
	.loc 1 105 0
	movl	%eax, %esi
	movl	%eax, 100(%rsp)
	sarl	%eax
.LBE271:
.LBE276:
.LBE311:
.LBB312:
	.loc 1 156 0
	testl	%esi, %esi
.LBE312:
.LBB313:
.LBB277:
.LBB272:
	.loc 1 104 0
	subsd	%xmm1, %xmm0
	divsd	%xmm4, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)
.LVL131:
	.loc 1 105 0
	pxor	%xmm0, %xmm0
.LVL132:
	cvtsi2sd	%eax, %xmm0
	subsd	%xmm0, %xmm3
	divsd	%xmm4, %xmm3
.LBE272:
.LBE277:
.LBB278:
.LBB279:
	.loc 1 104 0
	movsd	40(%rcx), %xmm4
	mulsd	%xmm2, %xmm4
.LBE279:
.LBE278:
.LBB282:
.LBB273:
	.loc 1 105 0
	addsd	%xmm0, %xmm3
.LBE273:
.LBE282:
.LBB283:
.LBB280:
	.loc 1 104 0
	divsd	%xmm2, %xmm4
.LBE280:
.LBE283:
.LBB284:
.LBB274:
	.loc 1 105 0
	movsd	%xmm3, 104(%rsp)
.LVL133:
.LBE274:
.LBE284:
.LBB285:
.LBB281:
	.loc 1 104 0
	movsd	24(%rcx), %xmm3
	subsd	%xmm1, %xmm3
	divsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	movapd	%xmm3, %xmm13
.LVL134:
	.loc 1 105 0
	movsd	32(%rcx), %xmm3
.LVL135:
	subsd	%xmm0, %xmm3
	divsd	%xmm4, %xmm3
	addsd	%xmm0, %xmm3
	movsd	%xmm3, 112(%rsp)
.LVL136:
.LBE281:
.LBE285:
.LBB286:
.LBB287:
	.loc 1 104 0
	movsd	64(%rcx), %xmm3
	mulsd	%xmm2, %xmm3
	divsd	%xmm2, %xmm3
	movsd	48(%rcx), %xmm2
	subsd	%xmm1, %xmm2
	divsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	.loc 1 105 0
	movsd	56(%rcx), %xmm1
	subsd	%xmm0, %xmm1
	.loc 1 104 0
	movapd	%xmm2, %xmm14
.LVL137:
	.loc 1 105 0
	divsd	%xmm3, %xmm1
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 120(%rsp)
.LVL138:
.LBE287:
.LBE286:
.LBE313:
.LBB314:
	.loc 1 156 0
	jle	.L39
	pxor	%xmm15, %xmm15
.LBB289:
.LBB290:
.LBB291:
.LBB292:
	.loc 1 141 0
	movl	$16, %r13d
	xorl	%r12d, %r12d
.LVL139:
	.p2align 4,,10
.L56:
.LBE292:
.LBE291:
.LBE290:
.LBE289:
	.loc 1 157 0
	pxor	%xmm6, %xmm6
.LBB308:
	.loc 1 158 0
	testl	%r15d, %r15d
.LBE308:
	.loc 1 157 0
	cvtsi2sd	%edi, %xmm6
	movsd	%xmm6, 88(%rsp)
.LVL140:
.LBB309:
	.loc 1 158 0
	jle	.L49
	pxor	%xmm6, %xmm6
	movslq	%ebp, %rax
	xorl	%esi, %esi
	movsd	56(%rsp), %xmm7
	salq	$4, %rax
	movsd	112(%rsp), %xmm2
	addq	376(%rsp), %rax
	cvtsi2sd	%edi, %xmm6
	movapd	%xmm7, %xmm0
	movsd	120(%rsp), %xmm3
	movsd	104(%rsp), %xmm4
	subsd	%xmm13, %xmm0
	movq	%rax, %r14
	movapd	%xmm4, %xmm11
	subsd	%xmm2, %xmm11
	movapd	%xmm6, %xmm1
	subsd	%xmm2, %xmm1
	subsd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm0
	movapd	%xmm6, %xmm1
	movsd	%xmm2, 48(%rsp)
	subsd	%xmm3, %xmm1
	subsd	%xmm4, %xmm3
	movsd	%xmm0, 40(%rsp)
	movapd	%xmm13, %xmm0
	subsd	%xmm14, %xmm0
	movsd	%xmm3, 64(%rsp)
	mulsd	%xmm1, %xmm0
	movapd	%xmm6, %xmm1
	subsd	%xmm4, %xmm1
	movapd	%xmm0, %xmm12
	movapd	%xmm14, %xmm0
	subsd	%xmm7, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 72(%rsp)
.LVL141:
	.p2align 4,,10
.L48:
	.loc 1 159 0
	pxor	%xmm1, %xmm1
	cvtsi2sd	%esi, %xmm1
.LVL142:
.LBB299:
.LBB300:
.LBB301:
.LBB302:
	.loc 1 99 0
	movapd	%xmm1, %xmm0
	subsd	%xmm14, %xmm0
	mulsd	48(%rsp), %xmm0
	subsd	%xmm12, %xmm0
	ucomisd	%xmm0, %xmm15
.LBE302:
.LBE301:
.LBE300:
.LBE299:
	.loc 1 160 0
	movapd	%xmm1, %xmm0
	subsd	%xmm13, %xmm0
.LBB306:
.LBB305:
.LBB304:
.LBB303:
	.loc 1 99 0
	seta	%dl
.LVL143:
.LBE303:
.LBE304:
.LBE305:
.LBE306:
	.loc 1 160 0
	mulsd	%xmm11, %xmm0
	subsd	40(%rsp), %xmm0
	ucomisd	%xmm0, %xmm15
	seta	%cl
	cmpb	%dl, %cl
	jne	.L44
	movapd	%xmm1, %xmm0
	subsd	56(%rsp), %xmm0
	mulsd	64(%rsp), %xmm0
	subsd	72(%rsp), %xmm0
	ucomisd	%xmm0, %xmm15
	seta	%cl
	cmpb	%dl, %cl
	jne	.L44
.LVL144:
.LBB307:
.LBB295:
.LBB296:
	.loc 1 83 0
	movsd	(%rbx), %xmm7
	movsd	40(%rbx), %xmm2
	movsd	24(%rbx), %xmm3
	movsd	48(%rbx), %xmm5
	.loc 1 84 0
	movsd	8(%rbx), %xmm8
	.loc 1 83 0
	subsd	%xmm7, %xmm3
	subsd	%xmm7, %xmm5
	movsd	%xmm2, 80(%rsp)
	.loc 1 84 0
	movsd	56(%rbx), %xmm4
	movsd	32(%rbx), %xmm2
	subsd	%xmm8, %xmm4
	movapd	%xmm3, %xmm6
	subsd	%xmm8, %xmm2
	movapd	%xmm5, %xmm9
	.loc 1 83 0
	movsd	64(%rbx), %xmm10
	movsd	16(%rbx), %xmm0
.LVL145:
	.loc 1 84 0
	mulsd	%xmm4, %xmm6
	mulsd	%xmm2, %xmm9
	subsd	%xmm9, %xmm6
.LVL146:
	.loc 1 86 0
	ucomisd	%xmm15, %xmm6
	jp	.L50
	je	.L45
.L50:
	.loc 1 83 0
	movsd	80(%rsp), %xmm9
	subsd	%xmm0, %xmm10
.LVL147:
	.loc 1 91 0
	subsd	%xmm7, %xmm1
.LVL148:
	.loc 1 83 0
	subsd	%xmm0, %xmm9
.LVL149:
	.loc 1 91 0
	mulsd	%xmm10, %xmm3
.LVL150:
	mulsd	%xmm2, %xmm10
.LVL151:
	mulsd	%xmm9, %xmm5
.LVL152:
	mulsd	%xmm4, %xmm9
.LVL153:
	subsd	%xmm5, %xmm3
	movsd	88(%rsp), %xmm5
	subsd	%xmm9, %xmm10
	subsd	%xmm8, %xmm5
	divsd	%xmm6, %xmm3
	divsd	%xmm6, %xmm10
	mulsd	%xmm5, %xmm3
.LVL154:
	mulsd	%xmm10, %xmm1
	addsd	%xmm3, %xmm0
.LVL155:
	subsd	%xmm1, %xmm0
.LVL156:
.L45:
.LBE296:
.LBE295:
	.loc 1 162 0
	movsd	8(%r14), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.L44
	.loc 1 163 0
	movsd	%xmm0, 8(%r14)
.LVL157:
.LBB297:
.LBB293:
	.loc 1 141 0
	call	round
.LVL158:
	cvttsd2si	%xmm0, %edx
.LVL159:
.LBE293:
.LBE297:
	.loc 1 164 0
	leaq	.LC19(%rip), %rcx
.LBB298:
.LBB294:
	.loc 1 141 0
	cmpl	$16, %edx
	cmovg	%r13d, %edx
.LVL160:
	testl	%edx, %edx
	cmovs	%r12d, %edx
	movslq	%edx, %rdx
.LBE294:
.LBE298:
	.loc 1 164 0
	movzbl	(%rcx,%rdx), %edx
	movb	%dl, (%r14)
.LVL161:
.L44:
.LBE307:
	.loc 1 158 0 discriminator 2
	addl	$1, %esi
.LVL162:
	addq	$16, %r14
	cmpl	%r15d, %esi
	jne	.L48
.LVL163:
.L49:
.LBE309:
	.loc 1 156 0
	addl	$1, %edi
.LVL164:
	addl	%r15d, %ebp
	cmpl	100(%rsp), %edi
	jne	.L56
.LVL165:
.L39:
.LBE314:
	.loc 1 169 0
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	movaps	192(%rsp), %xmm10
	movaps	208(%rsp), %xmm11
	movaps	224(%rsp), %xmm12
	movaps	240(%rsp), %xmm13
	movaps	256(%rsp), %xmm14
	movaps	272(%rsp), %xmm15
	addq	$296, %rsp
	.cfi_restore 32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 72
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 64
.LVL166:
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 56
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE23:
	.text
.LHOTE23:
	.section .rdata,"dr"
	.align 8
.LC24:
	.ascii "reported width: %d, reported height: %d\0"
	.section	.text.unlikely,"x"
.LCOLDB29:
	.text
.LHOTB29:
	.p2align 4,,15
	.globl	render
	.def	render;	.scl	2;	.type	32;	.endef
	.seh_proc	render
render:
.LFB65:
	.loc 1 172 0
	.cfi_startproc
	pushq	%r15
	.seh_pushreg	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.seh_pushreg	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.seh_pushreg	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.seh_pushreg	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.seh_pushreg	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rdi
	.seh_pushreg	%rdi
	.cfi_def_cfa_offset 56
	.cfi_offset 5, -56
	pushq	%rsi
	.seh_pushreg	%rsi
	.cfi_def_cfa_offset 64
	.cfi_offset 4, -64
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 72
	.cfi_offset 3, -72
	subq	$296, %rsp
	.seh_stackalloc	296
	.cfi_def_cfa_offset 368
	movaps	%xmm6, 128(%rsp)
	.seh_savexmm	%xmm6, 128
	movaps	%xmm7, 144(%rsp)
	.seh_savexmm	%xmm7, 144
	movaps	%xmm8, 160(%rsp)
	.seh_savexmm	%xmm8, 160
	movaps	%xmm9, 176(%rsp)
	.seh_savexmm	%xmm9, 176
	movaps	%xmm10, 192(%rsp)
	.seh_savexmm	%xmm10, 192
	movaps	%xmm11, 208(%rsp)
	.seh_savexmm	%xmm11, 208
	movaps	%xmm12, 224(%rsp)
	.seh_savexmm	%xmm12, 224
	movaps	%xmm13, 240(%rsp)
	.seh_savexmm	%xmm13, 240
	movaps	%xmm14, 256(%rsp)
	.seh_savexmm	%xmm14, 256
	movaps	%xmm15, 272(%rsp)
	.seh_savexmm	%xmm15, 272
	.cfi_offset 23, -240
	.cfi_offset 24, -224
	.cfi_offset 25, -208
	.cfi_offset 26, -192
	.cfi_offset 27, -176
	.cfi_offset 28, -160
	.cfi_offset 29, -144
	.cfi_offset 30, -128
	.cfi_offset 31, -112
	.cfi_offset 32, -96
	.seh_endprologue
	.loc 1 173 0
	leaq	.LC24(%rip), %rcx
	movl	height(%rip), %r8d
	movl	width(%rip), %edx
	call	printf
.LVL167:
	.loc 1 174 0
	call	*__imp___iob_func(%rip)
.LVL168:
	leaq	48(%rax), %rcx
	xorl	%edx, %edx
	call	setbuf
.LVL169:
	.loc 1 176 0
	movl	height(%rip), %r14d
	movl	width(%rip), %ebx
	movl	$16, %edx
	movl	%r14d, %ecx
	imull	%ebx, %ecx
	movslq	%ecx, %rcx
	call	calloc
.LVL170:
	.loc 1 177 0
	testq	%rax, %rax
	.loc 1 176 0
	movq	%rax, %rdi
.LVL171:
	.loc 1 177 0
	je	.L73
.LBB348:
.LBB349:
.LBB350:
.LBB351:
.LBB352:
.LBB353:
	.loc 1 51 0 discriminator 3
	pxor	%xmm0, %xmm0
	leaq	height(%rip), %rbp
	movq	%rdi, %r15
	pxor	%xmm8, %xmm8
.LBE353:
.LBE352:
.LBE351:
.LBB384:
.LBB385:
.LBB386:
	.loc 1 57 0 discriminator 3
	movl	$999999, %r12d
	movl	$-1, %r13d
.LBE386:
.LBE385:
.LBE384:
.LBB409:
.LBB355:
.LBB354:
	.loc 1 51 0 discriminator 3
	call	cos
.LVL172:
	movsd	%xmm0, 32(%rsp)
	pxor	%xmm0, %xmm0
	call	sin
.LVL173:
	movsd	32(%rsp), %xmm1
	movapd	%xmm0, %xmm13
	movsd	.LC25(%rip), %xmm0
	movapd	%xmm1, %xmm9
	movapd	%xmm13, %xmm2
	.loc 1 52 0 discriminator 3
	movapd	%xmm13, %xmm7
	.loc 1 51 0 discriminator 3
	mulsd	%xmm8, %xmm9
	mulsd	%xmm0, %xmm2
	.loc 1 52 0 discriminator 3
	mulsd	%xmm1, %xmm0
	.loc 1 51 0 discriminator 3
	subsd	%xmm2, %xmm9
	.loc 1 52 0 discriminator 3
	mulsd	%xmm9, %xmm7
	addsd	%xmm0, %xmm7
.LBE354:
.LBE355:
.LBB356:
.LBB357:
	.loc 1 56 0 discriminator 3
	pxor	%xmm0, %xmm0
	call	cos
.LVL174:
	movapd	%xmm0, %xmm10
	pxor	%xmm0, %xmm0
	mulsd	%xmm10, %xmm8
	call	sin
.LVL175:
.LBE357:
.LBE356:
.LBE409:
.LBB410:
.LBB411:
.LBB412:
	.loc 1 51 0 discriminator 3
	movsd	32(%rsp), %xmm1
	leaq	48(%rsp), %rax
.LBE412:
.LBE411:
.LBE410:
.LBB439:
.LBB364:
.LBB358:
	.loc 1 56 0 discriminator 3
	movapd	%xmm8, %xmm15
.LBE358:
.LBE364:
.LBE439:
.LBB440:
.LBB418:
.LBB413:
	.loc 1 51 0 discriminator 3
	movsd	.LC12(%rip), %xmm3
	movapd	%xmm1, %xmm8
.LBE413:
.LBE418:
.LBE440:
.LBB441:
.LBB365:
.LBB359:
	.loc 1 56 0 discriminator 3
	movapd	%xmm0, %xmm2
	movq	%rax, 40(%rsp)
.LBE359:
.LBE365:
.LBE441:
.LBB442:
.LBB419:
.LBB414:
	.loc 1 51 0 discriminator 3
	mulsd	%xmm3, %xmm8
.LBE414:
.LBE419:
.LBB420:
.LBB421:
	.loc 1 56 0 discriminator 3
	movapd	%xmm0, %xmm4
.LBE421:
.LBE420:
.LBE442:
.LBB443:
.LBB366:
.LBB360:
	mulsd	%xmm7, %xmm2
	.loc 1 57 0 discriminator 3
	mulsd	%xmm10, %xmm7
.LBE360:
.LBE366:
.LBE443:
.LBB444:
.LBB426:
.LBB422:
	.loc 1 56 0 discriminator 3
	mulsd	%xmm10, %xmm3
.LBE422:
.LBE426:
.LBB427:
.LBB415:
	.loc 1 51 0 discriminator 3
	subsd	%xmm13, %xmm8
.LBE415:
.LBE427:
.LBE444:
.LBB445:
.LBB367:
.LBB361:
	.loc 1 56 0 discriminator 3
	addsd	%xmm2, %xmm15
	.loc 1 57 0 discriminator 3
	subsd	%xmm2, %xmm7
.LBE361:
.LBE367:
.LBE445:
.LBB446:
.LBB428:
.LBB416:
	.loc 1 52 0 discriminator 3
	movapd	%xmm13, %xmm2
	mulsd	%xmm8, %xmm2
.LBE416:
.LBE428:
.LBE446:
.LBB447:
.LBB368:
.LBB362:
	.loc 1 57 0 discriminator 3
	movapd	%xmm7, %xmm11
.LBE362:
.LBE368:
.LBE447:
.LBB448:
.LBB390:
.LBB391:
	.loc 1 51 0 discriminator 3
	movapd	%xmm1, %xmm7
.LBE391:
.LBE390:
.LBE448:
.LBB449:
.LBB429:
.LBB417:
	.loc 1 52 0 discriminator 3
	addsd	%xmm1, %xmm2
.LBE417:
.LBE429:
.LBB430:
.LBB423:
	.loc 1 56 0 discriminator 3
	mulsd	%xmm2, %xmm4
	.loc 1 57 0 discriminator 3
	mulsd	%xmm10, %xmm2
	.loc 1 56 0 discriminator 3
	addsd	%xmm4, %xmm3
	.loc 1 57 0 discriminator 3
	subsd	%xmm4, %xmm2
.LBE423:
.LBE430:
.LBE449:
.LBB450:
.LBB395:
.LBB392:
	.loc 1 51 0 discriminator 3
	movapd	%xmm13, %xmm4
.LBE392:
.LBE395:
.LBE450:
.LBB451:
.LBB431:
.LBB424:
	.loc 1 56 0 discriminator 3
	movapd	%xmm3, %xmm14
	.loc 1 57 0 discriminator 3
	movapd	%xmm2, %xmm12
.LBE424:
.LBE431:
.LBE451:
.LBB452:
.LBB396:
.LBB393:
	.loc 1 51 0 discriminator 3
	movsd	.LC26(%rip), %xmm3
	movsd	.LC27(%rip), %xmm2
	mulsd	%xmm3, %xmm7
	mulsd	%xmm2, %xmm4
	.loc 1 52 0 discriminator 3
	mulsd	%xmm1, %xmm2
.LBE393:
.LBE396:
.LBB397:
.LBB387:
	.loc 1 56 0 discriminator 3
	mulsd	%xmm10, %xmm3
.LBE387:
.LBE397:
.LBB398:
.LBB394:
	.loc 1 51 0 discriminator 3
	subsd	%xmm4, %xmm7
	.loc 1 52 0 discriminator 3
	mulsd	%xmm7, %xmm13
	movapd	%xmm13, %xmm1
	addsd	%xmm2, %xmm1
.LBE394:
.LBE398:
.LBB399:
.LBB388:
	.loc 1 56 0 discriminator 3
	mulsd	%xmm1, %xmm0
	.loc 1 57 0 discriminator 3
	mulsd	%xmm10, %xmm1
	.loc 1 56 0 discriminator 3
	addsd	%xmm0, %xmm3
	.loc 1 57 0 discriminator 3
	subsd	%xmm0, %xmm1
	.loc 1 56 0 discriminator 3
	movsd	%xmm3, 32(%rsp)
	.loc 1 57 0 discriminator 3
	movapd	%xmm1, %xmm10
.L72:
.LVL176:
.LBE388:
.LBE399:
.LBE452:
.LBB453:
.LBB369:
.LBB370:
	.loc 1 61 0 discriminator 3
	movapd	%xmm6, %xmm0
.LBE370:
.LBE369:
.LBB377:
.LBB363:
	.loc 1 57 0 discriminator 3
	movsd	%xmm11, 64(%rsp)
.LVL177:
.LBE363:
.LBE377:
.LBE453:
.LBE350:
.LBB469:
.LBB470:
	.loc 1 145 0 discriminator 3
	imull	%r14d, %ebx
.LBE470:
.LBE469:
.LBB473:
.LBB454:
.LBB378:
.LBB371:
	.loc 1 61 0 discriminator 3
	call	cos
.LVL178:
	movapd	%xmm0, %xmm13
	movapd	%xmm6, %xmm0
	call	sin
.LVL179:
	movapd	%xmm13, %xmm2
.LBE371:
.LBE378:
.LBE454:
.LBE473:
.LBB474:
.LBB471:
	.loc 1 145 0 discriminator 3
	testl	%ebx, %ebx
.LBE471:
.LBE474:
.LBB475:
.LBB455:
.LBB379:
.LBB372:
	.loc 1 61 0 discriminator 3
	movapd	%xmm0, %xmm3
.LBE372:
.LBE379:
.LBE455:
.LBB456:
.LBB432:
.LBB425:
	.loc 1 57 0 discriminator 3
	movsd	%xmm12, 88(%rsp)
.LBE425:
.LBE432:
.LBE456:
.LBB457:
.LBB380:
.LBB373:
	.loc 1 61 0 discriminator 3
	mulsd	%xmm15, %xmm2
.LBE373:
.LBE380:
.LBE457:
.LBB458:
.LBB400:
.LBB401:
	.loc 1 62 0 discriminator 3
	movapd	%xmm13, %xmm1
.LBE401:
.LBE400:
.LBE458:
.LBB459:
.LBB381:
.LBB374:
	.loc 1 61 0 discriminator 3
	mulsd	%xmm9, %xmm3
.LBE374:
.LBE381:
.LBE459:
.LBB460:
.LBB405:
.LBB389:
	.loc 1 57 0 discriminator 3
	movsd	%xmm10, 112(%rsp)
.LBE389:
.LBE405:
.LBE460:
.LBE475:
	.loc 1 190 0 discriminator 3
	addsd	.LC28(%rip), %xmm6
.LVL180:
.LBB476:
.LBB461:
.LBB406:
.LBB402:
	.loc 1 62 0 discriminator 3
	mulsd	%xmm7, %xmm1
.LBE402:
.LBE406:
.LBE461:
.LBB462:
.LBB382:
.LBB375:
	.loc 1 61 0 discriminator 3
	subsd	%xmm3, %xmm2
	.loc 1 62 0 discriminator 3
	movapd	%xmm13, %xmm3
	mulsd	%xmm9, %xmm3
	.loc 1 61 0 discriminator 3
	movsd	%xmm2, 48(%rsp)
	.loc 1 62 0 discriminator 3
	mulsd	%xmm0, %xmm2
	addsd	%xmm3, %xmm2
.LBE375:
.LBE382:
.LBE462:
.LBB463:
.LBB433:
.LBB434:
	.loc 1 61 0 discriminator 3
	movapd	%xmm0, %xmm3
	mulsd	%xmm8, %xmm3
.LBE434:
.LBE433:
.LBE463:
.LBB464:
.LBB383:
.LBB376:
	.loc 1 62 0 discriminator 3
	movsd	%xmm2, 56(%rsp)
.LVL181:
.LBE376:
.LBE383:
.LBE464:
.LBB465:
.LBB437:
.LBB435:
	.loc 1 61 0 discriminator 3
	movapd	%xmm13, %xmm2
	mulsd	%xmm14, %xmm2
	subsd	%xmm3, %xmm2
	.loc 1 62 0 discriminator 3
	movapd	%xmm13, %xmm3
	mulsd	%xmm8, %xmm3
	.loc 1 61 0 discriminator 3
	movsd	%xmm2, 72(%rsp)
	.loc 1 62 0 discriminator 3
	mulsd	%xmm0, %xmm2
	addsd	%xmm3, %xmm2
.LBE435:
.LBE437:
.LBE465:
.LBB466:
.LBB407:
.LBB403:
	.loc 1 61 0 discriminator 3
	movsd	32(%rsp), %xmm3
	mulsd	%xmm13, %xmm3
.LBE403:
.LBE407:
.LBE466:
.LBB467:
.LBB438:
.LBB436:
	.loc 1 62 0 discriminator 3
	movsd	%xmm2, 80(%rsp)
.LVL182:
.LBE436:
.LBE438:
.LBE467:
.LBB468:
.LBB408:
.LBB404:
	.loc 1 61 0 discriminator 3
	movapd	%xmm0, %xmm2
	mulsd	%xmm7, %xmm2
	subsd	%xmm2, %xmm3
	movapd	%xmm3, %xmm2
	movsd	%xmm3, 96(%rsp)
	.loc 1 62 0 discriminator 3
	mulsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 104(%rsp)
.LBE404:
.LBE408:
.LBE468:
.LBE476:
.LBB477:
.LBB472:
	.loc 1 145 0 discriminator 3
	jle	.L67
	leal	0(%r13,%rbx), %edx
	movsd	.LC21(%rip), %xmm5
	.loc 1 145 0 is_stmt 0
	movq	%r15, %rax
	addq	$1, %rdx
	salq	$4, %rdx
	addq	%rdi, %rdx
.LVL183:
	.p2align 4,,10
.L66:
	.loc 1 146 0 is_stmt 1
	movb	$32, (%rax)
	.loc 1 147 0
	movsd	%xmm5, 8(%rax)
	addq	$16, %rax
	.loc 1 145 0
	cmpq	%rax, %rdx
	jne	.L66
.L67:
.LBE472:
.LBE477:
	.loc 1 192 0
	movq	40(%rsp), %rcx
	movq	%rdi, %rdx
.LBB478:
.LBB479:
.LBB480:
	.loc 1 126 0
	xorl	%ebx, %ebx
	leaq	width(%rip), %rsi
.LBE480:
.LBE479:
.LBE478:
	.loc 1 192 0
	call	rasterTri
.LVL184:
.LBB483:
.LBB482:
	.loc 1 124 0
	leaq	.LC16(%rip), %rcx
	call	printf
.LVL185:
.LBB481:
	.loc 1 126 0
	movl	0(%rbp), %r14d
	testl	%r14d, %r14d
	jle	.L65
.LVL186:
	.p2align 4,,10
.L75:
	.loc 1 127 0
	movl	(%rsi), %eax
	xorl	%r14d, %r14d
	testl	%eax, %eax
	jle	.L71
.LVL187:
	.p2align 4,,10
.L76:
	.loc 1 128 0
	imull	%ebx, %eax
	addl	%r14d, %eax
	.loc 1 127 0
	addl	$1, %r14d
.LVL188:
	.loc 1 128 0
	cltq
	salq	$4, %rax
	movsbl	(%rdi,%rax), %ecx
	call	putchar
.LVL189:
	.loc 1 127 0
	movl	(%rsi), %eax
	cmpl	%r14d, %eax
	jg	.L76
.LVL190:
.L71:
	.loc 1 130 0
	movl	$10, %ecx
	.loc 1 126 0
	addl	$1, %ebx
.LVL191:
	.loc 1 130 0
	call	putchar
.LVL192:
	.loc 1 126 0
	movl	0(%rbp), %r14d
	cmpl	%r14d, %ebx
	jl	.L75
.LVL193:
.L65:
.LBE481:
.LBE482:
.LBE483:
.LBE349:
	.loc 1 187 0 discriminator 3
	subq	$1, %r12
	je	.L74
	movl	width(%rip), %ebx
	jmp	.L72
.L74:
.LBE348:
	.loc 1 196 0
	xorl	%eax, %eax
.LVL194:
.L62:
	.loc 1 197 0
	movaps	128(%rsp), %xmm6
	movaps	144(%rsp), %xmm7
	movaps	160(%rsp), %xmm8
	movaps	176(%rsp), %xmm9
	movaps	192(%rsp), %xmm10
	movaps	208(%rsp), %xmm11
	movaps	224(%rsp), %xmm12
	movaps	240(%rsp), %xmm13
	movaps	256(%rsp), %xmm14
	movaps	272(%rsp), %xmm15
	addq	$296, %rsp
	.cfi_remember_state
	.cfi_restore 32
	.cfi_restore 31
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 28
	.cfi_restore 27
	.cfi_restore 26
	.cfi_restore 25
	.cfi_restore 24
	.cfi_restore 23
	.cfi_def_cfa_offset 72
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 64
	popq	%rsi
	.cfi_restore 4
	.cfi_def_cfa_offset 56
	popq	%rdi
	.cfi_restore 5
	.cfi_def_cfa_offset 48
.LVL195:
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
.LVL196:
.L73:
	.cfi_restore_state
	.loc 1 177 0
	movl	$1, %eax
.LVL197:
	jmp	.L62
	.cfi_endproc
.LFE65:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE29:
	.text
.LHOTE29:
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 2
.LC30:
	.ascii "C\0O\0N\0O\0U\0T\0$\0\0\0"
	.section	.text.unlikely,"x"
.LCOLDB31:
	.section	.text.startup,"x"
.LHOTB31:
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
.LFB5027:
	.loc 1 204 0
	.cfi_startproc
	pushq	%rbx
	.seh_pushreg	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$96, %rsp
	.seh_stackalloc	96
	.cfi_def_cfa_offset 112
	.seh_endprologue
	.loc 1 204 0
	call	__main
.LVL198:
	.loc 1 207 0
	xorl	%r9d, %r9d
	movq	$0, 48(%rsp)
	movl	$0, 40(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, %r8d
	movl	$-1073741824, %edx
	leaq	.LC30(%rip), %rcx
	call	*__imp_CreateFileW(%rip)
.LVL199:
	.loc 1 210 0
	cmpq	$-1, %rax
	.loc 1 207 0
	movq	%rax, %rbx
.LVL200:
	.loc 1 210 0
	je	.L83
	.loc 1 211 0
	leaq	64(%rsp), %rdx
	movq	%rax, %rcx
	call	*__imp_GetConsoleScreenBufferInfo(%rip)
.LVL201:
	testl	%eax, %eax
	jne	.L87
.L83:
	.loc 1 210 0
	movl	$1, %eax
.L82:
	.loc 1 219 0
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
.LVL202:
	ret
.LVL203:
.L87:
	.cfi_restore_state
	.loc 1 213 0
	movq	%rbx, %rcx
	call	*__imp_CloseHandle(%rip)
.LVL204:
	.loc 1 215 0
	movswl	74(%rsp), %edx
	movswl	78(%rsp), %eax
	subl	%edx, %eax
	.loc 1 216 0
	movswl	76(%rsp), %edx
	.loc 1 215 0
	movl	%eax, width(%rip)
	.loc 1 216 0
	movswl	80(%rsp), %eax
	subl	%edx, %eax
	movl	%eax, height(%rip)
	.loc 1 218 0
	call	render
.LVL205:
	jmp	.L82
	.cfi_endproc
.LFE5027:
	.seh_endproc
	.section	.text.unlikely,"x"
.LCOLDE31:
	.section	.text.startup,"x"
.LHOTE31:
	.comm	height, 4, 2
	.comm	width, 4, 2
	.section .rdata,"dr"
	.align 8
.LC8:
	.long	0
	.long	0
	.align 8
.LC12:
	.long	0
	.long	1076101120
	.align 8
.LC21:
	.long	0
	.long	1083129856
	.align 8
.LC25:
	.long	0
	.long	1077149696
	.align 8
.LC26:
	.long	0
	.long	1078525952
	.align 8
.LC27:
	.long	0
	.long	1075052544
	.align 8
.LC28:
	.long	1893457979
	.long	1070865199
	.text
.Letext0:
	.section	.text.unlikely,"x"
.Letext_cold0:
	.file 2 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/stdint.h"
	.file 3 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/minwindef.h"
	.file 4 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/basetsd.h"
	.file 5 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/winnt.h"
	.file 6 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/wincon.h"
	.file 7 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/math.h"
	.file 8 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/stdio.h"
	.file 9 "C:/Program Files/Haskell Platform/8.0.2/mingw/x86_64-w64-mingw32/include/stdlib.h"
	.section	.debug_info,"dr"
.Ldebug_info0:
	.long	0x195c
	.word	0x4
	.secrel32	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.ascii "GNU C11 5.2.0 -mtune=generic -march=x86-64 -g -O3\0"
	.byte	0xc
	.ascii "render.c\0"
	.ascii "C:\\Users\\bsimm\\Documents\\GitHub\\ProblemSolutions\\c rendering\0"
	.secrel32	.Ldebug_ranges0+0xde0
	.quad	0
	.secrel32	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii "sizetype\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x2
	.byte	0x10
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x3
	.ascii "uint64_t\0"
	.byte	0x2
	.byte	0x2a
	.long	0xa7
	.uleb128 0x4
	.secrel32	.LASF0
	.byte	0x10
	.byte	0x1
	.byte	0x11
	.long	0x1a8
	.uleb128 0x5
	.ascii "pix\0"
	.byte	0x1
	.byte	0x12
	.long	0x9f
	.byte	0
	.uleb128 0x5
	.ascii "depth\0"
	.byte	0x1
	.byte	0x13
	.long	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.secrel32	.LASF0
	.byte	0x1
	.byte	0x14
	.long	0x181
	.uleb128 0x7
	.ascii "vec3d\0"
	.byte	0x18
	.byte	0x1
	.byte	0x16
	.long	0x1e0
	.uleb128 0x5
	.ascii "x\0"
	.byte	0x1
	.byte	0x17
	.long	0x95
	.byte	0
	.uleb128 0x5
	.ascii "y\0"
	.byte	0x1
	.byte	0x17
	.long	0x95
	.byte	0x8
	.uleb128 0x5
	.ascii "z\0"
	.byte	0x1
	.byte	0x17
	.long	0x95
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.ascii "vec3d\0"
	.byte	0x1
	.byte	0x18
	.long	0x1b3
	.uleb128 0x7
	.ascii "vec2d\0"
	.byte	0x10
	.byte	0x1
	.byte	0x1a
	.long	0x210
	.uleb128 0x5
	.ascii "x\0"
	.byte	0x1
	.byte	0x1b
	.long	0x95
	.byte	0
	.uleb128 0x5
	.ascii "y\0"
	.byte	0x1
	.byte	0x1b
	.long	0x95
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.ascii "vec2d\0"
	.byte	0x1
	.byte	0x1c
	.long	0x1ed
	.uleb128 0x7
	.ascii "tri\0"
	.byte	0x48
	.byte	0x1
	.byte	0x1e
	.long	0x248
	.uleb128 0x5
	.ascii "a\0"
	.byte	0x1
	.byte	0x1f
	.long	0x1e0
	.byte	0
	.uleb128 0x5
	.ascii "b\0"
	.byte	0x1
	.byte	0x1f
	.long	0x1e0
	.byte	0x18
	.uleb128 0x5
	.ascii "c\0"
	.byte	0x1
	.byte	0x1f
	.long	0x1e0
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.ascii "tri\0"
	.byte	0x1
	.byte	0x20
	.long	0x21d
	.uleb128 0x7
	.ascii "tri2d\0"
	.byte	0x30
	.byte	0x1
	.byte	0x22
	.long	0x280
	.uleb128 0x5
	.ascii "a\0"
	.byte	0x1
	.byte	0x23
	.long	0x210
	.byte	0
	.uleb128 0x5
	.ascii "b\0"
	.byte	0x1
	.byte	0x23
	.long	0x210
	.byte	0x10
	.uleb128 0x5
	.ascii "c\0"
	.byte	0x1
	.byte	0x23
	.long	0x210
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.ascii "tri2d\0"
	.byte	0x1
	.byte	0x24
	.long	0x253
	.uleb128 0x8
	.byte	0x8
	.uleb128 0x3
	.ascii "WORD\0"
	.byte	0x3
	.byte	0x8c
	.long	0xd2
	.uleb128 0x3
	.ascii "LONG_PTR\0"
	.byte	0x4
	.byte	0x30
	.long	0xc1
	.uleb128 0x9
	.ascii "SHORT\0"
	.byte	0x5
	.word	0x117
	.long	0x164
	.uleb128 0x9
	.ascii "HANDLE\0"
	.byte	0x5
	.word	0x18e
	.long	0x28d
	.uleb128 0x7
	.ascii "_COORD\0"
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.long	0x2ec
	.uleb128 0x5
	.ascii "X\0"
	.byte	0x6
	.byte	0x12
	.long	0x2ab
	.byte	0
	.uleb128 0x5
	.ascii "Y\0"
	.byte	0x6
	.byte	0x13
	.long	0x2ab
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.ascii "COORD\0"
	.byte	0x6
	.byte	0x14
	.long	0x2c8
	.uleb128 0x7
	.ascii "_SMALL_RECT\0"
	.byte	0x8
	.byte	0x6
	.byte	0x16
	.long	0x344
	.uleb128 0x5
	.ascii "Left\0"
	.byte	0x6
	.byte	0x17
	.long	0x2ab
	.byte	0
	.uleb128 0x5
	.ascii "Top\0"
	.byte	0x6
	.byte	0x18
	.long	0x2ab
	.byte	0x2
	.uleb128 0x5
	.ascii "Right\0"
	.byte	0x6
	.byte	0x19
	.long	0x2ab
	.byte	0x4
	.uleb128 0x5
	.ascii "Bottom\0"
	.byte	0x6
	.byte	0x1a
	.long	0x2ab
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.ascii "SMALL_RECT\0"
	.byte	0x6
	.byte	0x1b
	.long	0x2f9
	.uleb128 0x7
	.ascii "_CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x16
	.byte	0x6
	.byte	0x85
	.long	0x3e4
	.uleb128 0x5
	.ascii "dwSize\0"
	.byte	0x6
	.byte	0x86
	.long	0x2ec
	.byte	0
	.uleb128 0x5
	.ascii "dwCursorPosition\0"
	.byte	0x6
	.byte	0x87
	.long	0x2ec
	.byte	0x4
	.uleb128 0x5
	.ascii "wAttributes\0"
	.byte	0x6
	.byte	0x88
	.long	0x28f
	.byte	0x8
	.uleb128 0x5
	.ascii "srWindow\0"
	.byte	0x6
	.byte	0x89
	.long	0x344
	.byte	0xa
	.uleb128 0x5
	.ascii "dwMaximumWindowSize\0"
	.byte	0x6
	.byte	0x8a
	.long	0x2ec
	.byte	0x12
	.byte	0
	.uleb128 0x3
	.ascii "CONSOLE_SCREEN_BUFFER_INFO\0"
	.byte	0x6
	.byte	0x8b
	.long	0x356
	.uleb128 0xa
	.ascii "addvec\0"
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	0x42c
	.uleb128 0xb
	.ascii "set\0"
	.byte	0x1
	.byte	0x26
	.long	0x42c
	.uleb128 0xc
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x26
	.long	0x42c
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x1e0
	.uleb128 0xe
	.ascii "triSign\0"
	.byte	0x1
	.byte	0x5e
	.long	0x95
	.byte	0x1
	.long	0x462
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0x5e
	.long	0x462
	.uleb128 0xb
	.ascii "b\0"
	.byte	0x1
	.byte	0x5e
	.long	0x462
	.uleb128 0xb
	.ascii "c\0"
	.byte	0x1
	.byte	0x5e
	.long	0x462
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x210
	.uleb128 0xe
	.ascii "projectVec\0"
	.byte	0x1
	.byte	0x66
	.long	0x210
	.byte	0x1
	.long	0x495
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0x66
	.long	0x42c
	.uleb128 0xf
	.ascii "flat\0"
	.byte	0x1
	.byte	0x67
	.long	0x210
	.byte	0
	.uleb128 0xe
	.ascii "trisignbool\0"
	.byte	0x1
	.byte	0x62
	.long	0x4c9
	.byte	0x1
	.long	0x4c9
	.uleb128 0xb
	.ascii "a\0"
	.byte	0x1
	.byte	0x62
	.long	0x462
	.uleb128 0xb
	.ascii "b\0"
	.byte	0x1
	.byte	0x62
	.long	0x462
	.uleb128 0xb
	.ascii "c\0"
	.byte	0x1
	.byte	0x62
	.long	0x462
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0xe
	.ascii "limit\0"
	.byte	0x1
	.byte	0x86
	.long	0xe8
	.byte	0x1
	.long	0x506
	.uleb128 0xb
	.ascii "val\0"
	.byte	0x1
	.byte	0x86
	.long	0xe8
	.uleb128 0xb
	.ascii "min\0"
	.byte	0x1
	.byte	0x86
	.long	0xe8
	.uleb128 0xb
	.ascii "max\0"
	.byte	0x1
	.byte	0x86
	.long	0xe8
	.byte	0
	.uleb128 0xe
	.ascii "getPix\0"
	.byte	0x1
	.byte	0x8c
	.long	0x9f
	.byte	0x1
	.long	0x527
	.uleb128 0xb
	.ascii "depth\0"
	.byte	0x1
	.byte	0x8c
	.long	0x95
	.byte	0
	.uleb128 0xa
	.ascii "wipeBuffer\0"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.long	0x554
	.uleb128 0xb
	.ascii "pixels\0"
	.byte	0x1
	.byte	0x90
	.long	0x55a
	.uleb128 0x10
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x1
	.byte	0x91
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x1a8
	.uleb128 0x11
	.long	0x554
	.uleb128 0xa
	.ascii "rotateTri\0"
	.byte	0x1
	.byte	0x4c
	.byte	0x1
	.long	0x588
	.uleb128 0xb
	.ascii "set\0"
	.byte	0x1
	.byte	0x4c
	.long	0x58e
	.uleb128 0xb
	.ascii "rot\0"
	.byte	0x1
	.byte	0x4c
	.long	0x593
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x248
	.uleb128 0x11
	.long	0x588
	.uleb128 0x11
	.long	0x42c
	.uleb128 0x12
	.long	0x406
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c2
	.uleb128 0x13
	.long	0x415
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.long	0x420
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x14
	.ascii "mulvec\0"
	.byte	0x1
	.byte	0x2c
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fd
	.uleb128 0x15
	.ascii "set\0"
	.byte	0x1
	.byte	0x2c
	.long	0x42c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x16
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x2c
	.long	0x42c
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xa
	.ascii "rotXvec\0"
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.long	0x626
	.uleb128 0xb
	.ascii "set\0"
	.byte	0x1
	.byte	0x32
	.long	0x42c
	.uleb128 0xb
	.ascii "theta\0"
	.byte	0x1
	.byte	0x32
	.long	0x95
	.byte	0
	.uleb128 0x12
	.long	0x5fd
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x684
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST0
	.uleb128 0x17
	.long	0x618
	.secrel32	.LLST1
	.uleb128 0x18
	.quad	.LVL3
	.long	0x18ef
	.long	0x66d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL4
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "rotYvec\0"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x6ad
	.uleb128 0xb
	.ascii "set\0"
	.byte	0x1
	.byte	0x37
	.long	0x42c
	.uleb128 0xb
	.ascii "theta\0"
	.byte	0x1
	.byte	0x37
	.long	0x95
	.byte	0
	.uleb128 0x12
	.long	0x684
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x70b
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST2
	.uleb128 0x17
	.long	0x69f
	.secrel32	.LLST3
	.uleb128 0x18
	.quad	.LVL8
	.long	0x18ef
	.long	0x6f4
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL9
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "rotZvec\0"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.long	0x734
	.uleb128 0xb
	.ascii "set\0"
	.byte	0x1
	.byte	0x3c
	.long	0x42c
	.uleb128 0xb
	.ascii "theta\0"
	.byte	0x1
	.byte	0x3c
	.long	0x95
	.byte	0
	.uleb128 0x12
	.long	0x70b
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x792
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST4
	.uleb128 0x17
	.long	0x726
	.secrel32	.LLST5
	.uleb128 0x18
	.quad	.LVL13
	.long	0x18ef
	.long	0x77b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL14
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "rotateVec\0"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.long	0x7bb
	.uleb128 0xb
	.ascii "set\0"
	.byte	0x1
	.byte	0x41
	.long	0x42c
	.uleb128 0xb
	.ascii "rot\0"
	.byte	0x1
	.byte	0x41
	.long	0x42c
	.byte	0
	.uleb128 0x12
	.long	0x792
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fb
	.uleb128 0x17
	.long	0x7a4
	.secrel32	.LLST6
	.uleb128 0x17
	.long	0x7af
	.secrel32	.LLST7
	.uleb128 0x1b
	.long	0x5fd
	.quad	.LBB44
	.quad	.LBE44-.LBB44
	.byte	0x1
	.byte	0x42
	.long	0x846
	.uleb128 0x17
	.long	0x618
	.secrel32	.LLST8
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST9
	.uleb128 0x18
	.quad	.LVL19
	.long	0x18ef
	.long	0x82f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL20
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x684
	.quad	.LBB46
	.quad	.LBE46-.LBB46
	.byte	0x1
	.byte	0x43
	.long	0x8a4
	.uleb128 0x17
	.long	0x69f
	.secrel32	.LLST10
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST11
	.uleb128 0x18
	.quad	.LVL23
	.long	0x18ef
	.long	0x88d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL24
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x70b
	.quad	.LBB48
	.secrel32	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x44
	.uleb128 0x17
	.long	0x726
	.secrel32	.LLST12
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST13
	.uleb128 0x18
	.quad	.LVL27
	.long	0x18ef
	.long	0x8e3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL28
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.ascii "translateRotate\0"
	.byte	0x1
	.byte	0x47
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0xab5
	.uleb128 0x1d
	.ascii "set\0"
	.byte	0x1
	.byte	0x47
	.long	0x42c
	.secrel32	.LLST14
	.uleb128 0x1d
	.ascii "rot\0"
	.byte	0x1
	.byte	0x47
	.long	0x42c
	.secrel32	.LLST15
	.uleb128 0x1d
	.ascii "tran\0"
	.byte	0x1
	.byte	0x47
	.long	0x42c
	.secrel32	.LLST16
	.uleb128 0x1b
	.long	0x406
	.quad	.LBB68
	.quad	.LBE68-.LBB68
	.byte	0x1
	.byte	0x48
	.long	0x980
	.uleb128 0x17
	.long	0x420
	.secrel32	.LLST17
	.uleb128 0x17
	.long	0x415
	.secrel32	.LLST18
	.byte	0
	.uleb128 0x1c
	.long	0x792
	.quad	.LBB70
	.secrel32	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x49
	.uleb128 0x17
	.long	0x7af
	.secrel32	.LLST19
	.uleb128 0x17
	.long	0x7a4
	.secrel32	.LLST20
	.uleb128 0x1e
	.long	0x5fd
	.quad	.LBB72
	.secrel32	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0x42
	.long	0x9ff
	.uleb128 0x17
	.long	0x618
	.secrel32	.LLST21
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST22
	.uleb128 0x18
	.quad	.LVL36
	.long	0x18ef
	.long	0x9e8
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL37
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	0x684
	.quad	.LBB76
	.quad	.LBE76-.LBB76
	.byte	0x1
	.byte	0x43
	.long	0xa5d
	.uleb128 0x17
	.long	0x69f
	.secrel32	.LLST23
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST24
	.uleb128 0x18
	.quad	.LVL40
	.long	0x18ef
	.long	0xa46
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL41
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x70b
	.quad	.LBB78
	.secrel32	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x44
	.uleb128 0x17
	.long	0x726
	.secrel32	.LLST25
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST26
	.uleb128 0x18
	.quad	.LVL44
	.long	0x18ef
	.long	0xa9c
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL45
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x55f
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xc53
	.uleb128 0x17
	.long	0x571
	.secrel32	.LLST27
	.uleb128 0x17
	.long	0x57c
	.secrel32	.LLST28
	.uleb128 0x1e
	.long	0x792
	.quad	.LBB108
	.secrel32	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0x4f
	.long	0xc1a
	.uleb128 0x17
	.long	0x7af
	.secrel32	.LLST29
	.uleb128 0x17
	.long	0x7a4
	.secrel32	.LLST30
	.uleb128 0x1b
	.long	0x5fd
	.quad	.LBB110
	.quad	.LBE110-.LBB110
	.byte	0x1
	.byte	0x42
	.long	0xb69
	.uleb128 0x17
	.long	0x618
	.secrel32	.LLST31
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST32
	.uleb128 0x18
	.quad	.LVL54
	.long	0x18ef
	.long	0xb52
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL55
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x684
	.quad	.LBB112
	.secrel32	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.byte	0x43
	.long	0xbc3
	.uleb128 0x17
	.long	0x69f
	.secrel32	.LLST33
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST34
	.uleb128 0x18
	.quad	.LVL58
	.long	0x18ef
	.long	0xbac
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL59
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x70b
	.quad	.LBB117
	.secrel32	.Ldebug_ranges0+0x210
	.byte	0x1
	.byte	0x44
	.uleb128 0x17
	.long	0x726
	.secrel32	.LLST35
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST36
	.uleb128 0x18
	.quad	.LVL62
	.long	0x18ef
	.long	0xc02
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL63
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.quad	.LVL51
	.long	0x792
	.long	0xc38
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL52
	.long	0x792
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 24
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xe
	.ascii "depthTri\0"
	.byte	0x1
	.byte	0x52
	.long	0x95
	.byte	0x1
	.long	0xcb8
	.uleb128 0xc
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x52
	.long	0x588
	.uleb128 0xb
	.ascii "x\0"
	.byte	0x1
	.byte	0x52
	.long	0x95
	.uleb128 0xb
	.ascii "y\0"
	.byte	0x1
	.byte	0x52
	.long	0x95
	.uleb128 0xf
	.ascii "na\0"
	.byte	0x1
	.byte	0x53
	.long	0x95
	.uleb128 0xf
	.ascii "nb\0"
	.byte	0x1
	.byte	0x54
	.long	0x95
	.uleb128 0xf
	.ascii "nd\0"
	.byte	0x1
	.byte	0x55
	.long	0x95
	.uleb128 0xf
	.ascii "ne\0"
	.byte	0x1
	.byte	0x59
	.long	0x95
	.uleb128 0xf
	.ascii "nf\0"
	.byte	0x1
	.byte	0x5a
	.long	0x95
	.byte	0
	.uleb128 0x12
	.long	0xc53
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0xd1a
	.uleb128 0x13
	.long	0xc68
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x17
	.long	0xc73
	.secrel32	.LLST37
	.uleb128 0x17
	.long	0xc7c
	.secrel32	.LLST38
	.uleb128 0x1f
	.long	0xc85
	.secrel32	.LLST39
	.uleb128 0x1f
	.long	0xc8f
	.secrel32	.LLST40
	.uleb128 0x1f
	.long	0xc99
	.secrel32	.LLST41
	.uleb128 0x1f
	.long	0xca3
	.secrel32	.LLST42
	.uleb128 0x1f
	.long	0xcad
	.secrel32	.LLST43
	.byte	0
	.uleb128 0x12
	.long	0x432
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0xd4b
	.uleb128 0x13
	.long	0x446
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.long	0x44f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x13
	.long	0x458
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x12
	.long	0x495
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0xda5
	.uleb128 0x13
	.long	0x4ad
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.long	0x4b6
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x13
	.long	0x4bf
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1c
	.long	0x432
	.quad	.LBB138
	.secrel32	.Ldebug_ranges0+0x280
	.byte	0x1
	.byte	0x63
	.uleb128 0x13
	.long	0x458
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x13
	.long	0x44f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x13
	.long	0x446
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x468
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd1
	.uleb128 0x13
	.long	0x47f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1f
	.long	0x488
	.secrel32	.LLST44
	.byte	0
	.uleb128 0xa
	.ascii "projectTri\0"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.long	0xdfe
	.uleb128 0xc
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x6d
	.long	0x58e
	.uleb128 0xb
	.ascii "setter\0"
	.byte	0x1
	.byte	0x6d
	.long	0xe04
	.byte	0
	.uleb128 0xd
	.byte	0x8
	.long	0x280
	.uleb128 0x11
	.long	0xdfe
	.uleb128 0x12
	.long	0xdd1
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0xeb1
	.uleb128 0x13
	.long	0xde4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.long	0xdef
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1e
	.long	0x468
	.quad	.LBB148
	.secrel32	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.byte	0x6e
	.long	0xe5c
	.uleb128 0x13
	.long	0x47f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x2b0
	.uleb128 0x21
	.long	0x488
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x468
	.quad	.LBB157
	.secrel32	.Ldebug_ranges0+0x310
	.byte	0x1
	.byte	0x6f
	.long	0xe88
	.uleb128 0x13
	.long	0x47f
	.uleb128 0x3
	.byte	0x72
	.sleb128 24
	.byte	0x9f
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x310
	.uleb128 0x21
	.long	0x488
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x468
	.quad	.LBB169
	.secrel32	.Ldebug_ranges0+0x380
	.byte	0x1
	.byte	0x70
	.uleb128 0x13
	.long	0x47f
	.uleb128 0x3
	.byte	0x72
	.sleb128 48
	.byte	0x9f
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x380
	.uleb128 0x21
	.long	0x488
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.ascii "vecInTri\0"
	.byte	0x1
	.byte	0x73
	.long	0x4c9
	.byte	0x1
	.long	0xefb
	.uleb128 0xc
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x73
	.long	0xe04
	.uleb128 0xb
	.ascii "chk\0"
	.byte	0x1
	.byte	0x73
	.long	0xefb
	.uleb128 0xf
	.ascii "b1\0"
	.byte	0x1
	.byte	0x74
	.long	0x4c9
	.uleb128 0xf
	.ascii "b2\0"
	.byte	0x1
	.byte	0x74
	.long	0x4c9
	.uleb128 0xf
	.ascii "b3\0"
	.byte	0x1
	.byte	0x74
	.long	0x4c9
	.byte	0
	.uleb128 0x11
	.long	0x462
	.uleb128 0x12
	.long	0xeb1
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0xffd
	.uleb128 0x17
	.long	0xec6
	.secrel32	.LLST45
	.uleb128 0x17
	.long	0xed1
	.secrel32	.LLST46
	.uleb128 0x21
	.long	0xedc
	.uleb128 0x21
	.long	0xee6
	.uleb128 0x21
	.long	0xef0
	.uleb128 0x1e
	.long	0x495
	.quad	.LBB188
	.secrel32	.Ldebug_ranges0+0x3c0
	.byte	0x1
	.byte	0x75
	.long	0xf9e
	.uleb128 0x17
	.long	0x4bf
	.secrel32	.LLST47
	.uleb128 0x17
	.long	0x4b6
	.secrel32	.LLST48
	.uleb128 0x17
	.long	0x4ad
	.secrel32	.LLST49
	.uleb128 0x1c
	.long	0x432
	.quad	.LBB190
	.secrel32	.Ldebug_ranges0+0x420
	.byte	0x1
	.byte	0x63
	.uleb128 0x17
	.long	0x458
	.secrel32	.LLST50
	.uleb128 0x17
	.long	0x44f
	.secrel32	.LLST51
	.uleb128 0x17
	.long	0x446
	.secrel32	.LLST52
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x495
	.quad	.LBB204
	.secrel32	.Ldebug_ranges0+0x480
	.byte	0x1
	.byte	0x76
	.uleb128 0x17
	.long	0x4bf
	.secrel32	.LLST53
	.uleb128 0x17
	.long	0x4b6
	.secrel32	.LLST54
	.uleb128 0x17
	.long	0x4ad
	.secrel32	.LLST55
	.uleb128 0x1c
	.long	0x432
	.quad	.LBB206
	.secrel32	.Ldebug_ranges0+0x530
	.byte	0x1
	.byte	0x63
	.uleb128 0x17
	.long	0x458
	.secrel32	.LLST56
	.uleb128 0x17
	.long	0x44f
	.secrel32	.LLST57
	.uleb128 0x17
	.long	0x446
	.secrel32	.LLST58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "drawScreen\0"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0x1033
	.uleb128 0xb
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x7b
	.long	0x55a
	.uleb128 0xf
	.ascii "x\0"
	.byte	0x1
	.byte	0x7d
	.long	0xe8
	.uleb128 0x10
	.uleb128 0xf
	.ascii "y\0"
	.byte	0x1
	.byte	0x7e
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0xffd
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x10af
	.uleb128 0x17
	.long	0x1010
	.secrel32	.LLST59
	.uleb128 0x1f
	.long	0x101e
	.secrel32	.LLST60
	.uleb128 0x22
	.secrel32	.Ldebug_ranges0+0x560
	.long	0x1093
	.uleb128 0x1f
	.long	0x1028
	.secrel32	.LLST61
	.uleb128 0x23
	.quad	.LVL115
	.long	0x1905
	.uleb128 0x1a
	.quad	.LVL118
	.long	0x1905
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL111
	.long	0x1919
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x4d2
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e0
	.uleb128 0x13
	.long	0x4e4
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x13
	.long	0x4ef
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x13
	.long	0x4fa
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x12
	.long	0x506
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x111d
	.uleb128 0x17
	.long	0x519
	.secrel32	.LLST62
	.uleb128 0x1a
	.quad	.LVL123
	.long	0x192b
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x527
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x1159
	.uleb128 0x17
	.long	0x53a
	.secrel32	.LLST63
	.uleb128 0x24
	.quad	.LBB235
	.quad	.LBE235-.LBB235
	.uleb128 0x21
	.long	0x549
	.byte	0
	.byte	0
	.uleb128 0x14
	.ascii "rasterTri\0"
	.byte	0x1
	.byte	0x97
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x13b4
	.uleb128 0x25
	.secrel32	.LASF1
	.byte	0x1
	.byte	0x97
	.long	0x588
	.secrel32	.LLST64
	.uleb128 0x1d
	.ascii "buffer\0"
	.byte	0x1
	.byte	0x97
	.long	0x55a
	.secrel32	.LLST65
	.uleb128 0xf
	.ascii "mapped\0"
	.byte	0x1
	.byte	0x98
	.long	0x280
	.uleb128 0xf
	.ascii "temp\0"
	.byte	0x1
	.byte	0x9b
	.long	0x210
	.uleb128 0x1e
	.long	0xdd1
	.quad	.LBB267
	.secrel32	.Ldebug_ranges0+0x590
	.byte	0x1
	.byte	0x99
	.long	0x1274
	.uleb128 0x13
	.long	0xdef
	.uleb128 0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+4509
	.sleb128 0
	.uleb128 0x17
	.long	0xde4
	.secrel32	.LLST66
	.uleb128 0x1e
	.long	0x468
	.quad	.LBB268
	.secrel32	.Ldebug_ranges0+0x5e0
	.byte	0x1
	.byte	0x6e
	.long	0x120f
	.uleb128 0x17
	.long	0x47f
	.secrel32	.LLST67
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x5e0
	.uleb128 0x21
	.long	0x488
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x468
	.quad	.LBB278
	.secrel32	.Ldebug_ranges0+0x650
	.byte	0x1
	.byte	0x6f
	.long	0x123b
	.uleb128 0x17
	.long	0x47f
	.secrel32	.LLST68
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x650
	.uleb128 0x21
	.long	0x488
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x468
	.quad	.LBB286
	.quad	.LBE286-.LBB286
	.byte	0x1
	.byte	0x70
	.uleb128 0x17
	.long	0x47f
	.secrel32	.LLST69
	.uleb128 0x24
	.quad	.LBB287
	.quad	.LBE287-.LBB287
	.uleb128 0x21
	.long	0x488
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x690
	.uleb128 0x27
	.ascii "y\0"
	.byte	0x1
	.byte	0x9c
	.long	0xe8
	.secrel32	.LLST70
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x6d0
	.uleb128 0x27
	.ascii "x\0"
	.byte	0x1
	.byte	0x9e
	.long	0xe8
	.secrel32	.LLST71
	.uleb128 0x22
	.secrel32	.Ldebug_ranges0+0x710
	.long	0x1347
	.uleb128 0xf
	.ascii "depth\0"
	.byte	0x1
	.byte	0xa1
	.long	0x95
	.uleb128 0x1e
	.long	0x506
	.quad	.LBB291
	.secrel32	.Ldebug_ranges0+0x740
	.byte	0x1
	.byte	0xa4
	.long	0x12d8
	.uleb128 0x28
	.long	0x519
	.uleb128 0x23
	.quad	.LVL158
	.long	0x192b
	.byte	0
	.uleb128 0x26
	.long	0xc53
	.quad	.LBB295
	.quad	.LBE295-.LBB295
	.byte	0x1
	.byte	0xa1
	.uleb128 0x17
	.long	0xc7c
	.secrel32	.LLST72
	.uleb128 0x17
	.long	0xc73
	.secrel32	.LLST73
	.uleb128 0x17
	.long	0xc68
	.secrel32	.LLST74
	.uleb128 0x24
	.quad	.LBB296
	.quad	.LBE296-.LBB296
	.uleb128 0x1f
	.long	0xc85
	.secrel32	.LLST75
	.uleb128 0x1f
	.long	0xc8f
	.secrel32	.LLST76
	.uleb128 0x1f
	.long	0xc99
	.secrel32	.LLST77
	.uleb128 0x1f
	.long	0xca3
	.secrel32	.LLST78
	.uleb128 0x21
	.long	0xcad
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xeb1
	.quad	.LBB299
	.secrel32	.Ldebug_ranges0+0x780
	.byte	0x1
	.byte	0xa0
	.uleb128 0x17
	.long	0xed1
	.secrel32	.LLST79
	.uleb128 0x17
	.long	0xec6
	.secrel32	.LLST80
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0x780
	.uleb128 0x21
	.long	0xedc
	.uleb128 0x21
	.long	0xee6
	.uleb128 0x21
	.long	0xef0
	.uleb128 0x1c
	.long	0x495
	.quad	.LBB301
	.secrel32	.Ldebug_ranges0+0x780
	.byte	0x1
	.byte	0x76
	.uleb128 0x17
	.long	0x4bf
	.secrel32	.LLST81
	.uleb128 0x17
	.long	0x4b6
	.secrel32	.LLST82
	.uleb128 0x17
	.long	0x4ad
	.secrel32	.LLST79
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii "render\0"
	.byte	0x1
	.byte	0xac
	.long	0xe8
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x1801
	.uleb128 0x27
	.ascii "pixels\0"
	.byte	0x1
	.byte	0xb0
	.long	0x554
	.secrel32	.LLST84
	.uleb128 0xf
	.ascii "testrender\0"
	.byte	0x1
	.byte	0xb3
	.long	0x248
	.uleb128 0x27
	.ascii "rotation\0"
	.byte	0x1
	.byte	0xb9
	.long	0x1e0
	.secrel32	.LLST85
	.uleb128 0x2a
	.quad	.LBB348
	.quad	.LBE348-.LBB348
	.long	0x17a8
	.uleb128 0xf
	.ascii "i\0"
	.byte	0x1
	.byte	0xbb
	.long	0x171
	.uleb128 0x24
	.quad	.LBB349
	.quad	.LBE349-.LBB349
	.uleb128 0x2b
	.ascii "copyTri\0"
	.byte	0x1
	.byte	0xbc
	.long	0x248
	.uleb128 0x3
	.byte	0x91
	.sleb128 -320
	.uleb128 0x1e
	.long	0x55f
	.quad	.LBB350
	.secrel32	.Ldebug_ranges0+0x7b0
	.byte	0x1
	.byte	0xbd
	.long	0x16dc
	.uleb128 0x17
	.long	0x57c
	.secrel32	.LLST86
	.uleb128 0x17
	.long	0x571
	.secrel32	.LLST87
	.uleb128 0x1e
	.long	0x792
	.quad	.LBB351
	.secrel32	.Ldebug_ranges0+0x800
	.byte	0x1
	.byte	0x4d
	.long	0x15af
	.uleb128 0x17
	.long	0x7af
	.secrel32	.LLST86
	.uleb128 0x17
	.long	0x7a4
	.secrel32	.LLST87
	.uleb128 0x1e
	.long	0x5fd
	.quad	.LBB352
	.secrel32	.Ldebug_ranges0+0x8f0
	.byte	0x1
	.byte	0x42
	.long	0x14fa
	.uleb128 0x28
	.long	0x618
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST87
	.uleb128 0x18
	.quad	.LVL172
	.long	0x18ef
	.long	0x14e3
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL173
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x684
	.quad	.LBB356
	.secrel32	.Ldebug_ranges0+0x920
	.byte	0x1
	.byte	0x43
	.long	0x1558
	.uleb128 0x28
	.long	0x69f
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST87
	.uleb128 0x18
	.quad	.LVL174
	.long	0x18ef
	.long	0x1539
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL175
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0xc
	.byte	0xf4
	.uleb128 0x95
	.byte	0x8
	.long	0
	.long	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x70b
	.quad	.LBB369
	.secrel32	.Ldebug_ranges0+0x9a0
	.byte	0x1
	.byte	0x44
	.uleb128 0x17
	.long	0x726
	.secrel32	.LLST92
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST93
	.uleb128 0x18
	.quad	.LVL178
	.long	0x18ef
	.long	0x1597
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0
	.uleb128 0x1a
	.quad	.LVL179
	.long	0x18fa
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x61
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x792
	.quad	.LBB384
	.secrel32	.Ldebug_ranges0+0xa20
	.byte	0x1
	.byte	0x4f
	.long	0x1647
	.uleb128 0x17
	.long	0x7af
	.secrel32	.LLST94
	.uleb128 0x17
	.long	0x7a4
	.secrel32	.LLST95
	.uleb128 0x1e
	.long	0x684
	.quad	.LBB385
	.secrel32	.Ldebug_ranges0+0xac0
	.byte	0x1
	.byte	0x43
	.long	0x15fe
	.uleb128 0x28
	.long	0x69f
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST95
	.byte	0
	.uleb128 0x1e
	.long	0x5fd
	.quad	.LBB390
	.secrel32	.Ldebug_ranges0+0xb10
	.byte	0x1
	.byte	0x42
	.long	0x1624
	.uleb128 0x28
	.long	0x618
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST95
	.byte	0
	.uleb128 0x1c
	.long	0x70b
	.quad	.LBB400
	.secrel32	.Ldebug_ranges0+0xb60
	.byte	0x1
	.byte	0x44
	.uleb128 0x28
	.long	0x726
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST95
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x792
	.quad	.LBB410
	.secrel32	.Ldebug_ranges0+0xbb0
	.byte	0x1
	.byte	0x4e
	.uleb128 0x17
	.long	0x7af
	.secrel32	.LLST99
	.uleb128 0x17
	.long	0x7a4
	.secrel32	.LLST100
	.uleb128 0x1e
	.long	0x5fd
	.quad	.LBB411
	.secrel32	.Ldebug_ranges0+0xc70
	.byte	0x1
	.byte	0x42
	.long	0x1692
	.uleb128 0x28
	.long	0x618
	.uleb128 0x17
	.long	0x60d
	.secrel32	.LLST100
	.byte	0
	.uleb128 0x1e
	.long	0x684
	.quad	.LBB420
	.secrel32	.Ldebug_ranges0+0xce0
	.byte	0x1
	.byte	0x43
	.long	0x16b8
	.uleb128 0x28
	.long	0x69f
	.uleb128 0x17
	.long	0x694
	.secrel32	.LLST100
	.byte	0
	.uleb128 0x1c
	.long	0x70b
	.quad	.LBB433
	.secrel32	.Ldebug_ranges0+0xc30
	.byte	0x1
	.byte	0x44
	.uleb128 0x28
	.long	0x726
	.uleb128 0x17
	.long	0x71b
	.secrel32	.LLST100
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x527
	.quad	.LBB469
	.secrel32	.Ldebug_ranges0+0xd40
	.byte	0x1
	.byte	0xbf
	.long	0x170c
	.uleb128 0x17
	.long	0x53a
	.secrel32	.LLST104
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0xd40
	.uleb128 0x1f
	.long	0x549
	.secrel32	.LLST105
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0xffd
	.quad	.LBB478
	.secrel32	.Ldebug_ranges0+0xd80
	.byte	0x1
	.byte	0xc1
	.long	0x178a
	.uleb128 0x17
	.long	0x1010
	.secrel32	.LLST106
	.uleb128 0x20
	.secrel32	.Ldebug_ranges0+0xd80
	.uleb128 0x1f
	.long	0x101e
	.secrel32	.LLST107
	.uleb128 0x22
	.secrel32	.Ldebug_ranges0+0xdb0
	.long	0x176d
	.uleb128 0x1f
	.long	0x1028
	.secrel32	.LLST108
	.uleb128 0x23
	.quad	.LVL189
	.long	0x1905
	.uleb128 0x1a
	.quad	.LVL192
	.long	0x1905
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL185
	.long	0x1919
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.quad	.LVL184
	.long	0x1159
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -328
	.byte	0x6
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.quad	.LVL167
	.long	0x1919
	.long	0x17c7
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC24
	.byte	0
	.uleb128 0x18
	.quad	.LVL169
	.long	0x193b
	.long	0x17de
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1a
	.quad	.LVL170
	.long	0x194d
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xb
	.byte	0x7e
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x8
	.byte	0x20
	.byte	0x24
	.byte	0x8
	.byte	0x20
	.byte	0x26
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x29
	.ascii "main\0"
	.byte	0x1
	.byte	0xcc
	.long	0xe8
	.quad	.LFB5027
	.quad	.LFE5027-.LFB5027
	.uleb128 0x1
	.byte	0x9c
	.long	0x18c0
	.uleb128 0x27
	.ascii "console\0"
	.byte	0x1
	.byte	0xcd
	.long	0x2b9
	.secrel32	.LLST109
	.uleb128 0x2b
	.ascii "info\0"
	.byte	0x1
	.byte	0xce
	.long	0x3e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2c
	.quad	.LVL199
	.long	0x1884
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x9
	.byte	0x3
	.quad	.LC30
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x4
	.byte	0x40
	.byte	0x4a
	.byte	0x24
	.byte	0x1f
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x58
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x59
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x77
	.sleb128 32
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x77
	.sleb128 40
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x77
	.sleb128 48
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2c
	.quad	.LVL201
	.long	0x189e
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2c
	.quad	.LVL204
	.long	0x18b2
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.quad	.LVL205
	.long	0x13b4
	.byte	0
	.uleb128 0x2d
	.ascii "width\0"
	.byte	0x1
	.byte	0xe
	.long	0xe8
	.uleb128 0x9
	.byte	0x3
	.quad	width
	.uleb128 0x2d
	.ascii "height\0"
	.byte	0x1
	.byte	0xf
	.long	0xe8
	.uleb128 0x9
	.byte	0x3
	.quad	height
	.uleb128 0x2e
	.ascii "cos\0"
	.ascii "cos\0"
	.byte	0x7
	.byte	0xb8
	.uleb128 0x2e
	.ascii "sin\0"
	.ascii "sin\0"
	.byte	0x7
	.byte	0xb7
	.uleb128 0x2f
	.ascii "putchar\0"
	.ascii "putchar\0"
	.byte	0x8
	.word	0x1f7
	.uleb128 0x2f
	.ascii "printf\0"
	.ascii "printf\0"
	.byte	0x8
	.word	0x17a
	.uleb128 0x2f
	.ascii "round\0"
	.ascii "round\0"
	.byte	0x7
	.word	0x41a
	.uleb128 0x2f
	.ascii "setbuf\0"
	.ascii "setbuf\0"
	.byte	0x8
	.word	0x205
	.uleb128 0x2f
	.ascii "calloc\0"
	.ascii "calloc\0"
	.byte	0x9
	.word	0x1be
	.byte	0
	.section	.debug_abbrev,"dr"
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
.Ldebug_loc0:
.LLST0:
	.quad	.LVL2
	.quad	.LVL3-1
	.word	0x1
	.byte	0x52
	.quad	.LVL3-1
	.quad	.LVL6
	.word	0x1
	.byte	0x53
	.quad	.LVL6
	.quad	.LFE48
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL2
	.quad	.LVL3-1
	.word	0x1
	.byte	0x62
	.quad	.LVL3-1
	.quad	.LVL5
	.word	0x1
	.byte	0x69
	.quad	.LVL5
	.quad	.LFE48
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL7
	.quad	.LVL8-1
	.word	0x1
	.byte	0x52
	.quad	.LVL8-1
	.quad	.LVL11
	.word	0x1
	.byte	0x53
	.quad	.LVL11
	.quad	.LFE49
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL7
	.quad	.LVL8-1
	.word	0x1
	.byte	0x62
	.quad	.LVL8-1
	.quad	.LVL10
	.word	0x1
	.byte	0x69
	.quad	.LVL10
	.quad	.LFE49
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL12
	.quad	.LVL13-1
	.word	0x1
	.byte	0x52
	.quad	.LVL13-1
	.quad	.LVL16
	.word	0x1
	.byte	0x53
	.quad	.LVL16
	.quad	.LFE50
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL12
	.quad	.LVL13-1
	.word	0x1
	.byte	0x62
	.quad	.LVL13-1
	.quad	.LVL15
	.word	0x1
	.byte	0x69
	.quad	.LVL15
	.quad	.LFE50
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL17
	.quad	.LVL19-1
	.word	0x1
	.byte	0x52
	.quad	.LVL19-1
	.quad	.LVL30
	.word	0x1
	.byte	0x53
	.quad	.LVL30
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL17
	.quad	.LVL19-1
	.word	0x1
	.byte	0x51
	.quad	.LVL19-1
	.quad	.LVL31
	.word	0x1
	.byte	0x54
	.quad	.LVL31
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL18
	.quad	.LVL21
	.word	0x1
	.byte	0x69
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL18
	.quad	.LVL19-1
	.word	0x1
	.byte	0x52
	.quad	.LVL19-1
	.quad	.LVL30
	.word	0x1
	.byte	0x53
	.quad	.LVL30
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST10:
	.quad	.LVL22
	.quad	.LVL25
	.word	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL22
	.quad	.LVL30
	.word	0x1
	.byte	0x53
	.quad	.LVL30
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL26
	.quad	.LVL29
	.word	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL26
	.quad	.LVL30
	.word	0x1
	.byte	0x53
	.quad	.LVL30
	.quad	.LFE51
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL32
	.quad	.LVL36-1
	.word	0x1
	.byte	0x52
	.quad	.LVL36-1
	.quad	.LVL47
	.word	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST15:
	.quad	.LVL32
	.quad	.LVL36-1
	.word	0x1
	.byte	0x51
	.quad	.LVL36-1
	.quad	.LVL48
	.word	0x1
	.byte	0x54
	.quad	.LVL48
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST16:
	.quad	.LVL32
	.quad	.LVL36-1
	.word	0x1
	.byte	0x58
	.quad	.LVL36-1
	.quad	.LVL49
	.word	0x1
	.byte	0x55
	.quad	.LVL49
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST17:
	.quad	.LVL33
	.quad	.LVL36-1
	.word	0x1
	.byte	0x58
	.quad	.LVL36-1
	.quad	.LVL49
	.word	0x1
	.byte	0x55
	.quad	.LVL49
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x58
	.byte	0x9f
	.quad	0
	.quad	0
.LLST18:
	.quad	.LVL33
	.quad	.LVL36-1
	.word	0x1
	.byte	0x52
	.quad	.LVL36-1
	.quad	.LVL47
	.word	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST19:
	.quad	.LVL34
	.quad	.LVL36-1
	.word	0x1
	.byte	0x51
	.quad	.LVL36-1
	.quad	.LVL48
	.word	0x1
	.byte	0x54
	.quad	.LVL48
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST20:
	.quad	.LVL34
	.quad	.LVL36-1
	.word	0x1
	.byte	0x52
	.quad	.LVL36-1
	.quad	.LVL47
	.word	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST21:
	.quad	.LVL35
	.quad	.LVL38
	.word	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST22:
	.quad	.LVL35
	.quad	.LVL36-1
	.word	0x1
	.byte	0x52
	.quad	.LVL36-1
	.quad	.LVL47
	.word	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST23:
	.quad	.LVL39
	.quad	.LVL42
	.word	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST24:
	.quad	.LVL39
	.quad	.LVL47
	.word	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST25:
	.quad	.LVL43
	.quad	.LVL46
	.word	0x1
	.byte	0x6c
	.quad	0
	.quad	0
.LLST26:
	.quad	.LVL43
	.quad	.LVL47
	.word	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LFE52
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST27:
	.quad	.LVL50
	.quad	.LVL51-1
	.word	0x1
	.byte	0x52
	.quad	.LVL51-1
	.quad	.LVL65
	.word	0x1
	.byte	0x53
	.quad	.LVL65
	.quad	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST28:
	.quad	.LVL50
	.quad	.LVL51-1
	.word	0x1
	.byte	0x51
	.quad	.LVL51-1
	.quad	.LVL66
	.word	0x1
	.byte	0x54
	.quad	.LVL66
	.quad	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST29:
	.quad	.LVL52
	.quad	.LVL66
	.word	0x1
	.byte	0x54
	.quad	.LVL66
	.quad	.LFE53
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST30:
	.quad	.LVL52
	.quad	.LVL65
	.word	0x3
	.byte	0x73
	.sleb128 48
	.byte	0x9f
	.quad	.LVL65
	.quad	.LFE53
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST31:
	.quad	.LVL53
	.quad	.LVL56
	.word	0x1
	.byte	0x69
	.quad	0
	.quad	0
.LLST32:
	.quad	.LVL53
	.quad	.LVL65
	.word	0x3
	.byte	0x73
	.sleb128 48
	.byte	0x9f
	.quad	.LVL65
	.quad	.LFE53
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST33:
	.quad	.LVL57
	.quad	.LVL60
	.word	0x1
	.byte	0x68
	.quad	0
	.quad	0
.LLST34:
	.quad	.LVL57
	.quad	.LVL65
	.word	0x3
	.byte	0x73
	.sleb128 48
	.byte	0x9f
	.quad	.LVL65
	.quad	.LFE53
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST35:
	.quad	.LVL61
	.quad	.LVL64
	.word	0x1
	.byte	0x6a
	.quad	0
	.quad	0
.LLST36:
	.quad	.LVL61
	.quad	.LVL65
	.word	0x3
	.byte	0x73
	.sleb128 48
	.byte	0x9f
	.quad	.LVL65
	.quad	.LFE53
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST37:
	.quad	.LVL67
	.quad	.LVL73
	.word	0x1
	.byte	0x62
	.quad	.LVL73
	.quad	.LFE54
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x9f
	.quad	0
	.quad	0
.LLST38:
	.quad	.LVL67
	.quad	.LVL72
	.word	0x1
	.byte	0x63
	.quad	.LVL72
	.quad	.LFE54
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0x9f
	.quad	0
	.quad	0
.LLST39:
	.quad	.LVL68
	.quad	.LVL70
	.word	0x1e
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL71
	.word	0x21
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL71
	.quad	.LVL74
	.word	0x23
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL75
	.word	0x2a
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL80
	.word	0x31
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL82
	.word	0x35
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL82
	.quad	.LFE54
	.word	0x39
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST40:
	.quad	.LVL69
	.quad	.LVL83
	.word	0x1
	.byte	0x69
	.quad	.LVL83
	.quad	.LVL84
	.word	0x1f
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x95
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL84
	.quad	.LVL85
	.word	0x21
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1d
	.uleb128 0x95
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL85
	.quad	.LFE54
	.word	0x38
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST41:
	.quad	.LVL69
	.quad	.LVL70
	.word	0x1e
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL70
	.quad	.LVL71
	.word	0x21
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL71
	.quad	.LVL76
	.word	0x23
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
	.word	0x2a
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL80
	.word	0x31
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL80
	.quad	.LVL84
	.word	0x35
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL84
	.quad	.LFE54
	.word	0x39
	.byte	0x72
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x72
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x72
	.sleb128 8
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST42:
	.quad	.LVL71
	.quad	.LVL72
	.word	0x23
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL72
	.quad	.LVL74
	.word	0x25
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL74
	.quad	.LVL75
	.word	0x2c
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL75
	.quad	.LVL78
	.word	0x33
	.byte	0x72
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0x72
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL78
	.quad	.LVL81
	.word	0x1
	.byte	0x65
	.quad	0
	.quad	0
.LLST43:
	.quad	.LVL71
	.quad	.LVL73
	.word	0x23
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL73
	.quad	.LVL76
	.word	0x25
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL76
	.quad	.LVL77
	.word	0x2c
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL77
	.quad	.LVL79
	.word	0x33
	.byte	0x72
	.sleb128 32
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0x72
	.sleb128 56
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1c
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL79
	.quad	.LVL81
	.word	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST44:
	.quad	.LVL90
	.quad	.LVL91
	.word	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL91
	.quad	.LVL92
	.word	0x1b
	.byte	0x71
	.sleb128 0
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1b
	.byte	0xf5
	.uleb128 0x12
	.uleb128 0x95
	.byte	0x22
	.byte	0x9f
	.byte	0x93
	.uleb128 0x8
	.byte	0x61
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST45:
	.quad	.LVL104
	.quad	.LVL108
	.word	0x1
	.byte	0x52
	.quad	.LVL108
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST46:
	.quad	.LVL104
	.quad	.LVL107
	.word	0x1
	.byte	0x51
	.quad	.LVL107
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST47:
	.quad	.LVL105
	.quad	.LVL108
	.word	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.quad	.LVL108
	.quad	.LFE59
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST48:
	.quad	.LVL105
	.quad	.LVL108
	.word	0x1
	.byte	0x52
	.quad	.LVL108
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST49:
	.quad	.LVL105
	.quad	.LVL107
	.word	0x1
	.byte	0x51
	.quad	.LVL107
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST50:
	.quad	.LVL105
	.quad	.LVL108
	.word	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.quad	.LVL108
	.quad	.LFE59
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST51:
	.quad	.LVL105
	.quad	.LVL108
	.word	0x1
	.byte	0x52
	.quad	.LVL108
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST52:
	.quad	.LVL105
	.quad	.LVL107
	.word	0x1
	.byte	0x51
	.quad	.LVL107
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST53:
	.quad	.LVL106
	.quad	.LVL108
	.word	0x3
	.byte	0x72
	.sleb128 32
	.byte	0x9f
	.quad	.LVL108
	.quad	.LFE59
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST54:
	.quad	.LVL106
	.quad	.LVL108
	.word	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.quad	.LVL108
	.quad	.LFE59
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST55:
	.quad	.LVL106
	.quad	.LVL107
	.word	0x1
	.byte	0x51
	.quad	.LVL107
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST56:
	.quad	.LVL106
	.quad	.LVL108
	.word	0x3
	.byte	0x72
	.sleb128 32
	.byte	0x9f
	.quad	.LVL108
	.quad	.LFE59
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.quad	0
	.quad	0
.LLST57:
	.quad	.LVL106
	.quad	.LVL108
	.word	0x3
	.byte	0x72
	.sleb128 16
	.byte	0x9f
	.quad	.LVL108
	.quad	.LFE59
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.quad	0
	.quad	0
.LLST58:
	.quad	.LVL106
	.quad	.LVL107
	.word	0x1
	.byte	0x51
	.quad	.LVL107
	.quad	.LFE59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.quad	0
	.quad	0
.LLST59:
	.quad	.LVL109
	.quad	.LVL110
	.word	0x1
	.byte	0x52
	.quad	.LVL110
	.quad	.LVL120
	.word	0x1
	.byte	0x55
	.quad	.LVL120
	.quad	.LFE60
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST60:
	.quad	.LVL112
	.quad	.LVL113
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL113
	.quad	.LVL114
	.word	0x1
	.byte	0x5c
	.quad	.LVL114
	.quad	.LVL115
	.word	0x3
	.byte	0x7c
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL115
	.quad	.LVL116
	.word	0x1
	.byte	0x5c
	.quad	0
	.quad	0
.LLST61:
	.quad	.LVL111
	.quad	.LVL112
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL112
	.quad	.LVL117
	.word	0x1
	.byte	0x53
	.quad	.LVL117
	.quad	.LVL118
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL118
	.quad	.LVL119
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST62:
	.quad	.LVL122
	.quad	.LVL123-1
	.word	0x1
	.byte	0x61
	.quad	.LVL123-1
	.quad	.LFE62
	.word	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x9f
	.quad	0
	.quad	0
.LLST63:
	.quad	.LVL126
	.quad	.LVL127
	.word	0x1
	.byte	0x52
	.quad	.LVL127
	.quad	.LFE63
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST64:
	.quad	.LVL129
	.quad	.LVL139
	.word	0x1
	.byte	0x52
	.quad	.LVL139
	.quad	.LVL166
	.word	0x1
	.byte	0x53
	.quad	.LVL166
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST65:
	.quad	.LVL129
	.quad	.LVL139
	.word	0x1
	.byte	0x51
	.quad	.LVL139
	.quad	.LFE64
	.word	0x2
	.byte	0x91
	.sleb128 8
	.quad	0
	.quad	0
.LLST66:
	.quad	.LVL130
	.quad	.LVL139
	.word	0x1
	.byte	0x52
	.quad	.LVL139
	.quad	.LVL166
	.word	0x1
	.byte	0x53
	.quad	.LVL166
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST67:
	.quad	.LVL130
	.quad	.LVL139
	.word	0x1
	.byte	0x52
	.quad	.LVL139
	.quad	.LVL166
	.word	0x1
	.byte	0x53
	.quad	.LVL166
	.quad	.LFE64
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.quad	0
	.quad	0
.LLST68:
	.quad	.LVL133
	.quad	.LVL139
	.word	0x3
	.byte	0x72
	.sleb128 24
	.byte	0x9f
	.quad	.LVL139
	.quad	.LVL166
	.word	0x3
	.byte	0x73
	.sleb128 24
	.byte	0x9f
	.quad	.LVL166
	.quad	.LFE64
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x18
	.byte	0x9f
	.quad	0
	.quad	0
.LLST69:
	.quad	.LVL136
	.quad	.LVL139
	.word	0x3
	.byte	0x72
	.sleb128 48
	.byte	0x9f
	.quad	.LVL139
	.quad	.LVL166
	.word	0x3
	.byte	0x73
	.sleb128 48
	.byte	0x9f
	.quad	.LVL166
	.quad	.LFE64
	.word	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x23
	.uleb128 0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST70:
	.quad	.LVL138
	.quad	.LVL139
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL139
	.quad	.LVL165
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST71:
	.quad	.LVL140
	.quad	.LVL141
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL141
	.quad	.LVL163
	.word	0x1
	.byte	0x54
	.quad	0
	.quad	0
.LLST72:
	.quad	.LVL144
	.quad	.LVL161
	.word	0x3
	.byte	0x91
	.sleb128 -280
	.quad	0
	.quad	0
.LLST73:
	.quad	.LVL144
	.quad	.LVL148
	.word	0x1
	.byte	0x62
	.quad	0
	.quad	0
.LLST74:
	.quad	.LVL144
	.quad	.LVL161
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST75:
	.quad	.LVL145
	.quad	.LVL147
	.word	0x20
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL147
	.quad	.LVL150
	.word	0x23
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0x1e
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL150
	.quad	.LVL152
	.word	0x2a
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL152
	.quad	.LVL155
	.word	0x31
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x73
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL155
	.quad	.LVL157
	.word	0x35
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x73
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x73
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x73
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST76:
	.quad	.LVL146
	.quad	.LVL161
	.word	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST77:
	.quad	.LVL146
	.quad	.LVL147
	.word	0x20
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0x1e
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL147
	.quad	.LVL155
	.word	0x23
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0x1e
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL155
	.quad	.LVL157
	.word	0x27
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x73
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x13
	.uleb128 0x95
	.byte	0x1e
	.byte	0x73
	.sleb128 40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x73
	.sleb128 16
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x15
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST78:
	.quad	.LVL149
	.quad	.LVL150
	.word	0x26
	.byte	0xf5
	.uleb128 0x14
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1b
	.byte	0x91
	.sleb128 -280
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL150
	.quad	.LVL151
	.word	0x2d
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1b
	.uleb128 0x95
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1b
	.byte	0x91
	.sleb128 -280
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL151
	.quad	.LVL152
	.word	0x35
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0xf5
	.uleb128 0x16
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1b
	.byte	0x91
	.sleb128 -280
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL152
	.quad	.LVL153
	.word	0x3c
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x73
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x1a
	.uleb128 0x95
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1b
	.byte	0x91
	.sleb128 -280
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL153
	.quad	.LVL154
	.word	0x44
	.byte	0x73
	.sleb128 24
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x73
	.sleb128 64
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x73
	.sleb128 48
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x18
	.uleb128 0x95
	.byte	0x1c
	.byte	0x91
	.sleb128 -288
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x11
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x1c
	.byte	0xf5
	.uleb128 0x17
	.uleb128 0x95
	.byte	0x1b
	.byte	0x91
	.sleb128 -280
	.byte	0xf6
	.byte	0x8
	.uleb128 0x95
	.byte	0xf5
	.uleb128 0x19
	.uleb128 0x95
	.byte	0x1c
	.byte	0x1e
	.byte	0x9f
	.quad	.LVL154
	.quad	.LVL156
	.word	0x1
	.byte	0x64
	.quad	0
	.quad	0
.LLST79:
	.quad	.LVL142
	.quad	.LVL163
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+4523
	.sleb128 0
	.quad	0
	.quad	0
.LLST80:
	.quad	.LVL142
	.quad	.LVL163
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+4509
	.sleb128 0
	.quad	0
	.quad	0
.LLST81:
	.quad	.LVL142
	.quad	.LVL163
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+4509
	.sleb128 32
	.quad	0
	.quad	0
.LLST82:
	.quad	.LVL142
	.quad	.LVL163
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+4509
	.sleb128 16
	.quad	0
	.quad	0
.LLST84:
	.quad	.LVL171
	.quad	.LVL172-1
	.word	0x1
	.byte	0x50
	.quad	.LVL172-1
	.quad	.LVL195
	.word	0x1
	.byte	0x55
	.quad	.LVL196
	.quad	.LVL197
	.word	0x1
	.byte	0x50
	.quad	.LVL197
	.quad	.LFE65
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST85:
	.quad	.LVL176
	.quad	.LVL180
	.word	0x5
	.byte	0x93
	.uleb128 0x10
	.byte	0x67
	.byte	0x93
	.uleb128 0x8
	.quad	.LVL182
	.quad	.LVL194
	.word	0x5
	.byte	0x93
	.uleb128 0x10
	.byte	0x67
	.byte	0x93
	.uleb128 0x8
	.quad	0
	.quad	0
.LLST86:
	.quad	.LVL176
	.quad	.LVL194
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+5116
	.sleb128 0
	.quad	0
	.quad	0
.LLST87:
	.quad	.LVL176
	.quad	.LVL194
	.word	0x3
	.byte	0x91
	.sleb128 -328
	.quad	0
	.quad	0
.LLST92:
	.quad	.LVL177
	.quad	.LVL180
	.word	0x1
	.byte	0x67
	.quad	0
	.quad	0
.LLST93:
	.quad	.LVL177
	.quad	.LVL194
	.word	0x3
	.byte	0x91
	.sleb128 -328
	.quad	0
	.quad	0
.LLST94:
	.quad	.LVL182
	.quad	.LVL194
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+5116
	.sleb128 0
	.quad	0
	.quad	0
.LLST95:
	.quad	.LVL182
	.quad	.LVL194
	.word	0x4
	.byte	0x91
	.sleb128 -272
	.byte	0x9f
	.quad	0
	.quad	0
.LLST99:
	.quad	.LVL181
	.quad	.LVL194
	.word	0x6
	.byte	0xf2
	.secrel32	.Ldebug_info0+5116
	.sleb128 0
	.quad	0
	.quad	0
.LLST100:
	.quad	.LVL181
	.quad	.LVL194
	.word	0x4
	.byte	0x91
	.sleb128 -296
	.byte	0x9f
	.quad	0
	.quad	0
.LLST104:
	.quad	.LVL182
	.quad	.LVL194
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST105:
	.quad	.LVL182
	.quad	.LVL183
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST106:
	.quad	.LVL184
	.quad	.LVL194
	.word	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST107:
	.quad	.LVL186
	.quad	.LVL187
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL187
	.quad	.LVL188
	.word	0x1
	.byte	0x5e
	.quad	.LVL188
	.quad	.LVL189
	.word	0x3
	.byte	0x7e
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL189
	.quad	.LVL190
	.word	0x1
	.byte	0x5e
	.quad	0
	.quad	0
.LLST108:
	.quad	.LVL185
	.quad	.LVL186
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL186
	.quad	.LVL191
	.word	0x1
	.byte	0x53
	.quad	.LVL191
	.quad	.LVL192
	.word	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.quad	.LVL192
	.quad	.LVL193
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST109:
	.quad	.LVL200
	.quad	.LVL201-1
	.word	0x1
	.byte	0x50
	.quad	.LVL201-1
	.quad	.LVL202
	.word	0x1
	.byte	0x53
	.quad	.LVL203
	.quad	.LFE5027
	.word	0x1
	.byte	0x53
	.quad	0
	.quad	0
	.section	.debug_aranges,"dr"
	.long	0x3c
	.word	0x2
	.secrel32	.Ldebug_info0
	.byte	0x8
	.byte	0
	.word	0
	.word	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB5027
	.quad	.LFE5027-.LFB5027
	.quad	0
	.quad	0
	.section	.debug_ranges,"dr"
.Ldebug_ranges0:
	.quad	.LBB48
	.quad	.LBE48
	.quad	.LBB54
	.quad	.LBE54
	.quad	.LBB55
	.quad	.LBE55
	.quad	.LBB56
	.quad	.LBE56
	.quad	.LBB57
	.quad	.LBE57
	.quad	0
	.quad	0
	.quad	.LBB70
	.quad	.LBE70
	.quad	.LBB95
	.quad	.LBE95
	.quad	.LBB96
	.quad	.LBE96
	.quad	.LBB97
	.quad	.LBE97
	.quad	.LBB98
	.quad	.LBE98
	.quad	.LBB99
	.quad	.LBE99
	.quad	0
	.quad	0
	.quad	.LBB72
	.quad	.LBE72
	.quad	.LBB75
	.quad	.LBE75
	.quad	0
	.quad	0
	.quad	.LBB78
	.quad	.LBE78
	.quad	.LBB85
	.quad	.LBE85
	.quad	.LBB86
	.quad	.LBE86
	.quad	.LBB87
	.quad	.LBE87
	.quad	.LBB88
	.quad	.LBE88
	.quad	.LBB89
	.quad	.LBE89
	.quad	0
	.quad	0
	.quad	.LBB108
	.quad	.LBE108
	.quad	.LBB134
	.quad	.LBE134
	.quad	.LBB135
	.quad	.LBE135
	.quad	.LBB136
	.quad	.LBE136
	.quad	.LBB137
	.quad	.LBE137
	.quad	0
	.quad	0
	.quad	.LBB112
	.quad	.LBE112
	.quad	.LBB116
	.quad	.LBE116
	.quad	.LBB124
	.quad	.LBE124
	.quad	0
	.quad	0
	.quad	.LBB117
	.quad	.LBE117
	.quad	.LBB125
	.quad	.LBE125
	.quad	.LBB126
	.quad	.LBE126
	.quad	.LBB127
	.quad	.LBE127
	.quad	.LBB128
	.quad	.LBE128
	.quad	.LBB129
	.quad	.LBE129
	.quad	0
	.quad	0
	.quad	.LBB138
	.quad	.LBE138
	.quad	.LBB141
	.quad	.LBE141
	.quad	0
	.quad	0
	.quad	.LBB148
	.quad	.LBE148
	.quad	.LBB154
	.quad	.LBE154
	.quad	.LBB155
	.quad	.LBE155
	.quad	.LBB156
	.quad	.LBE156
	.quad	.LBB165
	.quad	.LBE165
	.quad	0
	.quad	0
	.quad	.LBB157
	.quad	.LBE157
	.quad	.LBB164
	.quad	.LBE164
	.quad	.LBB166
	.quad	.LBE166
	.quad	.LBB167
	.quad	.LBE167
	.quad	.LBB168
	.quad	.LBE168
	.quad	.LBB173
	.quad	.LBE173
	.quad	0
	.quad	0
	.quad	.LBB169
	.quad	.LBE169
	.quad	.LBB174
	.quad	.LBE174
	.quad	.LBB175
	.quad	.LBE175
	.quad	0
	.quad	0
	.quad	.LBB188
	.quad	.LBE188
	.quad	.LBB219
	.quad	.LBE219
	.quad	.LBB221
	.quad	.LBE221
	.quad	.LBB223
	.quad	.LBE223
	.quad	.LBB225
	.quad	.LBE225
	.quad	0
	.quad	0
	.quad	.LBB190
	.quad	.LBE190
	.quad	.LBB196
	.quad	.LBE196
	.quad	.LBB197
	.quad	.LBE197
	.quad	.LBB198
	.quad	.LBE198
	.quad	.LBB199
	.quad	.LBE199
	.quad	0
	.quad	0
	.quad	.LBB204
	.quad	.LBE204
	.quad	.LBB220
	.quad	.LBE220
	.quad	.LBB222
	.quad	.LBE222
	.quad	.LBB224
	.quad	.LBE224
	.quad	.LBB226
	.quad	.LBE226
	.quad	.LBB227
	.quad	.LBE227
	.quad	.LBB228
	.quad	.LBE228
	.quad	.LBB229
	.quad	.LBE229
	.quad	.LBB230
	.quad	.LBE230
	.quad	.LBB231
	.quad	.LBE231
	.quad	0
	.quad	0
	.quad	.LBB206
	.quad	.LBE206
	.quad	.LBB209
	.quad	.LBE209
	.quad	0
	.quad	0
	.quad	.LBB233
	.quad	.LBE233
	.quad	.LBB234
	.quad	.LBE234
	.quad	0
	.quad	0
	.quad	.LBB267
	.quad	.LBE267
	.quad	.LBB310
	.quad	.LBE310
	.quad	.LBB311
	.quad	.LBE311
	.quad	.LBB313
	.quad	.LBE313
	.quad	0
	.quad	0
	.quad	.LBB268
	.quad	.LBE268
	.quad	.LBB275
	.quad	.LBE275
	.quad	.LBB276
	.quad	.LBE276
	.quad	.LBB277
	.quad	.LBE277
	.quad	.LBB282
	.quad	.LBE282
	.quad	.LBB284
	.quad	.LBE284
	.quad	0
	.quad	0
	.quad	.LBB278
	.quad	.LBE278
	.quad	.LBB283
	.quad	.LBE283
	.quad	.LBB285
	.quad	.LBE285
	.quad	0
	.quad	0
	.quad	.LBB288
	.quad	.LBE288
	.quad	.LBB312
	.quad	.LBE312
	.quad	.LBB314
	.quad	.LBE314
	.quad	0
	.quad	0
	.quad	.LBB289
	.quad	.LBE289
	.quad	.LBB308
	.quad	.LBE308
	.quad	.LBB309
	.quad	.LBE309
	.quad	0
	.quad	0
	.quad	.LBB290
	.quad	.LBE290
	.quad	.LBB307
	.quad	.LBE307
	.quad	0
	.quad	0
	.quad	.LBB291
	.quad	.LBE291
	.quad	.LBB297
	.quad	.LBE297
	.quad	.LBB298
	.quad	.LBE298
	.quad	0
	.quad	0
	.quad	.LBB299
	.quad	.LBE299
	.quad	.LBB306
	.quad	.LBE306
	.quad	0
	.quad	0
	.quad	.LBB350
	.quad	.LBE350
	.quad	.LBB473
	.quad	.LBE473
	.quad	.LBB475
	.quad	.LBE475
	.quad	.LBB476
	.quad	.LBE476
	.quad	0
	.quad	0
	.quad	.LBB351
	.quad	.LBE351
	.quad	.LBB409
	.quad	.LBE409
	.quad	.LBB439
	.quad	.LBE439
	.quad	.LBB441
	.quad	.LBE441
	.quad	.LBB443
	.quad	.LBE443
	.quad	.LBB445
	.quad	.LBE445
	.quad	.LBB447
	.quad	.LBE447
	.quad	.LBB453
	.quad	.LBE453
	.quad	.LBB454
	.quad	.LBE454
	.quad	.LBB455
	.quad	.LBE455
	.quad	.LBB457
	.quad	.LBE457
	.quad	.LBB459
	.quad	.LBE459
	.quad	.LBB462
	.quad	.LBE462
	.quad	.LBB464
	.quad	.LBE464
	.quad	0
	.quad	0
	.quad	.LBB352
	.quad	.LBE352
	.quad	.LBB355
	.quad	.LBE355
	.quad	0
	.quad	0
	.quad	.LBB356
	.quad	.LBE356
	.quad	.LBB364
	.quad	.LBE364
	.quad	.LBB365
	.quad	.LBE365
	.quad	.LBB366
	.quad	.LBE366
	.quad	.LBB367
	.quad	.LBE367
	.quad	.LBB368
	.quad	.LBE368
	.quad	.LBB377
	.quad	.LBE377
	.quad	0
	.quad	0
	.quad	.LBB369
	.quad	.LBE369
	.quad	.LBB378
	.quad	.LBE378
	.quad	.LBB379
	.quad	.LBE379
	.quad	.LBB380
	.quad	.LBE380
	.quad	.LBB381
	.quad	.LBE381
	.quad	.LBB382
	.quad	.LBE382
	.quad	.LBB383
	.quad	.LBE383
	.quad	0
	.quad	0
	.quad	.LBB384
	.quad	.LBE384
	.quad	.LBB448
	.quad	.LBE448
	.quad	.LBB450
	.quad	.LBE450
	.quad	.LBB452
	.quad	.LBE452
	.quad	.LBB458
	.quad	.LBE458
	.quad	.LBB460
	.quad	.LBE460
	.quad	.LBB461
	.quad	.LBE461
	.quad	.LBB466
	.quad	.LBE466
	.quad	.LBB468
	.quad	.LBE468
	.quad	0
	.quad	0
	.quad	.LBB385
	.quad	.LBE385
	.quad	.LBB397
	.quad	.LBE397
	.quad	.LBB399
	.quad	.LBE399
	.quad	.LBB405
	.quad	.LBE405
	.quad	0
	.quad	0
	.quad	.LBB390
	.quad	.LBE390
	.quad	.LBB395
	.quad	.LBE395
	.quad	.LBB396
	.quad	.LBE396
	.quad	.LBB398
	.quad	.LBE398
	.quad	0
	.quad	0
	.quad	.LBB400
	.quad	.LBE400
	.quad	.LBB406
	.quad	.LBE406
	.quad	.LBB407
	.quad	.LBE407
	.quad	.LBB408
	.quad	.LBE408
	.quad	0
	.quad	0
	.quad	.LBB410
	.quad	.LBE410
	.quad	.LBB440
	.quad	.LBE440
	.quad	.LBB442
	.quad	.LBE442
	.quad	.LBB444
	.quad	.LBE444
	.quad	.LBB446
	.quad	.LBE446
	.quad	.LBB449
	.quad	.LBE449
	.quad	.LBB451
	.quad	.LBE451
	.quad	.LBB456
	.quad	.LBE456
	.quad	.LBB463
	.quad	.LBE463
	.quad	.LBB465
	.quad	.LBE465
	.quad	.LBB467
	.quad	.LBE467
	.quad	0
	.quad	0
	.quad	.LBB411
	.quad	.LBE411
	.quad	.LBB418
	.quad	.LBE418
	.quad	.LBB419
	.quad	.LBE419
	.quad	.LBB427
	.quad	.LBE427
	.quad	.LBB428
	.quad	.LBE428
	.quad	.LBB429
	.quad	.LBE429
	.quad	0
	.quad	0
	.quad	.LBB420
	.quad	.LBE420
	.quad	.LBB426
	.quad	.LBE426
	.quad	.LBB430
	.quad	.LBE430
	.quad	.LBB431
	.quad	.LBE431
	.quad	.LBB432
	.quad	.LBE432
	.quad	0
	.quad	0
	.quad	.LBB469
	.quad	.LBE469
	.quad	.LBB474
	.quad	.LBE474
	.quad	.LBB477
	.quad	.LBE477
	.quad	0
	.quad	0
	.quad	.LBB478
	.quad	.LBE478
	.quad	.LBB483
	.quad	.LBE483
	.quad	0
	.quad	0
	.quad	.LBB480
	.quad	.LBE480
	.quad	.LBB481
	.quad	.LBE481
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB5027
	.quad	.LFE5027
	.quad	0
	.quad	0
	.section	.debug_line,"dr"
.Ldebug_line0:
	.section	.debug_str,"dr"
.LASF0:
	.ascii "depthPixel\0"
.LASF1:
	.ascii "source\0"
	.ident	"GCC: (Rev3, Built by MSYS2 project) 5.2.0"
	.def	cos;	.scl	2;	.type	32;	.endef
	.def	sin;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	round;	.scl	2;	.type	32;	.endef
	.def	setbuf;	.scl	2;	.type	32;	.endef
	.def	calloc;	.scl	2;	.type	32;	.endef
