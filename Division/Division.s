	.file	"Division.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC1:
	.ascii "Enter the first number: \0"
LC2:
	.ascii "%f\0"
	.align 4
LC4:
	.ascii "Error: Division by zero is not allowed.\0"
LC5:
	.ascii "Result: %.2f / %.2f = %.2f\12\0"
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
	sub	esp, 48
	call	___main
	fld	DWORD PTR LC0
	fstp	DWORD PTR [esp+44]
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_printf
	lea	eax, [esp+36]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_scanf
	fld	DWORD PTR [esp+44]
	fldz
	fucompp
	fnstsw	ax
	sahf
	jp	L2
	fld	DWORD PTR [esp+44]
	fldz
	fucompp
	fnstsw	ax
	sahf
	jne	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC4
	call	_puts
	mov	eax, 1
	jmp	L5
L2:
	fld	DWORD PTR [esp+36]
	fdiv	DWORD PTR [esp+44]
	fstp	DWORD PTR [esp+40]
	fld	DWORD PTR [esp+40]
	fld	DWORD PTR [esp+44]
	fld	DWORD PTR [esp+36]
	fxch	st(2)
	fstp	QWORD PTR [esp+20]
	fstp	QWORD PTR [esp+12]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC5
	call	_printf
	mov	eax, 0
L5:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC0:
	.long	1073741824
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
