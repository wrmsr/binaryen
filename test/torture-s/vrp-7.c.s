	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/vrp-7.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32
# BB#0:                                 # %entry
	i32.const	$push2=, 0
	i32.const	$push9=, 0
	i32.load8_u	$push3=, t($pop9)
	i32.const	$push6=, 254
	i32.and 	$push7=, $pop3, $pop6
	i32.const	$push0=, 4
	i32.shr_u	$push1=, $0, $pop0
	i32.const	$push4=, 1
	i32.and 	$push5=, $pop1, $pop4
	i32.or  	$push8=, $pop7, $pop5
	i32.store8	$discard=, t($pop2), $pop8
	return
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 16
	call    	foo@FUNCTION, $pop0
	block
	i32.const	$push4=, 0
	i32.load8_u	$push1=, t($pop4)
	i32.const	$push2=, 1
	i32.and 	$push3=, $pop1, $pop2
	i32.const	$push6=, 0
	i32.eq  	$push7=, $pop3, $pop6
	br_if   	0, $pop7        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push5=, 0
	return  	$pop5
.LBB1_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.hidden	t                       # @t
	.type	t,@object
	.section	.bss.t,"aw",@nobits
	.globl	t
	.p2align	2
t:
	.skip	4
	.size	t, 4


	.ident	"clang version 3.9.0 "
