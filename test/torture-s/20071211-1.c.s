	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20071211-1.c"
	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i64, i64
# BB#0:                                 # %entry
	i32.const	$push21=, 0
	i32.const	$push20=, 0
	i64.load	$push0=, sv($pop20)
	i64.const	$push1=, -1099511627776
	i64.or  	$push2=, $pop0, $pop1
	i64.store	$discard=, sv($pop21), $pop2
	#APP
	#NO_APP
	i32.const	$push19=, 0
	i32.const	$push18=, 0
	i64.load	$push17=, sv($pop18)
	tee_local	$push16=, $1=, $pop17
	i64.const	$push3=, 40
	i64.shr_u	$push4=, $pop16, $pop3
	i64.const	$push5=, 1
	i64.add 	$push15=, $pop4, $pop5
	tee_local	$push14=, $0=, $pop15
	i64.const	$push13=, 40
	i64.shl 	$push6=, $pop14, $pop13
	i64.const	$push7=, 1099511627775
	i64.and 	$push8=, $1, $pop7
	i64.or  	$push9=, $pop6, $pop8
	i64.store	$discard=, sv($pop19), $pop9
	block
	i64.const	$push10=, 16777215
	i64.and 	$push11=, $0, $pop10
	i64.eqz 	$push12=, $pop11
	i32.const	$push23=, 0
	i32.eq  	$push24=, $pop12, $pop23
	br_if   	0, $pop24       # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push22=, 0
	return  	$pop22
.LBB0_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.hidden	sv                      # @sv
	.type	sv,@object
	.section	.bss.sv,"aw",@nobits
	.globl	sv
	.p2align	3
sv:
	.skip	8
	.size	sv, 8


	.ident	"clang version 3.9.0 "
