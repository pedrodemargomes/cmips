	.file	1 "cMIPSio.c"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.text
	.align	2
	.globl	from_stdin
	.set	nomips16
	.set	nomicromips
	.ent	from_stdin
	.type	from_stdin, @function
from_stdin:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1006632960			# 0x3c000000
	lw	$2,64($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	from_stdin
	.size	from_stdin, .-from_stdin
	.align	2
	.globl	to_stdout
	.set	nomips16
	.set	nomicromips
	.ent	to_stdout
	.type	to_stdout, @function
to_stdout:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	andi	$4,$4,0x00ff
	li	$2,1006632960			# 0x3c000000
	sw	$4,32($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	to_stdout
	.size	to_stdout, .-to_stdout
	.align	2
	.globl	print
	.set	nomips16
	.set	nomicromips
	.ent	print
	.type	print, @function
print:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1006632960			# 0x3c000000
	sw	$4,0($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	print
	.size	print, .-print
	.align	2
	.globl	readInt
	.set	nomips16
	.set	nomicromips
	.ent	readInt
	.type	readInt, @function
readInt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1006632960			# 0x3c000000
	lw	$5,96($2)
	lw	$2,100($2)
	nop
	bne	$2,$0,$L6
	nop

	sw	$5,0($4)
$L6:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	readInt
	.size	readInt, .-readInt
	.align	2
	.globl	writeInt
	.set	nomips16
	.set	nomicromips
	.ent	writeInt
	.type	writeInt, @function
writeInt:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1006632960			# 0x3c000000
	sw	$4,128($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	writeInt
	.size	writeInt, .-writeInt
	.align	2
	.globl	writeClose
	.set	nomips16
	.set	nomicromips
	.ent	writeClose
	.type	writeClose, @function
writeClose:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1			# 0x1
	li	$2,1006632960			# 0x3c000000
	sw	$3,132($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	writeClose
	.size	writeClose, .-writeClose
	.align	2
	.globl	dumpRAM
	.set	nomips16
	.set	nomicromips
	.ent	dumpRAM
	.type	dumpRAM, @function
dumpRAM:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,1			# 0x1
	li	$2,1006632960			# 0x3c000000
	sb	$3,135($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	dumpRAM
	.size	dumpRAM, .-dumpRAM
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"interrupt - CAUSE.IV != 0\000"
	.align	2
$LC1:
	.ascii	"addr error load\000"
	.align	2
$LC2:
	.ascii	"addr error store\000"
	.align	2
$LC3:
	.ascii	"instr bus error\000"
	.align	2
$LC4:
	.ascii	"data bus error\000"
	.align	2
$LC5:
	.ascii	"exception\000"
	.align	2
$LC6:
	.ascii	" (cause, epc, badAddr)\012\000"
	.text
	.align	2
	.globl	exception_report
	.set	nomips16
	.set	nomicromips
	.ent	exception_report
	.type	exception_report, @function
exception_report:
	.frame	$sp,24,$31		# vars= 0, regs= 1/0, args= 16, gp= 0
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$2,$4,8
	beq	$2,$0,$L11
	sll	$4,$4,2

	lui	$2,%hi($L13)
	addiu	$2,$2,%lo($L13)
	addu	$4,$2,$4
	lw	$2,0($4)
	nop
	j	$2
	nop

	.rdata
	.align	2
	.align	2
$L13:
	.word	$L21
	.word	$L11
	.word	$L11
	.word	$L11
	.word	$L14
	.word	$L15
	.word	$L16
	.word	$L17
	.text
$L14:
	lui	$2,%hi($LC1)
	b	$L12
	addiu	$2,$2,%lo($LC1)

$L15:
	lui	$2,%hi($LC2)
	b	$L12
	addiu	$2,$2,%lo($LC2)

$L16:
	lui	$2,%hi($LC3)
	b	$L12
	addiu	$2,$2,%lo($LC3)

$L17:
	lui	$2,%hi($LC4)
	b	$L12
	addiu	$2,$2,%lo($LC4)

$L11:
	lui	$2,%hi($LC5)
	b	$L12
	addiu	$2,$2,%lo($LC5)

$L21:
	lui	$2,%hi($LC0)
	addiu	$2,$2,%lo($LC0)
$L12:
	li	$3,1006632960			# 0x3c000000
	li	$4,10			# 0xa
	sw	$4,32($3)
	li	$4,9			# 0x9
	sw	$4,32($3)
	lb	$3,0($2)
	nop
	beq	$3,$0,$L18
	nop

	li	$4,1006632960			# 0x3c000000
$L22:
	sw	$3,32($4)
	addiu	$2,$2,1
	lb	$3,0($2)
	nop
	bne	$3,$0,$L22
	nop

	b	$L27
	li	$3,32			# 0x20

$L20:
	sw	$3,32($4)
	addiu	$2,$2,1
	lb	$3,0($2)
	nop
	bne	$3,$0,$L20
	nop

	addiu	$sp,$sp,-24
	sw	$31,20($sp)
	li	$2,1006632960			# 0x3c000000
	sw	$5,0($2)
	sw	$6,0($2)
	sw	$7,0($2)
	li	$3,10			# 0xa
	sw	$3,32($2)
	jal	halt
	nop

	b	$L25
	nop

$L18:
	li	$3,32			# 0x20
$L27:
	lui	$2,%hi($LC6)
	addiu	$2,$2,%lo($LC6)
	b	$L20
	li	$4,1006632960			# 0x3c000000

$L25:
	lw	$31,20($sp)
	nop
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	exception_report
	.size	exception_report, .-exception_report
	.align	2
	.globl	file2mem
	.set	nomips16
	.set	nomicromips
	.ent	file2mem
	.type	file2mem, @function
file2mem:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$7,$0,$7
	sll	$7,$7,30
	andi	$4,$4,0x3ff
	li	$2,-2147483648			# 0xffffffff80000000
	or	$4,$4,$2
	or	$2,$4,$7
	li	$3,1006632960			# 0x3c000000
	sw	$2,416($3)
	andi	$5,$5,0x1
	sw	$5,424($3)
	sw	$6,428($3)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	file2mem
	.size	file2mem, .-file2mem
	.align	2
	.globl	mem2file
	.set	nomips16
	.set	nomicromips
	.ent	mem2file
	.type	mem2file, @function
mem2file:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	sltu	$7,$0,$7
	sll	$7,$7,30
	andi	$4,$4,0x3ff
	or	$2,$4,$7
	li	$3,1006632960			# 0x3c000000
	sw	$2,416($3)
	sw	$5,424($3)
	andi	$6,$6,0x1
	sw	$6,428($3)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	mem2file
	.size	mem2file, .-mem2file
	.align	2
	.globl	memcpy
	.set	nomips16
	.set	nomicromips
	.ent	memcpy
	.type	memcpy, @function
memcpy:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,-2147483648			# 0xffffffff80000000
	addiu	$3,$3,3
	and	$3,$5,$3
	bgez	$3,$L35
	move	$2,$4

	addiu	$3,$3,-1
	li	$4,-4			# 0xfffffffffffffffc
	or	$3,$3,$4
	addiu	$3,$3,1
$L35:
	blez	$3,$L48
	slt	$4,$6,4

	blez	$6,$L56
	move	$7,$2

	addu	$3,$2,$3
$L41:
	lb	$8,0($5)
	nop
	sb	$8,0($7)
	addiu	$6,$6,-1
	addiu	$7,$7,1
	bne	$7,$3,$L38
	addiu	$5,$5,1

	b	$L54
	slt	$4,$6,4

$L48:
	move	$3,$2
$L54:
	beq	$4,$0,$L55
	andi	$7,$3,0x3

	b	$L40
	nop

$L38:
	bne	$6,$0,$L41
	nop

$L58:
	j	$31
	nop

$L46:
	andi	$7,$3,0x3
$L55:
	bne	$7,$0,$L43
	andi	$7,$3,0x1

	lw	$7,0($5)
	b	$L44
	sw	$7,0($3)

$L43:
	bne	$7,$0,$L45
	nop

	lh	$7,0($5)
	nop
	sh	$7,0($3)
	lh	$7,2($5)
	b	$L44
	sh	$7,2($3)

$L45:
	lb	$7,0($5)
	nop
	sb	$7,0($3)
	lh	$7,1($5)
	nop
	sh	$7,1($3)
	lb	$7,3($5)
	nop
	sb	$7,3($3)
$L44:
	addiu	$6,$6,-4
	addiu	$5,$5,4
	slt	$7,$6,4
	beq	$7,$0,$L46
	addiu	$3,$3,4

$L40:
	blez	$6,$L58
	addu	$6,$3,$6

$L47:
	lb	$7,0($5)
	nop
	sb	$7,0($3)
	addiu	$3,$3,1
	bne	$6,$3,$L47
	addiu	$5,$5,1

	j	$31
	nop

$L56:
	beq	$4,$0,$L46
	move	$3,$2

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	memcpy
	.size	memcpy, .-memcpy
	.align	2
	.globl	memset
	.set	nomips16
	.set	nomicromips
	.ent	memset
	.type	memset, @function
memset:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$3,-2147483648			# 0xffffffff80000000
	addiu	$3,$3,3
	and	$3,$4,$3
	bgez	$3,$L60
	move	$2,$4

	addiu	$3,$3,-1
	li	$4,-4			# 0xfffffffffffffffc
	or	$3,$3,$4
	addiu	$3,$3,1
$L60:
	blez	$3,$L69
	nop

	blez	$6,$L62
	move	$7,$2

	addu	$3,$2,$3
$L63:
	sb	$5,0($7)
	addiu	$7,$7,1
	beq	$7,$3,$L61
	addiu	$6,$6,-1

	bne	$6,$0,$L63
	nop

$L76:
	j	$31
	nop

$L69:
	move	$3,$2
$L61:
	sll	$7,$5,8
	sll	$8,$5,16
	or	$8,$7,$8
	or	$7,$8,$5
	sll	$8,$5,24
	slt	$4,$6,4
	bne	$4,$0,$L65
	or	$8,$7,$8

$L66:
	sw	$8,0($3)
	addiu	$6,$6,-4
	slt	$7,$6,4
	beq	$7,$0,$L66
	addiu	$3,$3,4

$L65:
	blez	$6,$L76
	addu	$6,$3,$6

$L67:
	sb	$5,0($3)
	addiu	$3,$3,1
	bne	$6,$3,$L67
	nop

	j	$31
	nop

$L62:
	sll	$3,$5,16
	sll	$4,$5,8
	or	$3,$3,$4
	or	$3,$3,$5
	sll	$8,$5,24
	or	$8,$3,$8
	slt	$4,$6,4
	beq	$4,$0,$L66
	move	$3,$2

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	memset
	.size	memset, .-memset
	.align	2
	.globl	startCounter
	.set	nomips16
	.set	nomicromips
	.ent	startCounter
	.type	startCounter, @function
startCounter:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	bne	$5,$0,$L78
	li	$3,-2147483648			# 0xffffffff80000000

	move	$3,$0
$L78:
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	and	$4,$4,$2
	li	$2,1073741824			# 0x40000000
	or	$4,$4,$2
	or	$4,$4,$3
	li	$2,1006632960			# 0x3c000000
	sw	$4,160($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	startCounter
	.size	startCounter, .-startCounter
	.align	2
	.globl	stopCounter
	.set	nomips16
	.set	nomicromips
	.ent	stopCounter
	.type	stopCounter, @function
stopCounter:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$4,1006632960			# 0x3c000000
	lw	$3,160($4)
	li	$2,-1073807360			# 0xffffffffbfff0000
	ori	$2,$2,0xffff
	and	$2,$3,$2
	sw	$2,160($4)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	stopCounter
	.size	stopCounter, .-stopCounter
	.align	2
	.globl	readCounter
	.set	nomips16
	.set	nomicromips
	.ent	readCounter
	.type	readCounter, @function
readCounter:
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	li	$2,1006632960			# 0x3c000000
	lw	$2,160($2)
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	readCounter
	.size	readCounter, .-readCounter
	.ident	"GCC: (GNU) 5.1.0"
