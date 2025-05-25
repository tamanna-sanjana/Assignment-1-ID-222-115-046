	.file	"Multiplication.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "Enter you Id number: \0"
LC2:
	.ascii "%f\0"
LC3:
	.ascii "Product = %.2f\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 32
	call	___main
	fld	DWORD PTR LC0
	fstp	DWORD PTR [esp+28]
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	lea	eax, [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_scanf
	fld	DWORD PTR [esp+20]
	fmul	DWORD PTR [esp+28]
	fstp	DWORD PTR [esp+24]
	fld	DWORD PTR [esp+24]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1100480512
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
