	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/20050826-2.c"
	.section	.text.inet_check_attr,"ax",@progbits
	.hidden	inet_check_attr
	.globl	inet_check_attr
	.type	inet_check_attr,@function
inet_check_attr:                        # @inet_check_attr
	.param  	i32, i32
	.result 	i32
	.local  	i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$2=, 1
.LBB0_1:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	loop                            # label0:
	block
	i32.load	$push8=, 0($1)
	tee_local	$push7=, $4=, $pop8
	i32.const	$push17=, 0
	i32.eq  	$push18=, $pop7, $pop17
	br_if   	0, $pop18       # 0: down to label2
# BB#2:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.const	$3=, -22
	i32.load16_u	$push0=, 0($4)
	i32.const	$push10=, 65532
	i32.and 	$push1=, $pop0, $pop10
	i32.const	$push9=, 4
	i32.eq  	$push2=, $pop1, $pop9
	br_if   	2, $pop2        # 2: down to label1
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.const	$push12=, -2
	i32.and 	$push3=, $2, $pop12
	i32.const	$push11=, 8
	i32.eq  	$push4=, $pop3, $pop11
	br_if   	0, $pop4        # 0: down to label2
# BB#4:                                 # %if.then9
                                        #   in Loop: Header=BB0_1 Depth=1
	i32.const	$push13=, 4
	i32.add 	$push5=, $4, $pop13
	i32.store	$discard=, 0($1), $pop5
.LBB0_5:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	end_block                       # label2:
	i32.const	$push16=, 1
	i32.add 	$2=, $2, $pop16
	i32.const	$push15=, 4
	i32.add 	$1=, $1, $pop15
	i32.const	$3=, 0
	i32.const	$push14=, 15
	i32.lt_s	$push6=, $2, $pop14
	br_if   	0, $pop6        # 0: up to label0
.LBB0_6:                                # %cleanup14
	end_loop                        # label1:
	return  	$3
	.endfunc
.Lfunc_end0:
	.size	inet_check_attr, .Lfunc_end0-inet_check_attr

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push92=, __stack_pointer
	i32.load	$push93=, 0($pop92)
	i32.const	$push94=, 64
	i32.sub 	$4=, $pop93, $pop94
	i32.const	$push95=, __stack_pointer
	i32.store	$discard=, 0($pop95), $4
	i64.const	$push0=, 51539607564
	i64.store	$discard=, 56($4), $pop0
	i32.const	$push99=, 56
	i32.add 	$push100=, $4, $pop99
	i32.store	$discard=, 0($4), $pop100
	i32.const	$push101=, 56
	i32.add 	$push102=, $4, $pop101
	i32.store	$discard=, 4($4), $pop102
	i32.const	$push103=, 56
	i32.add 	$push104=, $4, $pop103
	i32.store	$discard=, 8($4), $pop104
	i32.const	$push105=, 56
	i32.add 	$push106=, $4, $pop105
	i32.store	$discard=, 12($4), $pop106
	i32.const	$push107=, 56
	i32.add 	$push108=, $4, $pop107
	i32.store	$discard=, 16($4), $pop108
	i32.const	$push109=, 56
	i32.add 	$push110=, $4, $pop109
	i32.store	$discard=, 20($4), $pop110
	i32.const	$push111=, 56
	i32.add 	$push112=, $4, $pop111
	i32.store	$discard=, 24($4), $pop112
	i32.const	$push113=, 56
	i32.add 	$push114=, $4, $pop113
	i32.store	$discard=, 28($4), $pop114
	i32.const	$push115=, 56
	i32.add 	$push116=, $4, $pop115
	i32.store	$discard=, 32($4), $pop116
	i32.const	$push117=, 56
	i32.add 	$push118=, $4, $pop117
	i32.store	$discard=, 36($4), $pop118
	i32.const	$push119=, 56
	i32.add 	$push120=, $4, $pop119
	i32.store	$discard=, 40($4), $pop120
	i32.const	$push121=, 56
	i32.add 	$push122=, $4, $pop121
	i32.store	$discard=, 44($4), $pop122
	i32.const	$push123=, 56
	i32.add 	$push124=, $4, $pop123
	i32.store	$discard=, 48($4), $pop124
	i32.const	$push125=, 56
	i32.add 	$push126=, $4, $pop125
	i32.store	$discard=, 52($4), $pop126
	block
	block
	block
	i32.call	$push2=, inet_check_attr@FUNCTION, $0, $4
	br_if   	0, $pop2        # 0: down to label5
# BB#1:                                 # %for.body9.preheader
	i32.const	$push127=, 56
	i32.add 	$push128=, $4, $pop127
	copy_local	$1=, $pop128
	i32.load	$push16=, 0($4)
	i32.const	$push129=, 56
	i32.add 	$push130=, $4, $pop129
	i32.const	$push1=, 4
	i32.or  	$push86=, $pop130, $pop1
	tee_local	$push85=, $0=, $pop86
	i32.ne  	$push37=, $pop16, $pop85
	br_if   	2, $pop37       # 2: down to label3
# BB#2:                                 # %for.body9.preheader
	i32.load	$push3=, 4($4)
	i32.ne  	$push38=, $pop3, $0
	br_if   	2, $pop38       # 2: down to label3
# BB#3:                                 # %for.body9.preheader
	i32.load	$push4=, 8($4)
	i32.ne  	$push39=, $pop4, $0
	br_if   	2, $pop39       # 2: down to label3
# BB#4:                                 # %for.body9.preheader
	i32.load	$push5=, 12($4)
	i32.ne  	$push40=, $pop5, $0
	br_if   	2, $pop40       # 2: down to label3
# BB#5:                                 # %for.body9.preheader
	i32.const	$push17=, 16
	i32.add 	$push18=, $4, $pop17
	i32.load	$push6=, 0($pop18)
	i32.ne  	$push41=, $pop6, $0
	br_if   	2, $pop41       # 2: down to label3
# BB#6:                                 # %for.body9.preheader
	i32.const	$push19=, 20
	i32.add 	$push20=, $4, $pop19
	i32.load	$push7=, 0($pop20)
	i32.ne  	$push42=, $pop7, $0
	br_if   	2, $pop42       # 2: down to label3
# BB#7:                                 # %for.body9.preheader
	i32.const	$push21=, 24
	i32.add 	$push22=, $4, $pop21
	i32.load	$push8=, 0($pop22)
	i32.ne  	$push43=, $pop8, $0
	br_if   	2, $pop43       # 2: down to label3
# BB#8:                                 # %for.body9.preheader
	i32.const	$push23=, 28
	i32.add 	$push24=, $4, $pop23
	i32.load	$push9=, 0($pop24)
	i32.ne  	$push44=, $pop9, $1
	br_if   	2, $pop44       # 2: down to label3
# BB#9:                                 # %for.body9.preheader
	i32.const	$push25=, 32
	i32.add 	$push26=, $4, $pop25
	i32.load	$push10=, 0($pop26)
	i32.ne  	$push45=, $pop10, $1
	br_if   	2, $pop45       # 2: down to label3
# BB#10:                                # %for.body9.preheader
	i32.const	$push27=, 36
	i32.add 	$push28=, $4, $pop27
	i32.load	$push11=, 0($pop28)
	i32.ne  	$push46=, $pop11, $0
	br_if   	2, $pop46       # 2: down to label3
# BB#11:                                # %for.body9.preheader
	i32.const	$push29=, 40
	i32.add 	$push30=, $4, $pop29
	i32.load	$push12=, 0($pop30)
	i32.ne  	$push47=, $pop12, $0
	br_if   	2, $pop47       # 2: down to label3
# BB#12:                                # %for.body9.preheader
	i32.const	$push31=, 44
	i32.add 	$push32=, $4, $pop31
	i32.load	$push13=, 0($pop32)
	i32.ne  	$push48=, $pop13, $0
	br_if   	2, $pop48       # 2: down to label3
# BB#13:                                # %for.body9.preheader
	i32.const	$push33=, 48
	i32.add 	$push34=, $4, $pop33
	i32.load	$push14=, 0($pop34)
	i32.ne  	$push49=, $pop14, $0
	br_if   	2, $pop49       # 2: down to label3
# BB#14:                                # %for.body9.preheader
	i32.const	$push35=, 52
	i32.add 	$push36=, $4, $pop35
	i32.load	$push15=, 0($pop36)
	i32.ne  	$push50=, $pop15, $0
	br_if   	2, $pop50       # 2: down to label3
# BB#15:                                # %for.cond7.13
	i32.const	$push51=, 16
	i32.add 	$push52=, $4, $pop51
	i32.const	$push131=, 56
	i32.add 	$push132=, $4, $pop131
	i32.store	$discard=, 0($pop52), $pop132
	i32.const	$push53=, 24
	i32.add 	$push54=, $4, $pop53
	i32.const	$push133=, 56
	i32.add 	$push134=, $4, $pop133
	i32.store	$discard=, 0($pop54), $pop134
	i32.const	$push55=, 28
	i32.add 	$push56=, $4, $pop55
	i32.const	$push135=, 56
	i32.add 	$push136=, $4, $pop135
	i32.store	$discard=, 0($pop56), $pop136
	i32.const	$push57=, 32
	i32.add 	$push58=, $4, $pop57
	i32.const	$push137=, 56
	i32.add 	$push138=, $4, $pop137
	i32.store	$discard=, 0($pop58), $pop138
	i32.const	$push59=, 36
	i32.add 	$push60=, $4, $pop59
	i32.const	$push139=, 56
	i32.add 	$push140=, $4, $pop139
	i32.store	$discard=, 0($pop60), $pop140
	i32.const	$push61=, 40
	i32.add 	$push62=, $4, $pop61
	i32.const	$push141=, 56
	i32.add 	$push142=, $4, $pop141
	i32.store	$discard=, 0($pop62), $pop142
	i32.const	$push63=, 44
	i32.add 	$push64=, $4, $pop63
	i32.const	$push143=, 56
	i32.add 	$push144=, $4, $pop143
	i32.store	$discard=, 0($pop64), $pop144
	i32.const	$push65=, 48
	i32.add 	$push66=, $4, $pop65
	i32.const	$push145=, 56
	i32.add 	$push146=, $4, $pop145
	i32.store	$discard=, 0($pop66), $pop146
	i32.load16_u	$1=, 60($4)
	i32.const	$push67=, 52
	i32.add 	$push68=, $4, $pop67
	i32.const	$push147=, 56
	i32.add 	$push148=, $4, $pop147
	i32.store	$discard=, 0($pop68), $pop148
	i32.const	$push70=, 65528
	i32.add 	$push71=, $1, $pop70
	i32.store16	$discard=, 60($4), $pop71
	i32.const	$push72=, 20
	i32.add 	$push73=, $4, $pop72
	i32.store	$3=, 0($pop73), $0
	i32.const	$push149=, 56
	i32.add 	$push150=, $4, $pop149
	i32.store	$discard=, 0($4), $pop150
	i32.const	$push151=, 56
	i32.add 	$push152=, $4, $pop151
	i32.store	$discard=, 8($4), $pop152
	i32.const	$push153=, 56
	i32.add 	$push154=, $4, $pop153
	i32.store	$discard=, 12($4), $pop154
	i32.const	$push69=, 0
	i32.store	$0=, 4($4), $pop69
	i32.call	$push74=, inet_check_attr@FUNCTION, $0, $4
	i32.const	$push75=, -22
	i32.ne  	$push76=, $pop74, $pop75
	br_if   	2, $pop76       # 2: down to label3
# BB#16:                                # %for.body43.preheader
	i32.load	$2=, 4($4)
.LBB1_17:                               # %for.body43
                                        # =>This Inner Loop Header: Depth=1
	block
	loop                            # label7:
	block
	i32.const	$push87=, 1
	i32.ne  	$push77=, $0, $pop87
	br_if   	0, $pop77       # 0: down to label9
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_17 Depth=1
	i32.const	$0=, 2
	i32.const	$push157=, 0
	i32.eq  	$push158=, $2, $pop157
	br_if   	1, $pop158      # 1: up to label7
	br      	3               # 3: down to label6
.LBB1_19:                               # %if.else
                                        #   in Loop: Header=BB1_17 Depth=1
	end_block                       # label9:
	i32.const	$push89=, 2
	i32.shl 	$push78=, $0, $pop89
	i32.add 	$push79=, $4, $pop78
	i32.load	$1=, 0($pop79)
	block
	block
	i32.const	$push88=, 5
	i32.gt_s	$push80=, $0, $pop88
	br_if   	0, $pop80       # 0: down to label11
# BB#20:                                # %land.lhs.true55
                                        #   in Loop: Header=BB1_17 Depth=1
	i32.eq  	$push82=, $1, $3
	br_if   	1, $pop82       # 1: down to label10
	br      	6               # 6: down to label4
.LBB1_21:                               # %land.lhs.true64
                                        #   in Loop: Header=BB1_17 Depth=1
	end_block                       # label11:
	i32.const	$push155=, 56
	i32.add 	$push156=, $4, $pop155
	i32.ne  	$push81=, $1, $pop156
	br_if   	4, $pop81       # 4: down to label5
.LBB1_22:                               # %for.inc73
                                        #   in Loop: Header=BB1_17 Depth=1
	end_block                       # label10:
	i32.const	$push91=, 1
	i32.add 	$0=, $0, $pop91
	i32.const	$push90=, 14
	i32.lt_s	$push83=, $0, $pop90
	br_if   	0, $pop83       # 0: up to label7
# BB#23:                                # %for.end75
	end_loop                        # label8:
	i32.const	$push84=, 0
	i32.const	$push98=, __stack_pointer
	i32.const	$push96=, 64
	i32.add 	$push97=, $4, $pop96
	i32.store	$discard=, 0($pop98), $pop97
	return  	$pop84
.LBB1_24:                               # %if.then49
	end_block                       # label6:
	call    	abort@FUNCTION
	unreachable
.LBB1_25:                               # %if.then69
	end_block                       # label5:
	call    	abort@FUNCTION
	unreachable
.LBB1_26:                               # %if.then60
	end_block                       # label4:
	call    	abort@FUNCTION
	unreachable
.LBB1_27:                               # %if.then38
	end_block                       # label3:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
