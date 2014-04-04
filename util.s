# /opt/pgi/linux86-64/12.8/bin/pgsmart -agg 0x62000020 -o util.s /tmp/pgccJA5PZss-GjW.sm
	.file	"util.c"
	.version	"01.01"
## PGC 12.8 -opt 2
## PGC 04/04/2014  02:16:10
## pgcc util.c -S -fastsse -fast -Mvect=sse -Mscalarsse -Mcache_align -Mflushz -Mpre -Minline=force,add_norm,visc_force,wind_force -pg -c
## /opt/pgi/linux86-64/12.8/bin/pgc
## util.c -opt 2 -terse 1 -inform warn -x 119 0xa10000 -x 122 0x40 -x 123 0x1000
## -x 127 4 -x 127 17 -x 19 0x400000 -x 28 0x40000 -x 120 0x10000000 -x 70 0x8000
## -x 122 1 -x 125 0x20000 -quad -vect 56 -y 34 16 -x 34 0x8 -x 32 10485760
## -y 19 8 -y 35 0 -x 42 0x30 -x 39 0x40 -x 39 0x80 -x 34 0x400000 -x 149 1
## -x 150 1 -x 59 4 -x 59 4 -tp sandybridge -x 120 0x1000 -astype 0 -stdinc /opt/pgi/linux86-64/12.8/include:/usr/local/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/include
## -def unix -def __unix -def __unix__ -def linux -def __linux -def __linux__
## -def __NO_MATH_INLINES -def __x86_64 -def __x86_64__ -def __LONG_MAX__=9223372036854775807L
## -def __SIZE_TYPE__=unsigned long int -def __PTRDIFF_TYPE__=long int -def __THROW=
## -def __extension__= -def __amd_64__amd64__ -def __k8 -def __k8__ -def __SSE__
## -def __MMX__ -def __SSE2__ -def __SSE3__ -def __SSSE3__ -predicate #machine(x86_64) #lint(off) #system(posix) #cpu(x86_64)
## -cmdline +pgcc util.c -S -fastsse -fast -Mvect=sse -Mscalarsse -Mcache_align -Mflushz -Mpre -Minline=force,add_norm,visc_force,wind_force -pg -c
## -inlib /tmp/pgcclA5H3tok1kI.ext -infunc force -infunc add_norm -infunc visc_force
## -infunc wind_force -x 14 32 -x 123 0x80000000 -x 123 4 -x 119 0x20 -def __pgnu_vsn=40407
## -alwaysinline /opt/pgi/linux86-64/12.8/lib/libintrinsics.il 4 -autoinl 10
## -x 168 100 -x 174 8000 -x 14 0x200000 -x 120 0x200000 -x 9 1 -x 42 0x14200000
## -x 72 0x1 -x 136 0x11 -x 80 0x800000 -quad -x 119 0x10000000 -x 129 0x40000000
## -x 129 2 -x 164 0x1000 -profile -x 119 2 -x 120 0x1000 -asm /tmp/pgccJA5PZss-GjW.sm
	.text
..text.b:
	.section	.bss
..bss.b:
	.data
..data.b:
##  (visc_force,util.c)
	.text
	.align	16
	.globl	visc_force
visc_force:
## PGI Target sandybridge-64
..LN1:
..Lfb1:
..Dcfb0:
	pushq	%rbp
..Dcfi0:
	movq	%rsp, %rbp
..Dcfi1:
	vzeroupper
	.p2align	4,,1
	call	_mcount
..EN1:
##  lineno: 6
..LN2:
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LB1276
	cmpl	$8, %edi
	movl	%edi, %r8d
	jl	.LB1291
	movl	%edi, %r10d
	leaq	56(%rsi), %r8
	sarl	$2, %r10d
	leaq	56(%rcx), %rax
	shrl	$29, %r10d
	addl	%edi, %r10d
	sarl	$3, %r10d
	movl	%r10d, %r9d
	shll	$3, %r10d
	subl	%r10d, %edi
	movl	%edi, %r11d
	leaq	56(%rdx), %rdi
	.align	8
.LB1275:
	vmovsd	-56(%rax), %xmm0
	prefetchnta	8(%rax)
	vmovsd	.C00096(%rip), %xmm2
	subl	$1, %r9d
	vmulsd	-56(%rdi), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, -56(%r8)
	vmovsd	-48(%rdi), %xmm1
	vmulsd	-48(%rax), %xmm1, %xmm0
	vsubsd	%xmm0, %xmm2, %xmm3
	vmovsd	%xmm3, -48(%r8)
	vmovsd	-40(%rdi), %xmm0
	vmulsd	-40(%rax), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm3, -40(%r8)
	vmovsd	-32(%rax), %xmm0
	vmulsd	-32(%rdi), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm3, -32(%r8)
	vmovsd	-24(%rax), %xmm0
	vmulsd	-24(%rdi), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm3, -24(%r8)
	vmovsd	-16(%rax), %xmm0
	vmulsd	-16(%rdi), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm3, -16(%r8)
	vmovsd	-8(%rax), %xmm0
	vmulsd	-8(%rdi), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm3, -8(%r8)
	vmovsd	(%rax), %xmm0
	vmulsd	(%rdi), %xmm0, %xmm1
	addq	$64, %rax
	addq	$64, %rdi
	vsubsd	%xmm1, %xmm2, %xmm3
	vmovsd	%xmm3, (%r8)
	addq	$64, %r8
	testl	%r9d, %r9d
	jg	.LB1275
	movl	%r11d, %r8d
	movl	%r10d, %eax
	.p2align	4,,3
.LB1291:
	testl	%r8d, %r8d
	je	.LB1292
	cmpl	$1, %r8d
	je	.LB1293
	cmpl	$2, %r8d
	je	.LB1294
	cmpl	$3, %r8d
	je	.LB1295
	cmpl	$4, %r8d
	je	.LB1296
	cmpl	$5, %r8d
	je	.LB1297
	cmpl	$6, %r8d
	je	.LB1299
	vmovsd	.C00096(%rip), %xmm2
	movslq	%eax, %rdi
	vmovsd	(%rcx,%rdi,8), %xmm0
	addl	$1, %eax
	vmulsd	(%rdx,%rdi,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	.p2align	4,,3
.LB1299:
	vmovsd	.C00096(%rip), %xmm2
	movslq	%eax, %rdi
	vmovsd	(%rcx,%rdi,8), %xmm0
	addl	$1, %eax
	vmulsd	(%rdx,%rdi,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	.p2align	4,,3
.LB1297:
	vmovsd	.C00096(%rip), %xmm2
	movslq	%eax, %rdi
	vmovsd	(%rcx,%rdi,8), %xmm0
	addl	$1, %eax
	vmulsd	(%rdx,%rdi,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	.p2align	4,,3
.LB1296:
	vmovsd	.C00096(%rip), %xmm2
	movslq	%eax, %rdi
	vmovsd	(%rcx,%rdi,8), %xmm0
	addl	$1, %eax
	vmulsd	(%rdx,%rdi,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	.p2align	4,,3
.LB1295:
	vmovsd	.C00096(%rip), %xmm2
	movslq	%eax, %rdi
	vmovsd	(%rcx,%rdi,8), %xmm0
	addl	$1, %eax
	vmulsd	(%rdx,%rdi,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	.p2align	4,,3
.LB1294:
	vmovsd	.C00096(%rip), %xmm2
	movslq	%eax, %rdi
	vmovsd	(%rcx,%rdi,8), %xmm0
	addl	$1, %eax
	vmulsd	(%rdx,%rdi,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rdi,8)
	.p2align	4,,3
.LB1293:
	vmovsd	.C00096(%rip), %xmm2
	cltq
	vmovsd	(%rcx,%rax,8), %xmm0
	vmulsd	(%rdx,%rax,8), %xmm0, %xmm1
	vsubsd	%xmm1, %xmm2, %xmm0
	vmovsd	%xmm0, (%rsi,%rax,8)
	.p2align	4,,3
.LB1292:
	.p2align	4,,3
.LB1276:
##  lineno: 8
..LN3:
	popq	%rbp
	vzeroupper
	ret
	.type	visc_force,@function
	.size	visc_force,.-visc_force
..Dcfe0:
..Lfe1:
__visc_forceEND:
	.text
	.align	16
	.globl	wind_force
wind_force:
## PGI Target sandybridge-64
..LN4:
..Lfb2:
..Dcfb1:
	pushq	%rbp
..Dcfi2:
	movq	%rsp, %rbp
..Dcfi3:
	vzeroupper
	.p2align	4,,1
	call	_mcount
..EN2:
##  lineno: 14
..LN5:
	testl	%edi, %edi
	jle	.LB1636
	movslq	%edi, %rdi
	xorl	%eax, %eax
	shlq	$3, %rdi
	.align	8
.LB1635:
	movq	(%rcx), %r9
	movq	8(%rcx), %r10
	movq	16(%rcx), %r11
	vmovsd	(%r9,%rax), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vmovsd	(%r10,%rax), %xmm0
	movq	(%rsi), %r10
	vmulsd	%xmm0, %xmm0, %xmm2
	vaddsd	%xmm2, %xmm1, %xmm3
	vmovsd	(%r11,%rax), %xmm1
	vmulsd	%xmm1, %xmm1, %xmm2
	vaddsd	%xmm2, %xmm3, %xmm4
	vmulsd	(%rdx,%rax), %xmm0, %xmm1
	vmulsd	16(%r8), %xmm1, %xmm2
	vmovsd	(%r10,%rax), %xmm1
	vdivsd	%xmm4, %xmm2, %xmm0
	vsubsd	%xmm0, %xmm1, %xmm2
	vmovsd	%xmm2, (%r10,%rax)
	movq	8(%rsi), %r10
	vmovsd	(%r11,%rax), %xmm0
	vmulsd	(%rdx,%rax), %xmm0, %xmm1
	vmulsd	(%r8), %xmm1, %xmm2
	vdivsd	%xmm4, %xmm2, %xmm0
	vaddsd	(%r10,%rax), %xmm0, %xmm1
	vmovsd	%xmm1, (%r10,%rax)
	movq	16(%rsi), %r10
	vmovsd	(%rdx,%rax), %xmm0
	vmulsd	(%r9,%rax), %xmm0, %xmm1
	vmulsd	8(%r8), %xmm1, %xmm2
	vmovsd	(%r10,%rax), %xmm1
	vdivsd	%xmm4, %xmm2, %xmm0
	vsubsd	%xmm0, %xmm1, %xmm2
	vmovsd	%xmm2, (%r10,%rax)
	addq	$8, %rax
	cmpq	%rdi, %rax
	jl	.LB1635
	.p2align	4,,3
.LB1636:
##  lineno: 25
..LN6:
	popq	%rbp
	vzeroupper
	ret
	.type	wind_force,@function
	.size	wind_force,.-wind_force
..Dcfe1:
..Lfe2:
__wind_forceEND:
	.text
	.align	16
	.globl	add_norm
add_norm:
## PGI Target sandybridge-64
..LN7:
..Lfb3:
..Dcfb2:
	pushq	%rbp
..Dcfi4:
	movq	%rsp, %rbp
..Dcfi5:
	vzeroupper
	.p2align	4,,1
	call	_mcount
..EN3:
##  lineno: 30
..LN8:
	xorl	%eax, %eax
	testl	%edi, %edi
	jle	.LB1793
	cmpl	$8, %edi
	movl	%edi, %ecx
	jl	.LB1806
	movl	%edi, %r9d
	leaq	56(%rdx), %rcx
	sarl	$2, %r9d
	leaq	56(%rsi), %rax
	shrl	$29, %r9d
	addl	%edi, %r9d
	sarl	$3, %r9d
	movl	%r9d, %r8d
	shll	$3, %r9d
	subl	%r9d, %edi
	.align	8
.LB1792:
	vmovsd	-56(%rcx), %xmm0
	prefetchnta	8(%rax)
	subl	$1, %r8d
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-56(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -56(%rax)
	vmovsd	-48(%rcx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-48(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -48(%rax)
	vmovsd	-40(%rcx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-40(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -40(%rax)
	vmovsd	-32(%rcx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-32(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -32(%rax)
	vmovsd	-24(%rcx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-24(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -24(%rax)
	vmovsd	-16(%rcx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-16(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -16(%rax)
	vmovsd	-8(%rcx), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	-8(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, -8(%rax)
	vmovsd	(%rcx), %xmm0
	addq	$64, %rcx
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rax), %xmm1, %xmm2
	vmovsd	%xmm2, (%rax)
	addq	$64, %rax
	testl	%r8d, %r8d
	jg	.LB1792
	movl	%edi, %ecx
	movl	%r9d, %eax
	.p2align	4,,3
.LB1806:
	testl	%ecx, %ecx
	je	.LB1807
	cmpl	$1, %ecx
	je	.LB1808
	cmpl	$2, %ecx
	je	.LB1809
	cmpl	$3, %ecx
	je	.LB1810
	cmpl	$4, %ecx
	je	.LB1811
	cmpl	$5, %ecx
	je	.LB1812
	cmpl	$6, %ecx
	je	.LB1813
	movslq	%eax, %rcx
	addl	$1, %eax
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rcx,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rcx,8)
	.p2align	4,,3
.LB1813:
	movslq	%eax, %rcx
	addl	$1, %eax
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rcx,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rcx,8)
	.p2align	4,,3
.LB1812:
	movslq	%eax, %rcx
	addl	$1, %eax
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rcx,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rcx,8)
	.p2align	4,,3
.LB1811:
	movslq	%eax, %rcx
	addl	$1, %eax
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rcx,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rcx,8)
	.p2align	4,,3
.LB1810:
	movslq	%eax, %rcx
	addl	$1, %eax
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rcx,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rcx,8)
	.p2align	4,,3
.LB1809:
	movslq	%eax, %rcx
	addl	$1, %eax
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rcx,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rcx,8)
	.p2align	4,,3
.LB1808:
	cltq
	vmovsd	(%rdx,%rax,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm1
	vaddsd	(%rsi,%rax,8), %xmm1, %xmm2
	vmovsd	%xmm2, (%rsi,%rax,8)
	.p2align	4,,3
.LB1807:
	.p2align	4,,3
.LB1793:
##  lineno: 32
..LN9:
	popq	%rbp
	vzeroupper
	ret
	.type	add_norm,@function
	.size	add_norm,.-add_norm
..Dcfe2:
..Lfe3:
__add_normEND:
	.text
	.align	16
	.globl	force
force:
## PGI Target sandybridge-64
..LN10:
..Lfb4:
..Dcfb3:
	pushq	%rbp
..Dcfi6:
	movq	%rsp, %rbp
..Dcfi7:
	vzeroupper
	.p2align	4,,1
	call	_mcount
..EN4:
##  lineno: 36
..LN11:
..LN12:
	vmulsd	%xmm1, %xmm0, %xmm0
	popq	%rbp
	vdivsd	%xmm2, %xmm0, %xmm0
##  lineno: 37
	vzeroupper
	ret
	.type	force,@function
	.size	force,.-force
..Dcfe3:
..Lfe4:
__forceEND:
	.text
	.align	8
.C00096:
	.long	0x0, 0x0	##  0.00000000000000000E+0
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
	.string	"util.c"
	.string	"/phys/linux/s1340401/Sem2/PP/MD/C2/7"
	.string	"PGC 12.8-0"
	.byte	0x2
	.quad	..text.b
	.quad	..text.e
	.4byte	..line.b
	.byte	0x3
	.byte	0x1
	.string	"visc_force"
	.byte	0x1
	.byte	0x3
	.quad	..Lfb1
	.quad	..Lfe1
	.byte	0x1
	.byte	0x56
	.byte	0x4
	.byte	0x1
	.string	"wind_force"
	.byte	0x1
	.byte	0xa
	.quad	..Lfb2
	.quad	..Lfe2
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.byte	0x1
	.string	"add_norm"
	.byte	0x1
	.byte	0x1b
	.quad	..Lfb3
	.quad	..Lfe3
	.byte	0x1
	.byte	0x56
	.byte	0x6
	.byte	0x1
	.string	"force"
	.byte	0x1
	.byte	0x23
	.quad	..Lfb4
	.quad	..Lfe4
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
	.byte	0x6
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
	.string	"util.c"
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
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN2
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN3
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN4
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN5
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN6
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN7
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN8
	.byte	0x4
	.byte	0x1
	.byte	0x16
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
	.byte	0x15
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
..Dfdes4:
	.4byte	..Dfdee4-..Dfdeb4
..Dfdeb4:
	.4byte	..Dciem0
	.quad	..Dcfb2
	.quad	..Dcfe2-..Dcfb2
	.byte	0x4
	.4byte	..Dcfi4-..Dcfb2
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi5-..Dcfi4
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee4:
..Dfdes6:
	.4byte	..Dfdee6-..Dfdeb6
..Dfdeb6:
	.4byte	..Dciem0
	.quad	..Dcfb3
	.quad	..Dcfe3-..Dcfb3
	.byte	0x4
	.4byte	..Dcfi6-..Dcfb3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi7-..Dcfi6
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee6:
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
..Dfdes5:
	.4byte	..Dfdee5-..Dfdeb5
..Dfdeb5:
	.4byte	..Dfdeb5-..Dciem1
	.quad	..Dcfb2
	.quad	..Dcfe2-..Dcfb2
	.byte	0x4
	.4byte	..Dcfi4-..Dcfb2
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi5-..Dcfi4
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee5:
..Dfdes7:
	.4byte	..Dfdee7-..Dfdeb7
..Dfdeb7:
	.4byte	..Dfdeb7-..Dciem1
	.quad	..Dcfb3
	.quad	..Dcfe3-..Dcfb3
	.byte	0x4
	.4byte	..Dcfi6-..Dcfb3
	.byte	0xe
	.byte	0x10
	.byte	0x86
	.byte	0x2
	.byte	0x4
	.4byte	..Dcfi7-..Dcfi6
	.byte	0xd
	.byte	0x6
	.align	8
..Dfdee7:
	.ident	"PGC 12.8-0"
