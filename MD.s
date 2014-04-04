# /opt/pgi/linux86-64/12.8/bin/pgsmart -agg 0x62000020 -o MD.s /tmp/pgccJr5PtnH-qsF.sm
# x1
	.file	"MD.c"
	.version	"01.01"
## PGC 12.8 -opt 2
## PGC 04/04/2014  02:16:10
## pgcc MD.c -S -fastsse -fast -Mvect=sse -Mscalarsse -Mcache_align -Mflushz -Mpre -Minline=force,add_norm,visc_force,wind_force -pg -c
## /opt/pgi/linux86-64/12.8/bin/pgc
## MD.c -opt 2 -terse 1 -inform warn -x 119 0xa10000 -x 122 0x40 -x 123 0x1000
## -x 127 4 -x 127 17 -x 19 0x400000 -x 28 0x40000 -x 120 0x10000000 -x 70 0x8000
## -x 122 1 -x 125 0x20000 -quad -vect 56 -y 34 16 -x 34 0x8 -x 32 10485760
## -y 19 8 -y 35 0 -x 42 0x30 -x 39 0x40 -x 39 0x80 -x 34 0x400000 -x 149 1
## -x 150 1 -x 59 4 -x 59 4 -tp sandybridge -x 120 0x1000 -astype 0 -stdinc /opt/pgi/linux86-64/12.8/include:/usr/local/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/include
## -def unix -def __unix -def __unix__ -def linux -def __linux -def __linux__
## -def __NO_MATH_INLINES -def __x86_64 -def __x86_64__ -def __LONG_MAX__=9223372036854775807L
## -def __SIZE_TYPE__=unsigned long int -def __PTRDIFF_TYPE__=long int -def __THROW=
## -def __extension__= -def __amd_64__amd64__ -def __k8 -def __k8__ -def __SSE__
## -def __MMX__ -def __SSE2__ -def __SSE3__ -def __SSSE3__ -predicate #machine(x86_64) #lint(off) #system(posix) #cpu(x86_64)
## -cmdline +pgcc MD.c -S -fastsse -fast -Mvect=sse -Mscalarsse -Mcache_align -Mflushz -Mpre -Minline=force,add_norm,visc_force,wind_force -pg -c
## -inlib /tmp/pgcclr5HxASkf6-.ext -infunc force -infunc add_norm -infunc visc_force
## -infunc wind_force -x 14 32 -x 123 0x80000000 -x 123 4 -x 119 0x20 -def __pgnu_vsn=40407
## -alwaysinline /opt/pgi/linux86-64/12.8/lib/libintrinsics.il 4 -autoinl 10
## -x 168 100 -x 174 8000 -x 14 0x200000 -x 120 0x200000 -x 9 1 -x 42 0x14200000
## -x 72 0x1 -x 136 0x11 -x 80 0x800000 -quad -x 119 0x10000000 -x 129 0x40000000
## -x 129 2 -x 164 0x1000 -profile -x 119 2 -x 120 0x1000 -asm /tmp/pgccJr5PtnH-qsF.sm
	.text
..text.b:
	.section	.bss
..bss.b:
	.data
..data.b:
##  (evolve,MD.c)
	.text
	.align	16
	.globl	evolve
evolve:
## PGI Target sandybridge-64
..LN1:
..Lfb1:
..Dcfb0:
	pushq	%rbp
..Dcfi0:
	movq	%rsp, %rbp
..Dcfi1:
	subq	$128, %rsp
	movq	%rbx, -88(%rbp)
	movq	%r12, -96(%rbp)
	movq	%r13, -104(%rbp)
	movq	%r14, -112(%rbp)
	movq	%r15, -120(%rbp)
	vzeroupper
	call	_mcount
	movl	%edi, -60(%rbp)
	vmovsd	%xmm0, -8(%rbp)
..EN1:
##  lineno: 40
..LN2:
	cmpl	$0, -60(%rbp)
	movl	$1, -64(%rbp)
	jle	.LB1189
	.p2align	4,,3
.LB1188:
	movl	$.S01191, %edi
	xorl	%eax, %eax
	movl	-64(%rbp), %esi
	vzeroupper
	call	printf
	movl	$.S01194, %edi
	xorl	%eax, %eax
	movl	collisions(%rip), %esi
	vzeroupper
	call	printf
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
	.align	8
.LB1196:
##  lineno: 45
..LN3:
	movq	f(%rbx), %rsi
	movq	visc(%rip), %rdx
	movq	vel(%rbx), %rcx
	movl	$4096, %edi
	vzeroupper
	call	visc_force
	addq	$8, %rbx
	addl	$1, %r12d
	cmpl	$3, %r12d
	jl	.LB1196
##  lineno: 47
..LN4:
	movl	$f, %esi
	movq	visc(%rip), %rdx
	movl	$pos, %ecx
	movl	$P, %r8d
	movl	$4096, %edi
	vzeroupper
	call	wind_force
	movl	$4096, %esi
	movq	r(%rip), %rdi
	vzeroupper
	call	__c_mzero8
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align	8
.LB1203:
##  lineno: 54
..LN5:
	movq	r(%rip), %rsi
	movq	pos(%r12), %rdx
	movl	$4096, %edi
	vzeroupper
	call	add_norm
	addq	$8, %r12
	addl	$1, %ebx
	cmpl	$3, %ebx
	jl	.LB1203
##  lineno: 56
..LN6:
	xorl	%ecx, %ecx
	movl	$4096, %eax
	jmp	.LB1480
##  lineno: 57
..LN7:
	movl	r(%rip), %eax
	testl	$31, %eax
	je	.LB1494
	movq	r(%rip), %rax
	.align	8
.LB1495:
	vsqrtsd	(%rcx), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rcx)
	movl	%eax, %eax
	testl	$31, %eax
	jne	.LB1495
	.p2align	4,,3
.LB1494:
	movslq	%ecx, %rax
	movq	r(%rip), %rcx
	leaq	(%rcx,%rax,8), %rdx
	.align	8
.LB1500:
	vmovapd	(%rcx), %ymm0
	prefetchnta	256(%rcx)
	prefetchnta	320(%rcx)
	subl	$16, %eax
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%xmm2, (%rcx)
	vextractf128	$1, %ymm2, 16(%rcx)
	vmovapd	32(%rcx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	testl	%eax, %eax
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%xmm2, 32(%rcx)
	vextractf128	$1, %ymm2, 48(%rcx)
	vmovapd	64(%rcx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%xmm2, 64(%rcx)
	vextractf128	$1, %ymm2, 80(%rcx)
	vmovapd	96(%rcx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%xmm2, 96(%rcx)
	vextractf128	$1, %ymm2, 112(%rcx)
	jg	.LB1500
	addl	$15, %eax
	je	.LB1501
	movslq	%ecx, %rax
	movq	r(%rip), %rcx
	leaq	(%rcx,%rax,8), %rdx
	.align	8
.LB1422:
	vsqrtsd	(%rcx), %xmm0, %xmm0
	subl	$1, %eax
	vmulsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rcx)
	testl	%eax, %eax
	jg	.LB1422
	.p2align	4,,3
.LB1501:
	.p2align	4,,3
.LB1479:
	xorl	%r14d, %r14d
	xorl	%r15d, %r15d
	.p2align	4,,3
.LB1210:
##  lineno: 61
..LN8:
	movq	mass(%rip), %rax
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	vmovsd	(%rax,%r15), %xmm0
	movq	%r15, %r13
	vmulsd	.C01214(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, -48(%rbp)
	.align	8
.LB1215:
##  lineno: 63
..LN9:
	vmovsd	-48(%rbp), %xmm0
	movq	pos(%rbx), %rax
	movq	r(%rip), %rcx
	vmovsd	(%rax,%r13), %xmm1
	vmovsd	(%rcx,%r13), %xmm2
	vzeroupper
	call	force
	movq	f(%rbx), %rax
	addl	$1, %r12d
	vmovsd	(%rax,%r13), %xmm1
	addq	$8, %rbx
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r13)
	cmpl	$3, %r12d
	jl	.LB1215
##  lineno: 66
..LN10:
	addl	$1, %r14d
	addq	$8, %r15
	cmpl	$4096, %r14d
	jl	.LB1210
##  lineno: 68
..LN11:
	movq	pos(%rip), %rax
	movq	pos+8(%rip), %rcx
	movq	pos+16(%rip), %rdx
	addq	$32, %rax
	addq	$32, %rcx
	addq	$32, %rdx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	movl	$0, -76(%rbp)
	movl	$4095, %r14d
	movl	$4095, %r13d
	movq	%rax, -40(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%rdx, -48(%rbp)
	.p2align	4,,3
.LB1449:
##  lineno: 71
..LN12:
	movl	%r13d, %edx
	movl	-76(%rbp), %r8d
	movl	%r8d, %eax
	addl	%r14d, %eax
	movl	%r8d, -56(%rbp)
	cmpl	$4095, %r12d
	cmovgel	%r8d, %eax
	movl	%eax, -76(%rbp)
	xorl	%eax, %eax
	testl	%edx, %edx
	jle	.LB1455
	cmpl	$4, %edx
	movl	%edx, %ecx
	jl	.LB1566
##  lineno: 72
..LN13:
	movl	%edx, %eax
	movslq	%r8d, %r8
	movq	delta_x+16(%rip), %r10
	addq	$3, %r8
	movq	pos+16(%rip), %rbx
	movq	pos+8(%rip), %r11
	movq	delta_x(%rip), %rcx
	movq	-40(%rbp), %rsi
	sarl	$1, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	sarl	$2, %eax
	movl	%eax, %r9d
	shll	$2, %eax
	subl	%eax, %edx
	movl	%eax, -24(%rbp)
	movl	%edx, -72(%rbp)
	movq	delta_x+8(%rip), %rax
	leaq	(%rax,%r8,8), %rdx
	leaq	(%rcx,%r8,8), %rdi
	leaq	(%r10,%r8,8), %rax
	movq	%r15, %r10
	movq	-32(%rbp), %rcx
	movq	-48(%rbp), %r8
	addq	%r10, %r11
	addq	%r10, %rbx
	addq	pos(%rip), %r10
	.align	8
.LB1454:
	vmovsd	(%r10), %xmm0
	subl	$1, %r9d
	vsubsd	-24(%rsi), %xmm0, %xmm1
	vmovsd	%xmm1, -24(%rdi)
	vmovsd	(%r11), %xmm0
	vsubsd	-24(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, -24(%rdx)
	vmovsd	(%rbx), %xmm0
	vsubsd	-24(%r8), %xmm0, %xmm1
	vmovsd	%xmm1, -24(%rax)
	vmovsd	(%r10), %xmm0
	vsubsd	-16(%rsi), %xmm0, %xmm1
	vmovsd	%xmm1, -16(%rdi)
	vmovsd	(%r11), %xmm0
	vsubsd	-16(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, -16(%rdx)
	vmovsd	(%rbx), %xmm0
	vsubsd	-16(%r8), %xmm0, %xmm1
	vmovsd	%xmm1, -16(%rax)
	vmovsd	(%r10), %xmm0
	vsubsd	-8(%rsi), %xmm0, %xmm1
	vmovsd	%xmm1, -8(%rdi)
	vmovsd	(%r11), %xmm0
	vsubsd	-8(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, -8(%rdx)
	vmovsd	(%rbx), %xmm0
	vsubsd	-8(%r8), %xmm0, %xmm1
	vmovsd	%xmm1, -8(%rax)
	vmovsd	(%r10), %xmm0
	vsubsd	(%rsi), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdi)
	vmovsd	(%r11), %xmm0
	vsubsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdx)
	vmovsd	(%rbx), %xmm0
	vsubsd	(%r8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rax)
	addq	$32, %rdi
	addq	$32, %r8
	addq	$32, %rdx
	addq	$32, %rcx
	addq	$32, %rsi
	addq	$32, %rax
	testl	%r9d, %r9d
	jg	.LB1454
	movl	-72(%rbp), %ecx
	movl	-24(%rbp), %eax
	.p2align	4,,3
.LB1566:
	testl	%ecx, %ecx
	je	.LB1567
	cmpl	$1, %ecx
	je	.LB1568
	cmpl	$2, %ecx
	je	.LB1569
	movl	%eax, %edx
	movq	pos(%rip), %rcx
	movl	-56(%rbp), %esi
	addl	%eax, %esi
	movq	delta_x(%rip), %rdi
	movq	delta_x+8(%rip), %r8
	movslq	%esi, %rsi
	vmovsd	(%rcx,%r15), %xmm0
	addl	%r12d, %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdi,%rsi,8)
	movq	pos+8(%rip), %rcx
	vmovsd	(%rcx,%r15), %xmm0
	addl	$1, %eax
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%r8,%rsi,8)
	movq	pos+16(%rip), %rdi
	vmovsd	(%rdi,%r15), %xmm0
	vsubsd	(%rdi,%rdx,8), %xmm0, %xmm1
	movq	delta_x+16(%rip), %rcx
	vmovsd	%xmm1, (%rcx,%rsi,8)
	.p2align	4,,3
.LB1569:
	movl	%eax, %edx
	movq	pos(%rip), %rcx
	movl	-56(%rbp), %esi
	addl	%eax, %esi
	movq	delta_x(%rip), %rdi
	movq	delta_x+8(%rip), %r8
	movslq	%esi, %rsi
	vmovsd	(%rcx,%r15), %xmm0
	addl	%r12d, %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdi,%rsi,8)
	movq	pos+8(%rip), %rcx
	vmovsd	(%rcx,%r15), %xmm0
	addl	$1, %eax
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%r8,%rsi,8)
	movq	pos+16(%rip), %rdi
	vmovsd	(%rdi,%r15), %xmm0
	vsubsd	(%rdi,%rdx,8), %xmm0, %xmm1
	movq	delta_x+16(%rip), %rcx
	vmovsd	%xmm1, (%rcx,%rsi,8)
	.p2align	4,,3
.LB1568:
	movl	%eax, %edx
	movq	pos(%rip), %rcx
	movq	delta_x(%rip), %rsi
	addl	-56(%rbp), %eax
	movq	delta_x+8(%rip), %rdi
	vmovsd	(%rcx,%r15), %xmm0
	cltq
	addl	%r12d, %edx
	movslq	%edx, %rdx
	addq	$1, %rdx
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rsi,%rax,8)
	movq	pos+8(%rip), %rcx
	movq	pos+16(%rip), %rsi
	vmovsd	(%rcx,%r15), %xmm0
	vsubsd	(%rcx,%rdx,8), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdi,%rax,8)
	vmovsd	(%rsi,%r15), %xmm0
	vsubsd	(%rsi,%rdx,8), %xmm0, %xmm1
	movq	delta_x+16(%rip), %rcx
	vmovsd	%xmm1, (%rcx,%rax,8)
	.p2align	4,,3
.LB1567:
	.p2align	4,,3
.LB1455:
	addl	$1, %r12d
	subl	$1, %r14d
	subl	$1, %r13d
	addq	$8, %r15
	addq	$8, -40(%rbp)
	addq	$8, -32(%rbp)
	addq	$8, -48(%rbp)
	cmpl	$4096, %r12d
	jl	.LB1449
##  lineno: 78
..LN14:
	movq	delta_r(%rip), %rdi
	movl	$8386560, %esi
	vzeroupper
	call	__c_mzero8
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	.align	8
.LB1231:
##  lineno: 84
..LN15:
	movq	delta_r(%rip), %rsi
	movq	delta_x(%r12), %rdx
	movl	$8386560, %edi
	vzeroupper
	call	add_norm
	addq	$8, %r12
	addl	$1, %ebx
	cmpl	$3, %ebx
	jl	.LB1231
##  lineno: 86
..LN16:
	xorl	%ecx, %ecx
	movl	$8386560, %eax
	jmp	.LB1484
##  lineno: 87
..LN17:
	movl	delta_r(%rip), %eax
	testl	$31, %eax
	je	.LB1516
	movq	delta_r(%rip), %rax
	.align	8
.LB1517:
	vsqrtsd	(%rcx), %xmm0, %xmm0
	addq	$8, %rax
	vmulsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rcx)
	movl	%eax, %eax
	testl	$31, %eax
	jne	.LB1517
	.p2align	4,,3
.LB1516:
	movslq	%ecx, %rax
	movq	delta_r(%rip), %rcx
	leaq	(%rcx,%rax,8), %rdx
	.align	8
.LB1518:
	vmovapd	(%rcx), %ymm0
	prefetchnta	256(%rcx)
	prefetchnta	320(%rcx)
	subl	$16, %eax
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%xmm2, (%rcx)
	vextractf128	$1, %ymm2, 16(%rcx)
	vmovapd	32(%rcx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	testl	%eax, %eax
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%xmm2, 32(%rcx)
	vextractf128	$1, %ymm2, 48(%rcx)
	vmovapd	64(%rcx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%xmm2, 64(%rcx)
	vextractf128	$1, %ymm2, 80(%rcx)
	vmovapd	96(%rcx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%xmm2, 96(%rcx)
	vextractf128	$1, %ymm2, 112(%rcx)
	jg	.LB1518
	addl	$15, %eax
	je	.LB1519
	movslq	%ecx, %rax
	movq	delta_r(%rip), %rcx
	leaq	(%rcx,%rax,8), %rdx
	.align	8
.LB1460:
	vsqrtsd	(%rcx), %xmm0, %xmm0
	subl	$1, %eax
	vmulsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rcx)
	testl	%eax, %eax
	jg	.LB1460
	.p2align	4,,3
.LB1519:
	.p2align	4,,3
.LB1483:
	movl	$0, -76(%rbp)
	movl	$0, -68(%rbp)
	movl	$1, -72(%rbp)
	movq	$0, -24(%rbp)
	movq	$8, -16(%rbp)
	.p2align	4,,3
.LB1237:
##  lineno: 95
..LN18:
	movq	mass(%rip), %rax
	movq	-24(%rbp), %r15
	movl	-72(%rbp), %ecx
	vmovsd	(%rax,%r15), %xmm0
	cmpl	$4096, %ecx
	vaddsd	%xmm0, %xmm0, %xmm1
	vmovsd	%xmm1, -56(%rbp)
	movl	%ecx, -32(%rbp)
	jge	.LB1241
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	.p2align	4,,3
.LB1240:
##  lineno: 97
..LN19:
	vmovsd	-56(%rbp), %xmm0
	movq	mass(%rip), %rax
	movq	-40(%rbp), %r14
	vmulsd	(%rax,%r14), %xmm0, %xmm1
	movslq	-76(%rbp), %r13
	xorl	%r12d, %r12d
	shlq	$3, %r13
	xorl	%ebx, %ebx
	vmovsd	%xmm1, -48(%rbp)
	.align	8
.LB1243:
##  lineno: 99
..LN20:
	vmovsd	-48(%rbp), %xmm0
	movq	delta_x(%rbx), %rax
	movq	delta_r(%rip), %rcx
	vmovsd	(%rax,%r13), %xmm1
	vmovsd	(%rcx,%r13), %xmm2
	vzeroupper
	call	force
	movq	delta_r(%rip), %rax
	vmovsd	(%rax,%r13), %xmm2
	vucomisd	.C00098(%rip), %xmm2
	vmovapd	%xmm0, %xmm1
	jb	.LB1246
##  lineno: 103
..LN21:
	movq	f(%rbx), %rax
	vmovsd	(%rax,%r15), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm2
	vmovsd	%xmm2, (%rax,%r15)
	vaddsd	(%rax,%r14), %xmm0, %xmm0
	vmovsd	%xmm0, (%rax,%r14)
	jmp	.LB1248
	.p2align	4,,3
.LB1246:
##  lineno: 106
..LN22:
	movq	f(%rbx), %rax
	addl	$1, collisions(%rip)
	vaddsd	(%rax,%r15), %xmm1, %xmm0
	vmovsd	%xmm0, (%rax,%r15)
	vmovsd	(%rax,%r14), %xmm2
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rax,%r14)
	.p2align	4,,3
.LB1248:
##  lineno: 110
..LN23:
	addl	$1, %r12d
	addq	$8, %rbx
	cmpl	$3, %r12d
	jl	.LB1243
	addl	$1, -76(%rbp)
	addl	$1, -32(%rbp)
	addq	$8, -40(%rbp)
	cmpl	$4096, -32(%rbp)
	jl	.LB1240
	.p2align	4,,3
.LB1241:
##  lineno: 112
..LN24:
	addl	$1, -68(%rbp)
	addl	$1, -72(%rbp)
	addq	$8, -24(%rbp)
	addq	$8, -16(%rbp)
	cmpl	$4096, -68(%rbp)
	jl	.LB1237
##  lineno: 116
..LN25:
	vmovsd	-8(%rbp), %xmm0
	movq	vel(%rip), %rdi
	movq	vel+8(%rip), %rdx
	addq	$8, %rdi
	addq	$8, %rdx
	movq	vel+16(%rip), %r11
	addq	$8, %r11
	movq	pos(%rip), %r8
	movq	pos+8(%rip), %rsi
	addq	$8, %r8
	addq	$8, %rsi
	movq	pos+16(%rip), %rax
	addq	$8, %rax
	movl	$2048, %ecx
	movq	%r11, %r9
	movq	%rdi, %r12
	movq	%rdx, %rbx
	.align	8
.LB1465:
	vmulsd	-8(%rdi), %xmm0, %xmm1
	subl	$1, %ecx
	vaddsd	-8(%r8), %xmm1, %xmm2
	vmovsd	%xmm2, -8(%r8)
	vmulsd	-8(%rdx), %xmm0, %xmm1
	vaddsd	-8(%rsi), %xmm1, %xmm2
	vmovsd	%xmm2, -8(%rsi)
	vmulsd	-8(%r9), %xmm0, %xmm1
	vaddsd	-8(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -8(%rax)
	vmulsd	(%rdi), %xmm0, %xmm1
	vaddsd	(%r8), %xmm1, %xmm2
	vmovsd	%xmm2, (%r8)
	vmulsd	(%rdx), %xmm0, %xmm1
	vaddsd	(%rsi), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi)
	vmulsd	(%r9), %xmm0, %xmm1
	vaddsd	(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, (%rax)
	addq	$16, %r8
	addq	$16, %r9
	addq	$16, %rsi
	addq	$16, %rdx
	addq	$16, %rdi
	addq	$16, %rax
	testl	%ecx, %ecx
	jg	.LB1465
##  lineno: 123
..LN26:
	vmovsd	-8(%rbp), %xmm0
	movq	mass(%rip), %r10
	movq	f(%rip), %r8
	addq	$8, %r10
	addq	$8, %r8
	movq	f+8(%rip), %rdi
	addq	$8, %rdi
	movq	f+16(%rip), %rcx
	movl	$2048, %edx
	addq	$8, %rcx
	movq	%r12, %r9
	movq	%rbx, %rsi
	movq	%r11, %rax
	.align	8
.LB1470:
	vdivsd	-8(%r10), %xmm0, %xmm1
	subl	$1, %edx
	vmulsd	-8(%r8), %xmm1, %xmm2
	vaddsd	-8(%r9), %xmm2, %xmm3
	vmovsd	%xmm3, -8(%r9)
	vmulsd	-8(%rdi), %xmm1, %xmm2
	vaddsd	-8(%rsi), %xmm2, %xmm3
	vmovsd	%xmm3, -8(%rsi)
	vmulsd	-8(%rcx), %xmm1, %xmm2
	vaddsd	-8(%rax), %xmm2, %xmm3
	vmovsd	%xmm3, -8(%rax)
	vdivsd	(%r10), %xmm0, %xmm1
	vmulsd	(%r8), %xmm1, %xmm2
	vaddsd	(%r9), %xmm2, %xmm3
	vmovsd	%xmm3, (%r9)
	vmulsd	(%rdi), %xmm1, %xmm2
	vaddsd	(%rsi), %xmm2, %xmm3
	vmovsd	%xmm3, (%rsi)
	vmulsd	(%rcx), %xmm1, %xmm2
	addq	$16, %r9
	vaddsd	(%rax), %xmm2, %xmm3
	vmovsd	%xmm3, (%rax)
	addq	$16, %rsi
	addq	$16, %r10
	addq	$16, %rcx
	addq	$16, %rdi
	addq	$16, %r8
	addq	$16, %rax
	testl	%edx, %edx
	jg	.LB1470
##  lineno: 128
..LN27:
	addl	$1, -64(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jle	.LB1188
	jmp	.LB1189
	.p2align	4,,3
.LB1480:
##  lineno: 57
	movl	r(%rip), %edx
	testl	$31, %edx
	je	.LB1522
	movq	r(%rip), %rdx
	.align	8
.LB1523:
	vsqrtsd	(%rdx), %xmm0, %xmm0
	addl	$1, %ecx
	subl	$1, %eax
	vmulsd	(%rdx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdx)
	addq	$8, %rdx
	movl	%edx, %esi
	testl	$31, %esi
	jne	.LB1523
	.p2align	4,,3
.LB1522:
	subl	$15, %eax
	movslq	%ecx, %rdx
	movq	r(%rip), %rsi
	leaq	(%rsi,%rdx,8), %rdx
	.align	8
.LB1524:
	vmovapd	(%rdx), %ymm0
	prefetchnta	256(%rdx)
	prefetchnta	320(%rdx)
	addl	$16, %ecx
	subl	$16, %eax
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%ymm2, (%rdx)
	vmovapd	32(%rdx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%ymm2, 32(%rdx)
	vmovapd	64(%rdx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%ymm2, 64(%rdx)
	vmovapd	96(%rdx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm0, %ymm1, %ymm2
	vmovapd	%ymm2, 96(%rdx)
	addq	$128, %rdx
	testl	%eax, %eax
	jg	.LB1524
	addl	$15, %eax
	je	.LB1479
	movslq	%ecx, %rcx
	movq	r(%rip), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	.align	8
.LB1481:
	vsqrtsd	(%rcx), %xmm0, %xmm0
	subl	$1, %eax
	vmulsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rcx)
	addq	$8, %rcx
	testl	%eax, %eax
	jg	.LB1481
	jmp	.LB1479
	.p2align	4,,3
.LB1484:
##  lineno: 87
..LN28:
	movl	delta_r(%rip), %edx
	testl	$31, %edx
	je	.LB1527
	movq	delta_r(%rip), %rdx
	.align	8
.LB1528:
	vsqrtsd	(%rdx), %xmm0, %xmm0
	addl	$1, %ecx
	subl	$1, %eax
	vmulsd	(%rdx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rdx)
	addq	$8, %rdx
	movl	%edx, %esi
	testl	$31, %esi
	jne	.LB1528
	.p2align	4,,3
.LB1527:
	subl	$15, %eax
	movslq	%ecx, %rdx
	movq	delta_r(%rip), %rsi
	leaq	(%rsi,%rdx,8), %rdx
	.align	8
.LB1529:
	vmovapd	(%rdx), %ymm0
	prefetchnta	256(%rdx)
	prefetchnta	320(%rdx)
	addl	$16, %ecx
	subl	$16, %eax
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, (%rdx)
	vmovapd	32(%rdx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, 32(%rdx)
	vmovapd	64(%rdx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, 64(%rdx)
	vmovapd	96(%rdx), %ymm0
	vsqrtpd	%ymm0, %ymm1
	vmulpd	%ymm1, %ymm0, %ymm2
	vmovapd	%ymm2, 96(%rdx)
	addq	$128, %rdx
	testl	%eax, %eax
	jg	.LB1529
	addl	$15, %eax
	je	.LB1483
	movslq	%ecx, %rcx
	movq	delta_r(%rip), %rdx
	leaq	(%rdx,%rcx,8), %rcx
	.align	8
.LB1485:
	vsqrtsd	(%rcx), %xmm0, %xmm0
	subl	$1, %eax
	vmulsd	(%rcx), %xmm0, %xmm1
	vmovsd	%xmm1, (%rcx)
	addq	$8, %rcx
	testl	%eax, %eax
	jg	.LB1485
	jmp	.LB1483
	.p2align	4,,3
.LB1189:
##  lineno: 131
..LN29:
	movq	-120(%rbp), %r15
	movq	-112(%rbp), %r14
	movq	-104(%rbp), %r13
	movq	-96(%rbp), %r12
	movq	-88(%rbp), %rbx
	leave
	vzeroupper
	ret
	.type	evolve,@function
	.size	evolve,.-evolve
..Dcfe0:
..Lfe1:
__evolveEND:
	.text
	.align	8
.C01214:
	.long	0x0, 0x409f4000	##  2.00000000000000000E+3
.C00098:
	.long	0x0, 0x3ff00000	##  1.00000000000000000E+0
	.section	.rodata
	.align	1
.S01191:
## "timestep %d\n"
	.byte	0x74,0x69,0x6d,0x65,0x73,0x74,0x65,0x70,0x20,0x25,0x64
	.byte	0x0a,0x00
.S01194:
## "collisions %d\n"
	.byte	0x63,0x6f,0x6c,0x6c,0x69,0x73,0x69,0x6f,0x6e,0x73,0x20
	.byte	0x25,0x64,0x0a,0x00
	.globl	force
	.globl	add_norm
	.globl	__c_mzero8
	.globl	wind_force
	.globl	visc_force
	.globl	printf
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
	.string	"MD.c"
	.string	"/phys/linux/s1340401/Sem2/PP/MD/C2/7"
	.string	"PGC 12.8-0"
	.byte	0x2
	.quad	..text.b
	.quad	..text.e
	.4byte	..line.b
	.byte	0x3
	.byte	0x1
	.string	"evolve"
	.byte	0x1
	.byte	0x20
	.quad	..Lfb1
	.quad	..Lfe1
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
	.byte	0x3
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
	.string	"MD.c"
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
	.byte	0x33
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN2
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN3
	.byte	0x4
	.byte	0x1
	.byte	0x19
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
	.byte	0x1b
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN6
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN7
	.byte	0x4
	.byte	0x1
	.byte	0x15
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
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN10
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN11
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN12
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN13
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN14
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN15
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN16
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN17
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN18
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN19
	.byte	0x4
	.byte	0x1
	.byte	0x16
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
	.quad	..LN21
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN22
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN23
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN24
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN25
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN26
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN27
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN28
	.byte	0x4
	.byte	0x1
	.byte	0x6a
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN29
	.byte	0x4
	.byte	0x1
	.byte	0x40
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
	.ident	"PGC 12.8-0"
