	.file	"util.c"
	.version	"01.01"
## PGC 12.8 -opt 1
## PGC 04/03/2014  23:52:34
## pgcc util.c -S -c
## /opt/pgi/linux86-64/12.8/bin/pgc
## util.c -opt 1 -terse 1 -inform warn -x 119 0xa10000 -x 122 0x40 -x 123 0x1000
## -x 127 4 -x 127 17 -x 19 0x400000 -x 28 0x40000 -x 120 0x10000000 -x 70 0x8000
## -x 122 1 -x 125 0x20000 -quad -x 59 4 -x 59 4 -tp sandybridge -x 120 0x1000
## -astype 0 -stdinc /opt/pgi/linux86-64/12.8/include:/usr/local/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/include
## -def unix -def __unix -def __unix__ -def linux -def __linux -def __linux__
## -def __NO_MATH_INLINES -def __x86_64 -def __x86_64__ -def __LONG_MAX__=9223372036854775807L
## -def __SIZE_TYPE__=unsigned long int -def __PTRDIFF_TYPE__=long int -def __THROW=
## -def __extension__= -def __amd_64__amd64__ -def __k8 -def __k8__ -def __SSE__
## -def __MMX__ -def __SSE2__ -def __SSE3__ -def __SSSE3__ -predicate #machine(x86_64) #lint(off) #system(posix) #cpu(x86_64)
## -cmdline +pgcc util.c -S -c -x 123 0x80000000 -x 123 4 -x 2 0x400 -x 119 0x20
## -def __pgnu_vsn=40407 -alwaysinline /opt/pgi/linux86-64/12.8/lib/libintrinsics.il 4
## -x 120 0x200000 -asm util.s
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
..EN1:
##  lineno: 6
..LN2:
	xorl	%eax, %eax
	.align	8
.LB1146:
	cmpl	%edi, %eax
	jge	.LB1147
	movslq	%eax, %r8
	vmovsd	(%rcx,%r8,8), %xmm0
	vmulsd	(%rdx,%r8,8), %xmm0, %xmm0
	vmovsd	.C00096(%rip), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rsi,%r8,8)
	addl	$1, %eax
	jmp	.LB1146
	.p2align	4,,3
.LB1147:
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
..EN2:
##  lineno: 14
..LN5:
	xorl	%eax, %eax
	.p2align	4,,3
.LB1164:
	cmpl	%edi, %eax
	jge	.LB1165
	vmovsd	.C00096(%rip), %xmm0
	xorl	%r9d, %r9d
	.align	8
.LB1167:
##  lineno: 19
..LN6:
	cmpl	$3, %r9d
	jge	.LB1168
	movslq	%eax, %r10
	movslq	%r9d, %r11
	movq	(%rcx,%r11,8), %r11
	vmovsd	(%r11,%r10,8), %xmm1
	vmulsd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm0, %xmm1, %xmm0
	addl	$1, %r9d
	jmp	.LB1167
	.p2align	4,,3
.LB1168:
##  lineno: 21
..LN7:
	movslq	%eax, %r10
	movq	8(%rcx), %r11
	vmovsd	(%r11,%r10,8), %xmm1
	vmulsd	(%rdx,%r10,8), %xmm1, %xmm1
	vmulsd	16(%r8), %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
	movq	(%rsi), %r11
	vmovsd	(%r11,%r10,8), %xmm2
	vsubsd	%xmm1, %xmm2, %xmm1
	vmovsd	%xmm1, (%r11,%r10,8)
	vmovsd	(%rdx,%r10,8), %xmm1
	movq	16(%rcx), %r11
	vmulsd	(%r11,%r10,8), %xmm1, %xmm1
	vmulsd	(%r8), %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
	movq	8(%rsi), %r11
	vaddsd	(%r11,%r10,8), %xmm1, %xmm1
	vmovsd	%xmm1, (%r11,%r10,8)
	vmovsd	(%rdx,%r10,8), %xmm1
	movq	(%rcx), %r11
	vmulsd	(%r11,%r10,8), %xmm1, %xmm1
	vmulsd	8(%r8), %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
	movq	16(%rsi), %r11
	vmovsd	(%r11,%r10,8), %xmm2
	vsubsd	%xmm1, %xmm2, %xmm1
	vmovsd	%xmm1, (%r11,%r10,8)
	addl	$1, %eax
	jmp	.LB1164
	.p2align	4,,3
.LB1165:
##  lineno: 25
..LN8:
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
..LN9:
..Lfb3:
..Dcfb2:
	pushq	%rbp
..Dcfi4:
	movq	%rsp, %rbp
..Dcfi5:
..EN3:
##  lineno: 30
..LN10:
	xorl	%eax, %eax
	.align	8
.LB1182:
	cmpl	%edi, %eax
	jge	.LB1183
	movslq	%eax, %rcx
	vmovsd	(%rdx,%rcx,8), %xmm0
	vmulsd	%xmm0, %xmm0, %xmm0
	vaddsd	(%rsi,%rcx,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rsi,%rcx,8)
	addl	$1, %eax
	jmp	.LB1182
	.p2align	4,,3
.LB1183:
##  lineno: 32
..LN11:
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
..LN12:
..Lfb4:
..Dcfb3:
	pushq	%rbp
..Dcfi6:
	movq	%rsp, %rbp
..Dcfi7:
..EN4:
##  lineno: 36
..LN13:
	vmulsd	%xmm1, %xmm0, %xmm0
	vdivsd	%xmm2, %xmm0, %xmm0
##  lineno: 37
..LN14:
	popq	%rbp
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
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN7
	.byte	0x4
	.byte	0x1
	.byte	0x16
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
	.byte	0x16
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
