	.file	"control.c"
	.version	"01.01"
## PGC 12.8 -opt 1
## PGC 04/03/2014  23:54:41
## pgcc control.c -S -c
## /opt/pgi/linux86-64/12.8/bin/pgc
## control.c -opt 1 -terse 1 -inform warn -x 119 0xa10000 -x 122 0x40 -x 123 0x1000
## -x 127 4 -x 127 17 -x 19 0x400000 -x 28 0x40000 -x 120 0x10000000 -x 70 0x8000
## -x 122 1 -x 125 0x20000 -quad -x 59 4 -x 59 4 -tp sandybridge -x 120 0x1000
## -astype 0 -stdinc /opt/pgi/linux86-64/12.8/include:/usr/local/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/include
## -def unix -def __unix -def __unix__ -def linux -def __linux -def __linux__
## -def __NO_MATH_INLINES -def __x86_64 -def __x86_64__ -def __LONG_MAX__=9223372036854775807L
## -def __SIZE_TYPE__=unsigned long int -def __PTRDIFF_TYPE__=long int -def __THROW=
## -def __extension__= -def __amd_64__amd64__ -def __k8 -def __k8__ -def __SSE__
## -def __MMX__ -def __SSE2__ -def __SSE3__ -def __SSSE3__ -predicate #machine(x86_64) #lint(off) #system(posix) #cpu(x86_64)
## -cmdline +pgcc control.c -S -c -x 123 0x80000000 -x 123 4 -x 2 0x400 -x 119 0x20
## -def __pgnu_vsn=40407 -alwaysinline /opt/pgi/linux86-64/12.8/lib/libintrinsics.il 4
## -x 120 0x200000 -asm control.s
	.text
..text.b:
	.section	.bss
..bss.b:
	.data
..data.b:
##  (main,control.c)
	.text
	.align	16
	.globl	main
main:
## PGI Target sandybridge-64
..LN1:
..Lfb1:
..Dcfb0:
	pushq	%rbp
..Dcfi0:
	movq	%rsp, %rbp
..Dcfi1:
	subq	$208, %rsp
	movq	%rbx, -168(%rbp)
	movq	%r12, -176(%rbp)
	movq	%r13, -184(%rbp)
	movq	%r14, -192(%rbp)
	movq	%r15, -200(%rbp)
	pushq	%rax
	pushq	%rax
	stmxcsr	(%rsp)
	popq	%rax
	orq	$64, %rax
	pushq	%rax
	ldmxcsr	(%rsp)
	popq	%rax
	popq	%rax
	movq	%rsi, -40(%rbp)
..EN1:
##  lineno: 21
..LN2:
	vmovsd	.C01129(%rip), %xmm0
	vmovsd	%xmm0, -32(%rbp)
	movl	$100, %ebx
	movl	$2, -44(%rbp)
	cmpl	$1, %edi
	jle	.LB1132
##  lineno: 29
..LN3:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	vzeroupper
	call	atoi
	movl	%eax, %ebx
	.p2align	4,,3
.LB1132:
##  lineno: 31
..LN4:
	movq	$0, P(%rip)
	movq	$0, P+8(%rip)
	movq	$4620693217682128896, %rax
	movq	%rax, P+16(%rip)
	movl	$4096, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, r(%rip)
	movl	$16777216, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, delta_r(%rip)
	movl	$4096, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, mass(%rip)
	movl	$4096, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, visc(%rip)
	movl	$12288, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, f(%rip)
	movl	$12288, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, pos(%rip)
	movl	$12288, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, vel(%rip)
	movl	$50331648, %edi
	movl	$8, %esi
	vzeroupper
	call	calloc
	movq	%rax, delta_x(%rip)
	movl	$1, %r12d
	.align	8
.LB1139:
##  lineno: 43
..LN5:
	cmpl	$3, %r12d
	jge	.LB1140
	movl	%r12d, %eax
	shll	$12, %eax
	cltq
	movq	f(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movslq	%r12d, %rdx
	movq	%rcx, f(,%rdx,8)
	movq	pos(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movq	%rcx, pos(,%rdx,8)
	movq	vel(%rip), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, vel(,%rdx,8)
	movl	%r12d, %eax
	shll	$24, %eax
	cltq
	movq	delta_x(%rip), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, delta_x(,%rdx,8)
	addl	$1, %r12d
	jmp	.LB1139
	.p2align	4,,3
.LB1140:
##  lineno: 48
..LN6:
	movl	$0, collisions(%rip)
	movl	$.S01143, %edi
	movl	$.S01145, %esi
	vzeroupper
	call	fopen
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LB1147
##  lineno: 56
..LN7:
	movl	$.S01143, %edi
	vzeroupper
	call	perror
	movl	$1, %edi
	vzeroupper
	call	exit
	.p2align	4,,3
.LB1147:
##  lineno: 60
..LN8:
	xorl	%r12d, %r12d
	.p2align	4,,3
.LB1149:
	cmpl	$4096, %r12d
	jge	.LB1151
##  lineno: 63
..LN9:
	subq	$32, %rsp
	movslq	%r12d, %rax
	movq	pos+16(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movq	%rcx, (%rsp)
	movq	vel(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movq	%rcx, 8(%rsp)
	movq	vel+8(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movq	%rcx, 16(%rsp)
	movq	vel+16(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movq	%rcx, 24(%rsp)
	movq	mass(%rip), %rcx
	leaq	(%rcx,%rax,8), %rdx
	movq	visc(%rip), %rcx
	leaq	(%rcx,%rax,8), %rcx
	movq	pos(%rip), %rsi
	leaq	(%rsi,%rax,8), %r8
	movq	pos+8(%rip), %rsi
	leaq	(%rsi,%rax,8), %r9
	xorl	%eax, %eax
	movq	%r13, %rdi
	movl	$.S01153, %esi
	vzeroupper
	call	__isoc99_fscanf
	addq	$32, %rsp
	addl	$1, %r12d
	jmp	.LB1149
	.p2align	4,,3
.LB1151:
##  lineno: 64
..LN10:
	movq	%r13, %rdi
	vzeroupper
	call	fclose
	movl	$1, %r13d
	.p2align	4,,3
.LB1155:
##  lineno: 71
..LN11:
	cmpl	-44(%rbp), %r13d
	jg	.LB1156
##  lineno: 72
..LN12:
	xorl	%eax, %eax
	vzeroupper
	call	second
	vmovsd	%xmm0, -24(%rbp)
	movl	%ebx, %edi
	vmovsd	-32(%rbp), %xmm0
	vzeroupper
	call	evolve
	xorl	%eax, %eax
	vzeroupper
	call	second
	movl	%ebx, %esi
	imull	%r13d, %esi
	vsubsd	-24(%rbp), %xmm0, %xmm0
	movl	$1, %eax
	movl	$.S01158, %edi
	vzeroupper
	call	printf
	xorl	%eax, %eax
	movl	$.S01160, %edi
	movl	collisions(%rip), %esi
	vzeroupper
	call	printf
	leaq	-160(%rbp), %rdi
	movl	%ebx, %edx
	imull	%r13d, %edx
	xorl	%eax, %eax
	movl	$.S01162, %esi
	vzeroupper
	call	sprintf
	leaq	-160(%rbp), %rdi
	movl	$.S01164, %esi
	vzeroupper
	call	fopen
	movq	%rax, %r14
	testq	%rax, %rax
	jne	.LB1166
##  lineno: 85
..LN13:
	leaq	-160(%rbp), %rdi
	vzeroupper
	call	perror
	movl	$1, %edi
	vzeroupper
	call	exit
	.p2align	4,,3
.LB1166:
##  lineno: 89
..LN14:
	xorl	%r12d, %r12d
	.p2align	4,,3
.LB1168:
	cmpl	$4096, %r12d
	jge	.LB1169
##  lineno: 93
..LN15:
	movslq	%r12d, %rcx
	movq	mass(%rip), %rdx
	movq	visc(%rip), %r8
	movq	pos(%rip), %r9
	movq	pos+8(%rip), %r10
	movq	pos+16(%rip), %r11
	movq	vel(%rip), %r15
	movq	%r15, -16(%rbp)
	movq	vel+8(%rip), %r15
	movq	%r15, -8(%rbp)
	movq	vel+16(%rip), %r15
	movl	$8, %eax
	movq	%r14, %rdi
	movl	$.S01171, %esi
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmovsd	(%r8,%rcx,8), %xmm1
	vmovsd	(%r9,%rcx,8), %xmm2
	vmovsd	(%r10,%rcx,8), %xmm3
	vmovsd	(%r11,%rcx,8), %xmm4
	movq	-16(%rbp), %rdx
	vmovsd	(%rdx,%rcx,8), %xmm5
	movq	-8(%rbp), %rdx
	vmovsd	(%rdx,%rcx,8), %xmm6
	vmovsd	(%r15,%rcx,8), %xmm7
	vzeroupper
	call	fprintf
	addl	$1, %r12d
	jmp	.LB1168
	.p2align	4,,3
.LB1169:
##  lineno: 94
..LN16:
	movq	%r14, %rdi
	vzeroupper
	call	fclose
	addl	$1, %r13d
	jmp	.LB1155
	.p2align	4,,3
.LB1156:
##  lineno: 96
..LN17:
	movq	-200(%rbp), %r15
	movq	-192(%rbp), %r14
	movq	-184(%rbp), %r13
	movq	-176(%rbp), %r12
	movq	-168(%rbp), %rbx
	leave
	vzeroupper
	ret
	.type	main,@function
	.size	main,.-main
..Dcfe0:
..Lfe1:
__mainEND:
	.text
	.align	16
	.globl	second
second:
## PGI Target sandybridge-64
..LN18:
..Lfb2:
..Dcfb1:
	pushq	%rbp
..Dcfi2:
	movq	%rsp, %rbp
..Dcfi3:
	subq	$32, %rsp
..EN2:
##  lineno: 112
..LN19:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	vzeroupper
	call	gettimeofday
	vcvtsi2sdq	-8(%rbp), %xmm0, %xmm0
	vmulsd	.C01181(%rip), %xmm0, %xmm0
	vcvtsi2sdq	-16(%rbp), %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
##  lineno: 114
..LN20:
	leave
	vzeroupper
	ret
	.type	second,@function
	.size	second,.-second
..Dcfe1:
..Lfe2:
__secondEND:
	.text
	.align	8
.C01181:
	.long	0xa0b5ed8d, 0x3eb0c6f7	##  9.99999999999999955E-7
.C01129:
	.long	0x47ae147b, 0x3f947ae1	##  2.00000000000000004E-2
	.section	.rodata
	.align	1
.S01145:
## "r"
	.byte	0x72,0x00
.S01143:
## "input.dat"
	.byte	0x69,0x6e,0x70,0x75,0x74,0x2e,0x64,0x61,0x74,0x00
.S01153:
## "%16le%16le%16le%16le%16le%16le%16le%16le\n"
	.byte	0x25,0x31,0x36,0x6c,0x65,0x25,0x31,0x36,0x6c,0x65,0x25
	.byte	0x31,0x36,0x6c,0x65,0x25,0x31,0x36,0x6c,0x65,0x25,0x31
	.byte	0x36,0x6c,0x65,0x25,0x31,0x36,0x6c,0x65,0x25,0x31,0x36
	.byte	0x6c,0x65,0x25,0x31,0x36,0x6c,0x65,0x0a,0x00
.S01158:
## "%d timesteps took %f seconds\n"
	.byte	0x25,0x64,0x20,0x74,0x69,0x6d,0x65,0x73,0x74,0x65,0x70
	.byte	0x73,0x20,0x74,0x6f,0x6f,0x6b,0x20,0x25,0x66,0x20,0x73
	.byte	0x65,0x63,0x6f,0x6e,0x64,0x73,0x0a,0x00
.S01160:
## "collisions %d\n"
	.byte	0x63,0x6f,0x6c,0x6c,0x69,0x73,0x69,0x6f,0x6e,0x73,0x20
	.byte	0x25,0x64,0x0a,0x00
.S01162:
## "output.dat%03d"
	.byte	0x6f,0x75,0x74,0x70,0x75,0x74,0x2e,0x64,0x61,0x74,0x25
	.byte	0x30,0x33,0x64,0x00
.S01164:
## "w"
	.byte	0x77,0x00
.S01171:
## "%16.8E%16.8E%16.8E%16.8E%16.8E%16.8E%16.8E%16.8E\n"
	.byte	0x25,0x31,0x36,0x2e,0x38,0x45,0x25,0x31,0x36,0x2e,0x38
	.byte	0x45,0x25,0x31,0x36,0x2e,0x38,0x45,0x25,0x31,0x36,0x2e
	.byte	0x38,0x45,0x25,0x31,0x36,0x2e,0x38,0x45,0x25,0x31,0x36
	.byte	0x2e,0x38,0x45,0x25,0x31,0x36,0x2e,0x38,0x45,0x25,0x31
	.byte	0x36,0x2e,0x38,0x45,0x0a,0x00
	.data
	.comm	pos,24,32
	.comm	vel,24,32
	.comm	f,24,32
	.comm	visc,8,16
	.comm	mass,8,16
	.comm	delta_x,24,32
	.comm	r,8,16
	.comm	delta_r,8,16
	.comm	P,24,32
	.comm	collisions,4,16
	.globl	gettimeofday
	.globl	fprintf
	.globl	sprintf
	.globl	printf
	.globl	evolve
	.globl	fclose
	.globl	__isoc99_fscanf
	.globl	exit
	.globl	perror
	.globl	fopen
	.globl	calloc
	.globl	atoi
	.text
..text.e:
	.section	.bss
..bss.e:
	.data
..data.e:
	.section	.debug_info
..D1b:
	.4byte	..D1e-..D1b-4
	.2byte	0x2
	.4byte	..labbrv.b
	.byte	0x8
	.byte	0x1
	.string	"control.c"
	.string	"/phys/linux/s1340401/Sem2/PP/MD/C2/1"
	.string	"PGC 12.8-0"
	.byte	0x2
	.quad	..text.b
	.quad	..text.e
	.4byte	..line.b
	.byte	0x4
	.byte	0x1
	.string	"main"
	.byte	0x1
	.byte	0xf
	.quad	..Lfb1
	.quad	..Lfe1
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0x1
	.string	"second"
	.byte	0x1
	.byte	0x64
	.quad	..Lfb2
	.quad	..Lfe2
	.byte	0x1
	.byte	0x56
	.byte	0x0
..D1e:
	.section	.debug_abbrev
..labbrv.b:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.byte	0x1b
	.byte	0x8
	.byte	0x25
	.byte	0x8
	.byte	0x13
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.byte	0,0
	.byte	0x4
	.byte	0x2e
	.byte	0x0
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0,0
	.byte	0x5
	.byte	0x2e
	.byte	0x0
	.byte	0x3f
	.byte	0xc
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0,0
	.byte	0
	.section	.debug_line
..line.b:
	.4byte	..line.e-..line.b-4
	.2byte	0x2
	.4byte	..linp.e-..linp.b
..linp.b:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0,0x1,0x1,0x1,0x1,0x0,0x0,0x0,0x1
	.string	"."
	.byte	0x0
	.string	"control.c"
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
..linp.e:
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..text.b
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN1
	.byte	0x4
	.byte	0x1
	.byte	0x22
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN2
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN3
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN4
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN5
	.byte	0x4
	.byte	0x1
	.byte	0x20
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN6
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN7
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN8
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN10
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN11
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN12
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN13
	.byte	0x4
	.byte	0x1
	.byte	0x21
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN14
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN15
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN16
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN17
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN18
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN20
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..text.e
	.byte	0x0
	.byte	0x1
	.byte	0x1
..line.e:
	.section	.debug_frame
..Dciem0:
	.4byte	..Dciee0-..Dcieb0
..Dcieb0:
	.4byte	0xffffffff
	.byte	0x1
	.byte	0x0
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align	8
..Dciee0:
..Dfdes0:
	.4byte	..Dfdee0-..Dfdeb0
..Dfdeb0:
	.4byte	..Dciem0
	.quad	..Dcfb0
	.quad	..Dcfe0-..Dcfb0
	.byte	0x4
	.4byte	..Dcfi0-..Dcfb0
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi1-..Dcfi0
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee0:
..Dfdes2:
	.4byte	..Dfdee2-..Dfdeb2
..Dfdeb2:
	.4byte	..Dciem0
	.quad	..Dcfb1
	.quad	..Dcfe1-..Dcfb1
	.byte	0x4
	.4byte	..Dcfi2-..Dcfb1
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi3-..Dcfi2
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee2:
	.section	.eh_frame,"a",@progbits
..Dciem1:
	.4byte	..Dciee1-..Dcieb1
..Dcieb1:
	.4byte	0x0
	.byte	0x1
	.byte	0x0
	.byte	0x1
	.byte	0x78
	.byte	0x10
	.byte	0xc
	.byte	0x7
	.byte	0x8
	.byte	0x90
	.byte	0x1
	.align	8
..Dciee1:
..Dfdes1:
	.4byte	..Dfdee1-..Dfdeb1
..Dfdeb1:
	.4byte	..Dfdeb1-..Dciem1
	.quad	..Dcfb0
	.quad	..Dcfe0-..Dcfb0
	.byte	0x4
	.4byte	..Dcfi0-..Dcfb0
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi1-..Dcfi0
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee1:
..Dfdes3:
	.4byte	..Dfdee3-..Dfdeb3
..Dfdeb3:
	.4byte	..Dfdeb3-..Dciem1
	.quad	..Dcfb1
	.quad	..Dcfe1-..Dcfb1
	.byte	0x4
	.4byte	..Dcfi2-..Dcfb1
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi3-..Dcfi2
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee3:
	.ident	"PGC 12.8-0"
