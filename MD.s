	.file	"MD.c"
	.version	"01.01"
## PGC 12.8 -opt 1
## PGC 04/03/2014  23:54:41
## pgcc MD.c -S -c
## /opt/pgi/linux86-64/12.8/bin/pgc
## MD.c -opt 1 -terse 1 -inform warn -x 119 0xa10000 -x 122 0x40 -x 123 0x1000
## -x 127 4 -x 127 17 -x 19 0x400000 -x 28 0x40000 -x 120 0x10000000 -x 70 0x8000
## -x 122 1 -x 125 0x20000 -quad -x 59 4 -x 59 4 -tp sandybridge -x 120 0x1000
## -astype 0 -stdinc /opt/pgi/linux86-64/12.8/include:/usr/local/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/lib/gcc/x86_64-redhat-linux/4.4.7/include:/usr/include
## -def unix -def __unix -def __unix__ -def linux -def __linux -def __linux__
## -def __NO_MATH_INLINES -def __x86_64 -def __x86_64__ -def __LONG_MAX__=9223372036854775807L
## -def __SIZE_TYPE__=unsigned long int -def __PTRDIFF_TYPE__=long int -def __THROW=
## -def __extension__= -def __amd_64__amd64__ -def __k8 -def __k8__ -def __SSE__
## -def __MMX__ -def __SSE2__ -def __SSE3__ -def __SSSE3__ -predicate #machine(x86_64) #lint(off) #system(posix) #cpu(x86_64)
## -cmdline +pgcc MD.c -S -c -x 123 0x80000000 -x 123 4 -x 2 0x400 -x 119 0x20
## -def __pgnu_vsn=40407 -alwaysinline /opt/pgi/linux86-64/12.8/lib/libintrinsics.il 4
## -x 120 0x200000 -asm MD.s
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
	subq	$64, %rsp
	movq	%rbx, -24(%rbp)
	movq	%r12, -32(%rbp)
	movq	%r13, -40(%rbp)
	movq	%r14, -48(%rbp)
	movq	%r15, -56(%rbp)
	movl	%edi, -12(%rbp)
	vmovsd	%xmm0, -8(%rbp)
..EN1:
##  lineno: 39
..LN2:
	movl	$1, %ebx
	.p2align	4,,3
.LB1184:
	cmpl	-12(%rbp), %ebx
	jg	.LB1185
##  lineno: 40
..LN3:
	xorl	%eax, %eax
	movl	$.S01187, %edi
	movl	%ebx, %esi
	vzeroupper
	call	printf
	xorl	%eax, %eax
	movl	$.S01190, %edi
	movl	collisions(%rip), %esi
	vzeroupper
	call	printf
	xorl	%r12d, %r12d
	.p2align	4,,3
.LB1192:
##  lineno: 44
..LN4:
	cmpl	$3, %r12d
	jge	.LB1193
##  lineno: 45
..LN5:
	movslq	%r12d, %rax
	movl	$4096, %edi
	movq	f(,%rax,8), %rsi
	movq	visc(%rip), %rdx
	movq	vel(,%rax,8), %rcx
	vzeroupper
	call	visc_force
	addl	$1, %r12d
	jmp	.LB1192
	.p2align	4,,3
.LB1193:
##  lineno: 46
..LN6:
	movl	$4096, %edi
	movl	$f, %esi
	movq	visc(%rip), %rdx
	movl	$pos, %ecx
	movl	$P, %r8d
	vzeroupper
	call	wind_force
	xorl	%r13d, %r13d
	.align	8
.LB1196:
##  lineno: 50
..LN7:
	cmpl	$4096, %r13d
	jge	.LB1197
	movslq	%r13d, %rax
	movq	r(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
	addl	$1, %r13d
	jmp	.LB1196
	.p2align	4,,3
.LB1197:
##  lineno: 52
..LN8:
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1199:
##  lineno: 53
..LN9:
	cmpl	$3, %r14d
	jge	.LB1200
##  lineno: 54
..LN10:
	movslq	%r14d, %rax
	movl	$4096, %edi
	movq	r(%rip), %rsi
	movq	pos(,%rax,8), %rdx
	vzeroupper
	call	add_norm
	addl	$1, %r14d
	jmp	.LB1199
	.p2align	4,,3
.LB1200:
##  lineno: 55
..LN11:
	xorl	%r13d, %r13d
	.align	8
.LB1202:
##  lineno: 56
..LN12:
	cmpl	$4096, %r13d
	jge	.LB1203
	movslq	%r13d, %rax
	movq	r(%rip), %rcx
	vsqrtsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addl	$1, %r13d
	jmp	.LB1202
	.p2align	4,,3
.LB1203:
##  lineno: 58
..LN13:
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1205:
##  lineno: 60
..LN14:
	cmpl	$4096, %r14d
	jge	.LB1206
	xorl	%r15d, %r15d
	.p2align	4,,3
.LB1208:
##  lineno: 61
..LN15:
	cmpl	$3, %r15d
	jge	.LB1209
##  lineno: 63
..LN16:
	movslq	%r14d, %rax
	movq	mass(%rip), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	vmulsd	.C01211(%rip), %xmm0, %xmm0
	movslq	%r15d, %rcx
	movq	pos(,%rcx,8), %rcx
	movq	r(%rip), %rdx
	vmovsd	(%rcx,%rax,8), %xmm1
	vmovsd	(%rdx,%rax,8), %xmm2
	vzeroupper
	call	force
	movslq	%r14d, %rax
	movslq	%r15d, %rcx
	movq	f(,%rcx,8), %rcx
	vmovsd	(%rcx,%rax,8), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addl	$1, %r15d
	jmp	.LB1208
	.p2align	4,,3
.LB1209:
##  lineno: 64
..LN17:
	addl	$1, %r14d
	jmp	.LB1205
	.p2align	4,,3
.LB1206:
##  lineno: 65
..LN18:
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1212:
##  lineno: 68
..LN19:
	cmpl	$4096, %r14d
	jge	.LB1213
	leal	1(%r14), %r12d
	.p2align	4,,3
.LB1215:
##  lineno: 69
..LN20:
	cmpl	$4096, %r12d
	jge	.LB1216
	xorl	%r15d, %r15d
	.align	8
.LB1218:
##  lineno: 70
..LN21:
	cmpl	$3, %r15d
	jge	.LB1219
	movslq	%r14d, %rax
	movslq	%r15d, %rcx
	movq	pos(,%rcx,8), %rdx
	vmovsd	(%rdx,%rax,8), %xmm0
	movslq	%r12d, %rax
	vsubsd	(%rdx,%rax,8), %xmm0, %xmm0
	movq	delta_x(,%rcx,8), %rax
	movslq	%r13d, %rcx
	vmovsd	%xmm0, (%rax,%rcx,8)
	addl	$1, %r15d
	jmp	.LB1218
	.p2align	4,,3
.LB1219:
##  lineno: 72
..LN22:
	addl	$1, %r13d
	addl	$1, %r12d
	jmp	.LB1215
	.p2align	4,,3
.LB1216:
##  lineno: 74
..LN23:
	addl	$1, %r14d
	jmp	.LB1212
	.p2align	4,,3
.LB1213:
##  lineno: 75
..LN24:
	xorl	%r13d, %r13d
	.align	8
.LB1221:
##  lineno: 78
..LN25:
	cmpl	$8386560, %r13d
	jge	.LB1223
	movslq	%r13d, %rax
	movq	delta_r(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
	addl	$1, %r13d
	jmp	.LB1221
	.p2align	4,,3
.LB1223:
##  lineno: 80
..LN26:
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1225:
##  lineno: 81
..LN27:
	cmpl	$3, %r14d
	jge	.LB1226
##  lineno: 82
..LN28:
	movslq	%r14d, %rax
	movl	$8386560, %edi
	movq	delta_r(%rip), %rsi
	movq	delta_x(,%rax,8), %rdx
	vzeroupper
	call	add_norm
	addl	$1, %r14d
	jmp	.LB1225
	.p2align	4,,3
.LB1226:
##  lineno: 83
..LN29:
	xorl	%r13d, %r13d
	.align	8
.LB1228:
##  lineno: 84
..LN30:
	cmpl	$8386560, %r13d
	jge	.LB1229
	movslq	%r13d, %rax
	movq	delta_r(%rip), %rcx
	vsqrtsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addl	$1, %r13d
	jmp	.LB1228
	.p2align	4,,3
.LB1229:
##  lineno: 86
..LN31:
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1231:
##  lineno: 92
..LN32:
	cmpl	$4096, %r14d
	jge	.LB1232
	leal	1(%r14), %r12d
	.p2align	4,,3
.LB1234:
##  lineno: 93
..LN33:
	cmpl	$4096, %r12d
	jge	.LB1235
	xorl	%r15d, %r15d
	.p2align	4,,3
.LB1237:
##  lineno: 94
..LN34:
	cmpl	$3, %r15d
	jge	.LB1238
	movslq	%r13d, %rax
	movq	delta_r(%rip), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vucomisd	.C00098(%rip), %xmm0
	jb	.LB1240
##  lineno: 98
..LN35:
	movslq	%r14d, %rax
	movq	mass(%rip), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	movslq	%r12d, %rax
	vmulsd	(%rcx,%rax,8), %xmm0, %xmm0
	movslq	%r13d, %rax
	movslq	%r15d, %rcx
	movq	delta_x(,%rcx,8), %rcx
	movq	delta_r(%rip), %rdx
	vmovsd	(%rcx,%rax,8), %xmm1
	vmovsd	(%rdx,%rax,8), %xmm2
	vzeroupper
	call	force
	movslq	%r14d, %rax
	movslq	%r15d, %rcx
	movq	f(,%rcx,8), %rdx
	vmovsd	(%rdx,%rax,8), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	movq	mass(%rip), %rdx
	vmovsd	(%rdx,%rax,8), %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	movslq	%r12d, %rax
	vmulsd	(%rdx,%rax,8), %xmm0, %xmm0
	movslq	%r13d, %rax
	movq	delta_x(,%rcx,8), %rcx
	movq	delta_r(%rip), %rdx
	vmovsd	(%rcx,%rax,8), %xmm1
	vmovsd	(%rdx,%rax,8), %xmm2
	vzeroupper
	call	force
	movslq	%r12d, %rax
	movslq	%r15d, %rcx
	movq	f(,%rcx,8), %rcx
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	jmp	.LB1242
	.p2align	4,,3
.LB1240:
##  lineno: 103
..LN36:
	movslq	%r14d, %rax
	movq	mass(%rip), %rcx
	vmovsd	(%rcx,%rax,8), %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	movslq	%r12d, %rax
	vmulsd	(%rcx,%rax,8), %xmm0, %xmm0
	movslq	%r13d, %rax
	movslq	%r15d, %rcx
	movq	delta_x(,%rcx,8), %rcx
	movq	delta_r(%rip), %rdx
	vmovsd	(%rcx,%rax,8), %xmm1
	vmovsd	(%rdx,%rax,8), %xmm2
	vzeroupper
	call	force
	movslq	%r14d, %rax
	movslq	%r15d, %rcx
	movq	f(,%rcx,8), %rdx
	vaddsd	(%rdx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	movq	mass(%rip), %rdx
	vmovsd	(%rdx,%rax,8), %xmm0
	vaddsd	%xmm0, %xmm0, %xmm0
	movslq	%r12d, %rax
	vmulsd	(%rdx,%rax,8), %xmm0, %xmm0
	movslq	%r13d, %rax
	movq	delta_x(,%rcx,8), %rcx
	movq	delta_r(%rip), %rdx
	vmovsd	(%rcx,%rax,8), %xmm1
	vmovsd	(%rdx,%rax,8), %xmm2
	vzeroupper
	call	force
	movslq	%r12d, %rax
	movslq	%r15d, %rcx
	movq	f(,%rcx,8), %rcx
	vmovsd	(%rcx,%rax,8), %xmm1
	vsubsd	%xmm0, %xmm1, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addl	$1, collisions(%rip)
	.p2align	4,,3
.LB1242:
##  lineno: 108
..LN37:
	addl	$1, %r15d
	jmp	.LB1237
	.p2align	4,,3
.LB1238:
	addl	$1, %r13d
	addl	$1, %r12d
	jmp	.LB1234
	.p2align	4,,3
.LB1235:
##  lineno: 110
..LN38:
	addl	$1, %r14d
	jmp	.LB1231
	.p2align	4,,3
.LB1232:
##  lineno: 111
..LN39:
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1244:
##  lineno: 114
..LN40:
	cmpl	$4096, %r14d
	jge	.LB1245
	xorl	%r12d, %r12d
	.align	8
.LB1247:
##  lineno: 115
..LN41:
	cmpl	$3, %r12d
	jge	.LB1248
	vmovsd	-8(%rbp), %xmm0
	movslq	%r14d, %rax
	movslq	%r12d, %rcx
	movq	vel(,%rcx,8), %rdx
	vmulsd	(%rdx,%rax,8), %xmm0, %xmm0
	movq	pos(,%rcx,8), %rcx
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addl	$1, %r12d
	jmp	.LB1247
	.p2align	4,,3
.LB1248:
##  lineno: 117
..LN42:
	addl	$1, %r14d
	jmp	.LB1244
	.p2align	4,,3
.LB1245:
##  lineno: 118
..LN43:
	xorl	%r14d, %r14d
	.p2align	4,,3
.LB1250:
##  lineno: 121
..LN44:
	cmpl	$4096, %r14d
	jge	.LB1251
	xorl	%r12d, %r12d
	.align	8
.LB1253:
##  lineno: 122
..LN45:
	cmpl	$3, %r12d
	jge	.LB1254
	movslq	%r14d, %rax
	movslq	%r12d, %rcx
	movq	f(,%rcx,8), %rdx
	vmovsd	(%rdx,%rax,8), %xmm0
	movq	mass(%rip), %rdx
	vdivsd	(%rdx,%rax,8), %xmm0, %xmm0
	vmulsd	-8(%rbp), %xmm0, %xmm0
	movq	vel(,%rcx,8), %rcx
	vaddsd	(%rcx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rcx,%rax,8)
	addl	$1, %r12d
	jmp	.LB1253
	.p2align	4,,3
.LB1254:
##  lineno: 124
..LN46:
	addl	$1, %r14d
	jmp	.LB1250
	.p2align	4,,3
.LB1251:
##  lineno: 125
..LN47:
	addl	$1, %ebx
	jmp	.LB1184
	.p2align	4,,3
.LB1185:
##  lineno: 128
..LN48:
	movq	-56(%rbp), %r15
	movq	-48(%rbp), %r14
	movq	-40(%rbp), %r13
	movq	-32(%rbp), %r12
	movq	-24(%rbp), %rbx
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
.C01211:
	.long	0x0, 0x408f4000	##  1.00000000000000000E+3
.C00098:
	.long	0x0, 0x3ff00000	##  1.00000000000000000E+0
	.section	.rodata
	.align	1
.S01187:
## "timestep %d\n"
	.byte	0x74,0x69,0x6d,0x65,0x73,0x74,0x65,0x70,0x20,0x25,0x64
	.byte	0x0a,0x00
.S01190:
## "collisions %d\n"
	.byte	0x63,0x6f,0x6c,0x6c,0x69,0x73,0x69,0x6f,0x6e,0x73,0x20
	.byte	0x25,0x64,0x0a,0x00
	.globl	force
	.globl	add_norm
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
	.string	"/phys/linux/s1340401/Sem2/PP/MD/C2/1"
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
	.byte	0x1b
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN3
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN4
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN5
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN6
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN7
	.byte	0x4
	.byte	0x1
	.byte	0x18
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
	.byte	0x15
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
	.quad	..LN13
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN14
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN15
	.byte	0x4
	.byte	0x1
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN20
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN21
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN22
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN23
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN24
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN25
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN26
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN27
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN28
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN29
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN30
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN31
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN32
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN33
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN34
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN35
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN36
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN37
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN38
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN39
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN40
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN41
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN42
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN43
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN44
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN45
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN46
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN47
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x0
	.byte	0x9
	.byte	0x2
	.quad	..LN48
	.byte	0x4
	.byte	0x1
	.byte	0x17
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
