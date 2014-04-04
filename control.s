# /opt/pgi/linux86-64/12.8/bin/pgsmart -agg 0x62000020 -o control.s /tmp/pgccJw5PlwA-u2i.sm
# x1
	.file	"control.c"
	.version	"01.01"
## PGC 12.8 -opt 2
## PGC 04/04/2014  02:16:10
## pgcc control.c -S -fastsse -fast -Mvect=sse -Mscalarsse -Mcache_align -Mflushz -Mpre -Minline=force,add_norm,visc_force,wind_force -pg -c
## /opt/pgi/linux86-64/12.8/bin/pgc
## control.c -opt 2 -terse 1 -inform warn -x 119 0xa10000 -x 122 0x40 -x 123 0x1000
## -x 127 4 -x 127 17 -x 19 0x400000 -x 28 0x40000 -x 120 0x10000000 -x 70 0x8000
## -x 122 1 -x 125 0x20000 -quad -vect 56 -y 34 16 -x 34 0x8 -x 32 10485760
## -y 19 8 -y 35 0 -x 42 0x30 -x 39 0x40 -x 39 0x80 -x 34 0x400000 -x 149 1
## -x 150 1 -x 59 4 -x 59 4 -tp sandybridge -x 120 0x1000 -astype 0 -stdinc /opt/pgi/linux86-64/12.8/include:/usr/local/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/include
## -def unix -def __unix -def __unix__ -def linux -def __linux -def __linux__
## -def __NO_MATH_INLINES -def __x86_64 -def __x86_64__ -def __LONG_MAX__=9223372036854775807L
## -def __SIZE_TYPE__=unsigned long int -def __PTRDIFF_TYPE__=long int -def __THROW=
## -def __extension__= -def __amd_64__amd64__ -def __k8 -def __k8__ -def __SSE__
## -def __MMX__ -def __SSE2__ -def __SSE3__ -def __SSSE3__ -predicate #machine(x86_64) #lint(off) #system(posix) #cpu(x86_64)
## -cmdline +pgcc control.c -S -fastsse -fast -Mvect=sse -Mscalarsse -Mcache_align -Mflushz -Mpre -Minline=force,add_norm,visc_force,wind_force -pg -c
## -inlib /tmp/pgcclw5HpuwkbO6.ext -infunc force -infunc add_norm -infunc visc_force
## -infunc wind_force -x 14 32 -x 123 0x80000000 -x 123 4 -x 119 0x20 -def __pgnu_vsn=40407
## -alwaysinline /opt/pgi/linux86-64/12.8/lib/libintrinsics.il 4 -autoinl 10
## -x 168 100 -x 174 8000 -x 14 0x200000 -x 120 0x200000 -x 9 1 -x 42 0x14200000
## -x 72 0x1 -x 136 0x11 -x 80 0x800000 -quad -x 119 0x10000000 -x 129 0x40000000
## -x 129 2 -x 164 0x1000 -profile -x 119 2 -x 120 0x1000 -asm /tmp/pgccJw5PlwA-u2i.sm
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
	subq	$304, %rsp
	movq	%rbx, -264(%rbp)
	movq	%r12, -272(%rbp)
	movq	%r13, -280(%rbp)
	movq	%r14, -288(%rbp)
	movq	%r15, -296(%rbp)
	pushq	%rax
	pushq	%rax
	stmxcsr	(%rsp)
	popq	%rax
	orq	$32832, %rax
	pushq	%rax
	ldmxcsr	(%rsp)
	popq	%rax
	popq	%rax
	vzeroupper
	call	_mcount
..EN1:
##  lineno: 21
..LN2:
	cmpl	$1, %edi
	movl	$100, -12(%rbp)
	jle	.LB1132
##  lineno: 29
..LN3:
	movq	8(%rsi), %rdi
	vzeroupper
	call	atoi
	movl	%eax, -12(%rbp)
	.p2align	4,,3
.LB1132:
##  lineno: 31
..LN4:
	movl	$4096, %edi
	movl	$8, %esi
	movq	$4620693217682128896, %rax
	movq	%rax, P+16(%rip)
	movq	$0, P(%rip)
	movq	$0, P+8(%rip)
	vzeroupper
	call	calloc
	movl	$8, %esi
	movl	$16777216, %edi
	movq	%rax, r(%rip)
	vzeroupper
	call	calloc
	movl	$8, %esi
	movq	%rax, delta_r(%rip)
	movl	$4096, %edi
	vzeroupper
	call	calloc
	movq	%rax, mass(%rip)
	movl	$8, %esi
	movl	$4096, %edi
	vzeroupper
	call	calloc
	movl	$8, %esi
	movl	$12288, %edi
	movq	%rax, visc(%rip)
	vzeroupper
	call	calloc
	movl	$8, %esi
	movq	%rax, f(%rip)
	movl	$12288, %edi
	vzeroupper
	call	calloc
	movq	%rax, pos(%rip)
	movl	$8, %esi
	movl	$12288, %edi
	vzeroupper
	call	calloc
	movl	$8, %esi
	movl	$50331648, %edi
	movq	%rax, vel(%rip)
	vzeroupper
	call	calloc
	movl	$.S01143, %edi
	movq	pos(%rip), %rsi
	movq	f(%rip), %rdx
	movl	$32768, %ecx
	movq	%rax, delta_x(%rip)
	addq	%rcx, %rsi
	addq	%rcx, %rdx
	addq	vel(%rip), %rcx
	movq	%rsi, pos+8(%rip)
	movq	%rdx, f+8(%rip)
	movq	%rcx, vel+8(%rip)
	movl	$65536, %esi
	leaq	134217728(%rax), %rdx
	movq	%rdx, delta_x+8(%rip)
	movq	f(%rip), %rcx
	addq	$268435456, %rax
	movq	pos(%rip), %rdx
	addq	%rsi, %rcx
	movq	%rax, delta_x+16(%rip)
	addq	%rsi, %rdx
	movl	$0, collisions(%rip)
	addq	vel(%rip), %rsi
	movq	%rdx, pos+16(%rip)
	movq	%rsi, vel+16(%rip)
	movq	%rcx, f+16(%rip)
	movl	$.S01145, %esi
	vzeroupper
	call	fopen
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LB1365
	.p2align	4,,3
.LB1369:
##  lineno: 60
..LN5:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align	8
.LB1149:
	movq	%r13, %rdi
	movq	%rbx, %r9
	movl	$.S01153, %esi
	movq	pos+16(%rip), %rax
	subq	$32, %rsp
	addq	%r9, %rax
	movq	%rax, (%rsp)
	movq	vel(%rip), %rcx
	addq	%r9, %rcx
	movq	%rcx, 8(%rsp)
	movq	vel+8(%rip), %rdx
	addq	%r9, %rdx
	movq	%rdx, 16(%rsp)
	movq	vel+16(%rip), %rax
	addq	%r9, %rax
	movq	%rax, 24(%rsp)
	movq	pos(%rip), %r8
	movq	visc(%rip), %rcx
	movq	mass(%rip), %rdx
	addq	%r9, %r8
	addq	%r9, %rcx
	addq	%r9, %rdx
	xorl	%eax, %eax
	addq	pos+8(%rip), %r9
	vzeroupper
	call	__isoc99_fscanf
	addq	$8, %rbx
	addl	$1, %r12d
	addq	$32, %rsp
	cmpl	$4096, %r12d
	jl	.LB1149
##  lineno: 64
..LN6:
	movq	%r13, %rdi
	vzeroupper
	call	fclose
	movl	-12(%rbp), %r14d
	movl	$1, %r15d
	.p2align	4,,3
.LB1155:
##  lineno: 71
..LN7:
	xorl	%eax, %eax
	vzeroupper
	call	second
	vmovsd	%xmm0, -8(%rbp)
	movl	-12(%rbp), %edi
	vmovsd	.C01129(%rip), %xmm0
	vzeroupper
	call	evolve
	xorl	%eax, %eax
	vzeroupper
	call	second
	vsubsd	-8(%rbp), %xmm0, %xmm0
	movl	$.S01158, %edi
	movl	%r14d, %esi
	movl	$1, %eax
	vzeroupper
	call	printf
	movl	$.S01160, %edi
	xorl	%eax, %eax
	movl	collisions(%rip), %esi
	vzeroupper
	call	printf
	movl	$.S01162, %esi
	movl	%r14d, %edx
	xorl	%eax, %eax
	leaq	-256(%rbp), %rdi
	vzeroupper
	call	sprintf
	movl	$.S01164, %esi
	leaq	-256(%rbp), %rdi
	vzeroupper
	call	fopen
	movq	%rax, %r13
	testq	%rax, %rax
	je	.LB1366
	.p2align	4,,3
.LB1368:
##  lineno: 89
..LN8:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align	8
.LB1168:
	movq	%r13, %rdi
	movq	mass(%rip), %rcx
	movl	$.S01171, %esi
	vmovsd	(%rcx,%rbx), %xmm0
	movq	visc(%rip), %rdx
	movq	pos(%rip), %r8
	vmovsd	(%rdx,%rbx), %xmm1
	movq	pos+8(%rip), %rcx
	vmovsd	(%r8,%rbx), %xmm2
	movq	pos+16(%rip), %rdx
	vmovsd	(%rcx,%rbx), %xmm3
	movq	vel(%rip), %r8
	vmovsd	(%rdx,%rbx), %xmm4
	movq	vel+8(%rip), %rcx
	vmovsd	(%r8,%rbx), %xmm5
	movq	vel+16(%rip), %rdx
	vmovsd	(%rcx,%rbx), %xmm6
	movl	$8, %eax
	vmovsd	(%rdx,%rbx), %xmm7
	vzeroupper
	call	fprintf
	addq	$8, %rbx
	addl	$1, %r12d
	cmpl	$4096, %r12d
	jl	.LB1168
##  lineno: 94
..LN9:
	movq	%r13, %rdi
	vzeroupper
	call	fclose
	movl	-12(%rbp), %eax
	addl	$1, %r15d
	addl	%eax, %r14d
	cmpl	$2, %r15d
	jle	.LB1155
	jmp	.LB1367
	.p2align	4,,3
.LB1366:
##  lineno: 85
	leaq	-256(%rbp), %rdi
	vzeroupper
	call	perror
	movl	$1, %edi
	vzeroupper
	call	exit
	jmp	.LB1368
	.p2align	4,,3
.LB1365:
##  lineno: 56
	movl	$.S01143, %edi
	vzeroupper
	call	perror
	movl	$1, %edi
	vzeroupper
	call	exit
	jmp	.LB1369
	.p2align	4,,3
.LB1367:
##  lineno: 96
..LN10:
	movq	-296(%rbp), %r15
	movq	-288(%rbp), %r14
	movq	-280(%rbp), %r13
	movq	-272(%rbp), %r12
	movq	-264(%rbp), %rbx
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
..LN11:
..Lfb2:
..Dcfb1:
	pushq	%rbp
..Dcfi2:
	movq	%rsp, %rbp
..Dcfi3:
	subq	$32, %rsp
	vzeroupper
	call	_mcount
..EN2:
##  lineno: 112
..LN12:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	vzeroupper
	call	gettimeofday
	vcvtsi2sdq	-8(%rbp), %xmm0, %xmm0
	vcvtsi2sdq	-16(%rbp), %xmm2, %xmm2
	vmulsd	.C01181(%rip), %xmm0, %xmm1
	vaddsd	%xmm2, %xmm1, %xmm0
##  lineno: 114
..LN13:
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
.S01143:
## "input.dat"
	.byte	0x69,0x6e,0x70,0x75,0x74,0x2e,0x64,0x61,0x74,0x00
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
	.globl	exit
	.globl	perror
	.globl	fprintf
	.globl	sprintf
	.globl	printf
	.globl	evolve
	.globl	fclose
	.globl	__isoc99_fscanf
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
	.string	"/phys/linux/s1340401/Sem2/PP/MD/C2/7"
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
	.byte	0x31
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN6
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN7
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN8
	.byte	0x4
	.byte	0x1
	.byte	0x26
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN10
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN11
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN12
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN13
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
