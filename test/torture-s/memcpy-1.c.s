	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/memcpy-1.c"
	.section	.text.copy,"ax",@progbits
	.hidden	copy
	.globl	copy
	.type	copy,@function
copy:                                   # @copy
	.param  	i32, i32, i32
	.result 	i32
# BB#0:                                 # %entry
	i32.call	$push0=, memcpy@FUNCTION, $0, $1, $2
	return  	$pop0
	.endfunc
.Lfunc_end0:
	.size	copy, .Lfunc_end0-copy

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push58=, __stack_pointer
	i32.load	$push59=, 0($pop58)
	i32.const	$push60=, 696320
	i32.sub 	$2=, $pop59, $pop60
	i32.const	$push61=, __stack_pointer
	i32.store	$discard=, 0($pop61), $2
	i32.const	$1=, 0
	i32.const	$push37=, 0
	i32.const	$push36=, 348160
	i32.call	$discard=, memset@FUNCTION, $2, $pop37, $pop36
.LBB1_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label0:
	i32.const	$push62=, 348160
	i32.add 	$push63=, $2, $pop62
	i32.add 	$push0=, $pop63, $1
	i32.store8	$push1=, 0($pop0), $1
	i32.const	$push39=, 1
	i32.add 	$1=, $pop1, $pop39
	i32.const	$push38=, 348160
	i32.ne  	$push2=, $1, $pop38
	br_if   	0, $pop2        # 0: up to label0
# BB#2:                                 # %for.end
	end_loop                        # label1:
	i32.const	$push64=, 348160
	i32.add 	$push65=, $2, $pop64
	i32.const	$push3=, 2720
	i32.call	$discard=, memcpy@FUNCTION, $2, $pop65, $pop3
	i32.const	$1=, 0
.LBB1_3:                                # %for.body6
                                        # =>This Inner Loop Header: Depth=1
	block
	block
	block
	loop                            # label5:
	i32.add 	$push4=, $2, $1
	i32.load8_u	$push5=, 0($pop4)
	i32.const	$push42=, 255
	i32.and 	$push6=, $1, $pop42
	i32.ne  	$push7=, $pop5, $pop6
	br_if   	2, $pop7        # 2: down to label4
# BB#4:                                 # %for.cond3
                                        #   in Loop: Header=BB1_3 Depth=1
	i32.const	$push41=, 1
	i32.add 	$1=, $1, $pop41
	i32.const	$push40=, 2719
	i32.le_u	$push8=, $1, $pop40
	br_if   	0, $pop8        # 0: up to label5
# BB#5:                                 # %for.end15
	end_loop                        # label6:
	i32.const	$push43=, 1
	i32.const	$push9=, 2720
	i32.call	$discard=, memset@FUNCTION, $2, $pop43, $pop9
	i32.const	$1=, 1
.LBB1_6:                                # %for.cond17
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label8:
	i32.const	$push44=, 2719
	i32.gt_u	$push10=, $1, $pop44
	br_if   	2, $pop10       # 2: down to label7
# BB#7:                                 # %for.cond17.for.body20_crit_edge
                                        #   in Loop: Header=BB1_6 Depth=1
	i32.add 	$0=, $2, $1
	i32.const	$push46=, 1
	i32.add 	$1=, $1, $pop46
	i32.load8_u	$push34=, 0($0)
	i32.const	$push45=, 1
	i32.eq  	$push35=, $pop34, $pop45
	br_if   	0, $pop35       # 0: up to label8
# BB#8:                                 # %if.then25
	end_loop                        # label9:
	call    	abort@FUNCTION
	unreachable
.LBB1_9:                                # %for.end29
	end_block                       # label7:
	i32.const	$push66=, 348160
	i32.add 	$push67=, $2, $pop66
	i32.const	$push11=, 348160
	i32.call	$discard=, memcpy@FUNCTION, $2, $pop67, $pop11
	i32.const	$1=, 0
.LBB1_10:                               # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label10:
	i32.add 	$push12=, $2, $1
	i32.load8_u	$push13=, 0($pop12)
	i32.const	$push49=, 255
	i32.and 	$push14=, $1, $pop49
	i32.ne  	$push15=, $pop13, $pop14
	br_if   	3, $pop15       # 3: down to label3
# BB#11:                                # %for.cond32
                                        #   in Loop: Header=BB1_10 Depth=1
	i32.const	$push48=, 1
	i32.add 	$1=, $1, $pop48
	i32.const	$push47=, 348159
	i32.le_u	$push16=, $1, $pop47
	br_if   	0, $pop16       # 0: up to label10
# BB#12:                                # %for.end46
	end_loop                        # label11:
	i32.const	$push18=, 0
	i32.const	$push17=, 348160
	i32.call	$discard=, memset@FUNCTION, $2, $pop18, $pop17
	i32.const	$1=, 1
.LBB1_13:                               # %for.cond48
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label13:
	i32.const	$push50=, 348159
	i32.gt_u	$push19=, $1, $pop50
	br_if   	2, $pop19       # 2: down to label12
# BB#14:                                # %for.cond48.for.body51_crit_edge
                                        #   in Loop: Header=BB1_13 Depth=1
	i32.add 	$0=, $2, $1
	i32.const	$push51=, 1
	i32.add 	$1=, $1, $pop51
	i32.load8_u	$push33=, 0($0)
	i32.const	$push72=, 0
	i32.eq  	$push73=, $pop33, $pop72
	br_if   	0, $pop73       # 0: up to label13
# BB#15:                                # %if.then56
	end_loop                        # label14:
	call    	abort@FUNCTION
	unreachable
.LBB1_16:                               # %for.end60
	end_block                       # label12:
	i32.const	$push68=, 348160
	i32.add 	$push69=, $2, $pop68
	i32.const	$push20=, 2720
	i32.call	$discard=, memcpy@FUNCTION, $2, $pop69, $pop20
	i32.const	$1=, 0
.LBB1_17:                               # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label15:
	i32.add 	$push21=, $2, $1
	i32.load8_u	$push22=, 0($pop21)
	i32.const	$push54=, 255
	i32.and 	$push23=, $1, $pop54
	i32.ne  	$push24=, $pop22, $pop23
	br_if   	4, $pop24       # 4: down to label2
# BB#18:                                # %for.cond63
                                        #   in Loop: Header=BB1_17 Depth=1
	i32.const	$push53=, 1
	i32.add 	$1=, $1, $pop53
	i32.const	$push52=, 2719
	i32.le_u	$push25=, $1, $pop52
	br_if   	0, $pop25       # 0: up to label15
# BB#19:                                # %for.end77
	end_loop                        # label16:
	i32.const	$push70=, 348160
	i32.add 	$push71=, $2, $pop70
	i32.const	$push26=, 348160
	i32.call	$discard=, memcpy@FUNCTION, $2, $pop71, $pop26
	i32.const	$1=, 0
.LBB1_20:                               # %for.body85
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label18:
	i32.add 	$push27=, $2, $1
	i32.load8_u	$push28=, 0($pop27)
	i32.const	$push57=, 255
	i32.and 	$push29=, $1, $pop57
	i32.ne  	$push30=, $pop28, $pop29
	br_if   	2, $pop30       # 2: down to label17
# BB#21:                                # %for.cond82
                                        #   in Loop: Header=BB1_20 Depth=1
	i32.const	$push56=, 1
	i32.add 	$1=, $1, $pop56
	i32.const	$push55=, 348159
	i32.le_u	$push31=, $1, $pop55
	br_if   	0, $pop31       # 0: up to label18
# BB#22:                                # %for.end96
	end_loop                        # label19:
	i32.const	$push32=, 0
	call    	exit@FUNCTION, $pop32
	unreachable
.LBB1_23:                               # %if.then92
	end_block                       # label17:
	call    	abort@FUNCTION
	unreachable
.LBB1_24:                               # %if.then
	end_block                       # label4:
	call    	abort@FUNCTION
	unreachable
.LBB1_25:                               # %if.then42
	end_block                       # label3:
	call    	abort@FUNCTION
	unreachable
.LBB1_26:                               # %if.then73
	end_block                       # label2:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
