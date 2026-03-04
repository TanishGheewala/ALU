# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrcolor #000000
property attrfontsize 8
property autobundle 1
property backgroundcolor #ffffff
property boxcolor0 #000000
property boxcolor1 #000000
property boxcolor2 #000000
property boxinstcolor #000000
property boxpincolor #000000
property buscolor #008000
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #ffffcc
property fillcolor2 #dfebf8
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 12
property maxzoom 5
property netcolor #19b400
property objecthighlight0 #ff00ff
property objecthighlight1 #ffff00
property objecthighlight2 #00ff00
property objecthighlight3 #0095ff
property objecthighlight4 #8000ff
property objecthighlight5 #ffc800
property objecthighlight7 #00ffff
property objecthighlight8 #ff00ff
property objecthighlight9 #ccccff
property objecthighlight10 #0ead00
property objecthighlight11 #cefc00
property objecthighlight12 #9e2dbe
property objecthighlight13 #ba6a29
property objecthighlight14 #fc0188
property objecthighlight15 #02f990
property objecthighlight16 #f1b0fb
property objecthighlight17 #fec004
property objecthighlight18 #149bff
property objecthighlight19 #0000ff
property overlaycolor #19b400
property pbuscolor #000000
property pbusnamecolor #000000
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #000000
property portnamecolor #000000
property ripindexfontsize 4
property rippercolor #000000
property rubberbandcolor #000000
property rubberbandfontsize 12
property selectattr 0
property selectionappearance 2
property selectioncolor #0000ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new alu work:alu:NOFILE -nosplit
load symbol RTL_AND2 work AND pin I0 input pin I1 input pin O output fillcolor 1
load symbol RTL_ADD1 work RTL(+) pinBus I0 input.left [8:0] pinBus I1 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_ADD2 work RTL(+) pin I1 input.left pinBus I0 input.left [8:0] pinBus O output.right [8:0] fillcolor 1
load symbol RTL_LT0 work RTL(<) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_EQ2 work RTL(=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_NEQ work RTL(!=) pin I0 input.left pin I1 input.left pin O output.right fillcolor 1
load symbol RTL_MUX35 work MUX pin I0 input.left pin I1 input.left pin O output.right pin S input.bot fillcolor 1
load symbol RTL_MUX40 work MUX pin I0 input.left pin I1 input.left pin O output.right pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_AND work AND pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_XOR work XOR pinBus I0 input [7:0] pinBus I1 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_RSHIFT work RTL(>>) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_ARSHIFT work RTL(>>>) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MUX17 work MUX pin S input.bot pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] fillcolor 1
load symbol RTL_INV work INV pinBus I0 input [7:0] pinBus O output [7:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_SUB work RTL(-) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pin I1 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_SUB0 work RTL(-) pin I1 input.left pinBus I0 input.left [7:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_LSHIFT work RTL(<<) pin I2 input.left pinBus I0 input.left [7:0] pinBus I1 input.left [2:0] pinBus O output.right [7:0] fillcolor 1
load symbol RTL_EQ1 work RTL(=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_GT work RTL(>) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_GEQ work RTL(>=) pin O output.right pinBus I0 input.left [7:0] pinBus I1 input.left [7:0] fillcolor 1
load symbol RTL_MUX4 work MUX pin S input.bot pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_MUX26 work MUX pinBus I0 input.left [1:0] pinBus I1 input.left [1:0] pinBus O output.right [1:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_MUX15 work MUX pinBus I0 input.left [15:0] pinBus I1 input.left [1:0] pinBus O output.right [15:0] pinBus S input.bot [3:0] fillcolor 1
load symbol RTL_MUX14 work MUX pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] pinBus S input.bot [3:0] fillcolor 1
load port OVF output -pg 1 -lvl 20 -x 6570 -y 690
load port signed_mode input -pg 1 -lvl 0 -x 0 -y 590
load portBus A input [7:0] -attr @name A[7:0] -pg 1 -lvl 0 -x 0 -y 630
load portBus B input [7:0] -attr @name B[7:0] -pg 1 -lvl 0 -x 0 -y 650
load portBus Y output [15:0] -attr @name Y[15:0] -pg 1 -lvl 20 -x 6570 -y 570
load portBus op input [3:0] -attr @name op[3:0] -pg 1 -lvl 0 -x 0 -y 980
load inst OVF0_i RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 13 -x 4500 -y 910
load inst OVF0_i__0 RTL_ADD1 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[8:0] -pinBusAttr I1 @name I1[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 13 -x 4500 -y 790
load inst OVF0_i__1 RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 12 -x 4090 -y 680
load inst OVF0_i__2 RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 11 -x 3740 -y 190
load inst OVF0_i__3 RTL_ADD2 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[8:0] -pinBusAttr O @name O[8:0] -pg 1 -lvl 11 -x 3740 -y 290
load inst OVF0_i__4 RTL_AND2 work -attr @cell(#000000) RTL_AND -pg 1 -lvl 10 -x 3330 -y 50
load inst OVF0_i__5 RTL_LT0 work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr I1 @attr V=B\"00000001\" -pg 1 -lvl 10 -x 3330 -y 150
load inst OVF1_i RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pg 1 -lvl 12 -x 4090 -y 810
load inst OVF1_i__0 RTL_NEQ work -attr @cell(#000000) RTL_NEQ -pg 1 -lvl 12 -x 4090 -y 910
load inst OVF1_i__1 RTL_NEQ work -attr @cell(#000000) RTL_NEQ -pg 1 -lvl 11 -x 3740 -y 670
load inst OVF1_i__2 RTL_NEQ work -attr @cell(#000000) RTL_NEQ -pg 1 -lvl 11 -x 3740 -y 760
load inst OVF1_i__3 RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pg 1 -lvl 10 -x 3330 -y 240
load inst OVF1_i__4 RTL_EQ2 work -attr @cell(#000000) RTL_EQ -pg 1 -lvl 9 -x 2940 -y 60
load inst OVF_i RTL_MUX35 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 14 -x 4850 -y 800
load inst OVF_i__0 RTL_MUX35 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 13 -x 4500 -y 500
load inst OVF_i__1 RTL_MUX35 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 12 -x 4090 -y 270
load inst OVF_i__10 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0000 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 19 -x 6440 -y 690
load inst OVF_i__2 RTL_MUX35 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=1'b1 -pinAttr I1 @attr S=default -pg 1 -lvl 11 -x 3740 -y 60
load inst OVF_i__3 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0111 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 12 -x 4090 -y 510
load inst OVF_i__4 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0110 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 13 -x 4500 -y 620
load inst OVF_i__5 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0101 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 14 -x 4850 -y 510
load inst OVF_i__6 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0100 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 15 -x 5200 -y 690
load inst OVF_i__7 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0011 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 16 -x 5530 -y 690
load inst OVF_i__8 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0010 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 5860 -y 710
load inst OVF_i__9 RTL_MUX40 work -attr @cell(#000000) RTL_MUX -pinAttr I0 @attr S=4'b0001 -pinAttr I1 @attr S=default -pinBusAttr S @name S[3:0] -pg 1 -lvl 18 -x 6150 -y 700
load inst Y0_i RTL_AND work -attr @cell(#000000) RTL_AND -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 18 -x 6150 -y 440
load inst Y0_i__0 RTL_OR work -attr @cell(#000000) RTL_OR -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 17 -x 5860 -y 500
load inst Y0_i__1 RTL_XOR work -attr @cell(#000000) RTL_XOR -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 16 -x 5530 -y 580
load inst Y0_i__10 RTL_RSHIFT work -attr @cell(#000000) RTL_RSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 8 -x 2580 -y 570
load inst Y0_i__11 RTL_ARSHIFT work -attr @cell(#000000) RTL_ARSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 7 -x 2230 -y 470
load inst Y0_i__12 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 6 -x 1930 -y 500
load inst Y0_i__13 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 4 -x 1260 -y 300
load inst Y0_i__14 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 4 -x 1260 -y 420
load inst Y0_i__15 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 3 -x 870 -y 770
load inst Y0_i__16 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 3 -x 870 -y 890
load inst Y0_i__17 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -x 460 -y 460
load inst Y0_i__18 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr V=B\"01\",\ S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 2 -x 460 -y 670
load inst Y0_i__2 RTL_INV work -attr @cell(#000000) RTL_INV -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 15 -x 5200 -y 530
load inst Y0_i__3 RTL_ADD work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 11 -x 3740 -y 860
load inst Y0_i__4 RTL_SUB work -attr @cell(#000000) RTL_SUB -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 10 -x 3330 -y 670
load inst Y0_i__5 RTL_ADD0 work -attr @cell(#000000) RTL_ADD -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 10 -x 3330 -y 790
load inst Y0_i__6 RTL_SUB0 work -attr @cell(#000000) RTL_SUB -pinBusAttr I0 @name I0[7:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 8 -x 2580 -y 480
load inst Y0_i__7 RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 9 -x 2940 -y 650
load inst Y0_i__8 RTL_MULT work -attr @cell(#000000) RTL_MULT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 9 -x 2940 -y 740
load inst Y0_i__9 RTL_LSHIFT work -attr @cell(#000000) RTL_LSHIFT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[2:0] -pinBusAttr O @name O[7:0] -pg 1 -lvl 9 -x 2940 -y 860
load inst Y2_i RTL_EQ1 work -attr @cell(#000000) RTL_EQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 5 -x 1580 -y 540
load inst Y2_i__0 RTL_GT work -attr @cell(#000000) RTL_GT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 3 -x 870 -y 390
load inst Y2_i__1 RTL_GT work -attr @cell(#000000) RTL_GT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 3 -x 870 -y 480
load inst Y2_i__2 RTL_GEQ work -attr @cell(#000000) RTL_GEQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 2 -x 460 -y 830
load inst Y2_i__3 RTL_GEQ work -attr @cell(#000000) RTL_GEQ -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 2 -x 460 -y 920
load inst Y2_i__4 RTL_LT0 work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 1 -x 110 -y 640
load inst Y2_i__5 RTL_LT0 work -attr @cell(#000000) RTL_LT -pinBusAttr I0 @name I0[7:0] -pinBusAttr I1 @name I1[7:0] -pg 1 -lvl 1 -x 110 -y 740
load inst Y_i RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 14 -x 4850 -y 650
load inst Y_i__0 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 13 -x 4500 -y 250
load inst Y_i__1 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 12 -x 4090 -y 140
load inst Y_i__10 RTL_MUX26 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=4'b1100 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 7 -x 2230 -y 340
load inst Y_i__11 RTL_MUX15 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b1011 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 8 -x 2580 -y 340
load inst Y_i__12 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b1010 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 9 -x 2940 -y 490
load inst Y_i__13 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b1001 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 10 -x 3330 -y 490
load inst Y_i__14 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b1000 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 11 -x 3740 -y 520
load inst Y_i__15 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0111 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 12 -x 4090 -y 390
load inst Y_i__16 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0110 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 13 -x 4500 -y 380
load inst Y_i__17 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0101 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 14 -x 4850 -y 370
load inst Y_i__18 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0100 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 15 -x 5200 -y 430
load inst Y_i__19 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0011 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 16 -x 5530 -y 440
load inst Y_i__2 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 11 -x 3740 -y 390
load inst Y_i__20 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0010 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 17 -x 5860 -y 590
load inst Y_i__21 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0001 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 18 -x 6150 -y 580
load inst Y_i__22 RTL_MUX14 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=4'b0000 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 19 -x 6440 -y 570
load inst Y_i__3 RTL_MUX4 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 10 -x 3330 -y 370
load inst Y_i__4 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 5 -x 1580 -y 310
load inst Y_i__5 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 4 -x 1260 -y 660
load inst Y_i__6 RTL_MUX17 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pg 1 -lvl 3 -x 870 -y 630
load inst Y_i__7 RTL_MUX26 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=4'b1111 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 4 -x 1260 -y 780
load inst Y_i__8 RTL_MUX26 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=4'b1110 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 5 -x 1580 -y 670
load inst Y_i__9 RTL_MUX26 work -attr @cell(#000000) RTL_MUX -pinBusAttr I0 @name I0[1:0] -pinBusAttr I0 @attr S=4'b1101 -pinBusAttr I1 @name I1[1:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[1:0] -pinBusAttr S @name S[3:0] -pg 1 -lvl 6 -x 1930 -y 340
load net <const0> -ground -pin OVF0_i__0 I0[8] -pin OVF0_i__0 I1[8] -pin OVF0_i__3 I0[8] -pin OVF0_i__5 I1[7] -pin OVF0_i__5 I1[6] -pin OVF0_i__5 I1[5] -pin OVF0_i__5 I1[4] -pin OVF0_i__5 I1[3] -pin OVF0_i__5 I1[2] -pin OVF0_i__5 I1[1] -pin OVF1_i__3 I1 -pin OVF1_i__4 I1 -pin OVF_i__10 I0 -pin OVF_i__3 I1 -pin OVF_i__7 I0 -pin OVF_i__8 I0 -pin OVF_i__9 I0 -pin Y0_i__12 I0[1] -pin Y0_i__12 I1[1] -pin Y0_i__12 I1[0] -pin Y0_i__13 I0[1] -pin Y0_i__13 I1[1] -pin Y0_i__13 I1[0] -pin Y0_i__14 I0[1] -pin Y0_i__14 I1[1] -pin Y0_i__14 I1[0] -pin Y0_i__15 I0[1] -pin Y0_i__15 I1[1] -pin Y0_i__15 I1[0] -pin Y0_i__16 I0[1] -pin Y0_i__16 I1[1] -pin Y0_i__16 I1[0] -pin Y0_i__17 I0[1] -pin Y0_i__17 I1[1] -pin Y0_i__17 I1[0] -pin Y0_i__18 I0[1] -pin Y0_i__18 I1[1] -pin Y0_i__18 I1[0] -pin Y_i I1[15] -pin Y_i I1[14] -pin Y_i I1[13] -pin Y_i I1[12] -pin Y_i I1[11] -pin Y_i I1[10] -pin Y_i I1[9] -pin Y_i I1[8] -pin Y_i__0 I1[15] -pin Y_i__0 I1[14] -pin Y_i__0 I1[13] -pin Y_i__0 I1[12] -pin Y_i__0 I1[11] -pin Y_i__0 I1[10] -pin Y_i__0 I1[9] -pin Y_i__0 I1[8] -pin Y_i__1 I1[15] -pin Y_i__1 I1[14] -pin Y_i__1 I1[13] -pin Y_i__1 I1[12] -pin Y_i__1 I1[11] -pin Y_i__1 I1[10] -pin Y_i__1 I1[9] -pin Y_i__1 I1[8] -pin Y_i__11 I0[15] -pin Y_i__11 I0[14] -pin Y_i__11 I0[13] -pin Y_i__11 I0[12] -pin Y_i__11 I0[11] -pin Y_i__11 I0[10] -pin Y_i__11 I0[9] -pin Y_i__11 I0[8] -pin Y_i__12 I0[15] -pin Y_i__12 I0[14] -pin Y_i__12 I0[13] -pin Y_i__12 I0[12] -pin Y_i__12 I0[11] -pin Y_i__12 I0[10] -pin Y_i__12 I0[9] -pin Y_i__12 I0[8] -pin Y_i__13 I0[15] -pin Y_i__13 I0[14] -pin Y_i__13 I0[13] -pin Y_i__13 I0[12] -pin Y_i__13 I0[11] -pin Y_i__13 I0[10] -pin Y_i__13 I0[9] -pin Y_i__13 I0[8] -pin Y_i__19 I0[15] -pin Y_i__19 I0[14] -pin Y_i__19 I0[13] -pin Y_i__19 I0[12] -pin Y_i__19 I0[11] -pin Y_i__19 I0[10] -pin Y_i__19 I0[9] -pin Y_i__19 I0[8] -pin Y_i__2 I1[15] -pin Y_i__2 I1[14] -pin Y_i__2 I1[13] -pin Y_i__2 I1[12] -pin Y_i__2 I1[11] -pin Y_i__2 I1[10] -pin Y_i__2 I1[9] -pin Y_i__2 I1[8] -pin Y_i__20 I0[15] -pin Y_i__20 I0[14] -pin Y_i__20 I0[13] -pin Y_i__20 I0[12] -pin Y_i__20 I0[11] -pin Y_i__20 I0[10] -pin Y_i__20 I0[9] -pin Y_i__20 I0[8] -pin Y_i__21 I0[15] -pin Y_i__21 I0[14] -pin Y_i__21 I0[13] -pin Y_i__21 I0[12] -pin Y_i__21 I0[11] -pin Y_i__21 I0[10] -pin Y_i__21 I0[9] -pin Y_i__21 I0[8] -pin Y_i__22 I0[15] -pin Y_i__22 I0[14] -pin Y_i__22 I0[13] -pin Y_i__22 I0[12] -pin Y_i__22 I0[11] -pin Y_i__22 I0[10] -pin Y_i__22 I0[9] -pin Y_i__22 I0[8] -pin Y_i__7 I1[1] -pin Y_i__7 I1[0]
load net <const1> -power -attr @rip 0 -pin OVF0_i__3 I1 -pin OVF0_i__5 I1[0] -pin Y0_i__10 I2 -pin Y0_i__11 I2 -pin Y0_i__12 I0[0] -pin Y0_i__13 I0[0] -pin Y0_i__14 I0[0] -pin Y0_i__15 I0[0] -pin Y0_i__16 I0[0] -pin Y0_i__17 I0[0] -pin Y0_i__18 I0[0] -pin Y0_i__5 I1 -pin Y0_i__6 I1 -pin Y0_i__9 I2
load net A[0] -attr @rip A[0] -port A[0] -pin OVF0_i__0 I0[0] -pin OVF0_i__3 I0[0] -pin OVF0_i__5 I0[0] -pin Y0_i I0[0] -pin Y0_i__0 I0[0] -pin Y0_i__1 I0[0] -pin Y0_i__10 I0[0] -pin Y0_i__11 I0[0] -pin Y0_i__2 I0[0] -pin Y0_i__3 I0[0] -pin Y0_i__4 I0[0] -pin Y0_i__5 I0[0] -pin Y0_i__6 I0[0] -pin Y0_i__7 I0[0] -pin Y0_i__8 I0[0] -pin Y0_i__9 I0[0] -pin Y2_i I0[0] -pin Y2_i__0 I0[0] -pin Y2_i__1 I0[0] -pin Y2_i__2 I0[0] -pin Y2_i__3 I0[0] -pin Y2_i__4 I0[0] -pin Y2_i__5 I0[0]
load net A[1] -attr @rip A[1] -port A[1] -pin OVF0_i__0 I0[1] -pin OVF0_i__3 I0[1] -pin OVF0_i__5 I0[1] -pin Y0_i I0[1] -pin Y0_i__0 I0[1] -pin Y0_i__1 I0[1] -pin Y0_i__10 I0[1] -pin Y0_i__11 I0[1] -pin Y0_i__2 I0[1] -pin Y0_i__3 I0[1] -pin Y0_i__4 I0[1] -pin Y0_i__5 I0[1] -pin Y0_i__6 I0[1] -pin Y0_i__7 I0[1] -pin Y0_i__8 I0[1] -pin Y0_i__9 I0[1] -pin Y2_i I0[1] -pin Y2_i__0 I0[1] -pin Y2_i__1 I0[1] -pin Y2_i__2 I0[1] -pin Y2_i__3 I0[1] -pin Y2_i__4 I0[1] -pin Y2_i__5 I0[1]
load net A[2] -attr @rip A[2] -port A[2] -pin OVF0_i__0 I0[2] -pin OVF0_i__3 I0[2] -pin OVF0_i__5 I0[2] -pin Y0_i I0[2] -pin Y0_i__0 I0[2] -pin Y0_i__1 I0[2] -pin Y0_i__10 I0[2] -pin Y0_i__11 I0[2] -pin Y0_i__2 I0[2] -pin Y0_i__3 I0[2] -pin Y0_i__4 I0[2] -pin Y0_i__5 I0[2] -pin Y0_i__6 I0[2] -pin Y0_i__7 I0[2] -pin Y0_i__8 I0[2] -pin Y0_i__9 I0[2] -pin Y2_i I0[2] -pin Y2_i__0 I0[2] -pin Y2_i__1 I0[2] -pin Y2_i__2 I0[2] -pin Y2_i__3 I0[2] -pin Y2_i__4 I0[2] -pin Y2_i__5 I0[2]
load net A[3] -attr @rip A[3] -port A[3] -pin OVF0_i__0 I0[3] -pin OVF0_i__3 I0[3] -pin OVF0_i__5 I0[3] -pin Y0_i I0[3] -pin Y0_i__0 I0[3] -pin Y0_i__1 I0[3] -pin Y0_i__10 I0[3] -pin Y0_i__11 I0[3] -pin Y0_i__2 I0[3] -pin Y0_i__3 I0[3] -pin Y0_i__4 I0[3] -pin Y0_i__5 I0[3] -pin Y0_i__6 I0[3] -pin Y0_i__7 I0[3] -pin Y0_i__8 I0[3] -pin Y0_i__9 I0[3] -pin Y2_i I0[3] -pin Y2_i__0 I0[3] -pin Y2_i__1 I0[3] -pin Y2_i__2 I0[3] -pin Y2_i__3 I0[3] -pin Y2_i__4 I0[3] -pin Y2_i__5 I0[3]
load net A[4] -attr @rip A[4] -port A[4] -pin OVF0_i__0 I0[4] -pin OVF0_i__3 I0[4] -pin OVF0_i__5 I0[4] -pin Y0_i I0[4] -pin Y0_i__0 I0[4] -pin Y0_i__1 I0[4] -pin Y0_i__10 I0[4] -pin Y0_i__11 I0[4] -pin Y0_i__2 I0[4] -pin Y0_i__3 I0[4] -pin Y0_i__4 I0[4] -pin Y0_i__5 I0[4] -pin Y0_i__6 I0[4] -pin Y0_i__7 I0[4] -pin Y0_i__8 I0[4] -pin Y0_i__9 I0[4] -pin Y2_i I0[4] -pin Y2_i__0 I0[4] -pin Y2_i__1 I0[4] -pin Y2_i__2 I0[4] -pin Y2_i__3 I0[4] -pin Y2_i__4 I0[4] -pin Y2_i__5 I0[4]
load net A[5] -attr @rip A[5] -port A[5] -pin OVF0_i__0 I0[5] -pin OVF0_i__3 I0[5] -pin OVF0_i__5 I0[5] -pin Y0_i I0[5] -pin Y0_i__0 I0[5] -pin Y0_i__1 I0[5] -pin Y0_i__10 I0[5] -pin Y0_i__11 I0[5] -pin Y0_i__2 I0[5] -pin Y0_i__3 I0[5] -pin Y0_i__4 I0[5] -pin Y0_i__5 I0[5] -pin Y0_i__6 I0[5] -pin Y0_i__7 I0[5] -pin Y0_i__8 I0[5] -pin Y0_i__9 I0[5] -pin Y2_i I0[5] -pin Y2_i__0 I0[5] -pin Y2_i__1 I0[5] -pin Y2_i__2 I0[5] -pin Y2_i__3 I0[5] -pin Y2_i__4 I0[5] -pin Y2_i__5 I0[5]
load net A[6] -attr @rip A[6] -port A[6] -pin OVF0_i__0 I0[6] -pin OVF0_i__3 I0[6] -pin OVF0_i__5 I0[6] -pin Y0_i I0[6] -pin Y0_i__0 I0[6] -pin Y0_i__1 I0[6] -pin Y0_i__10 I0[6] -pin Y0_i__11 I0[6] -pin Y0_i__2 I0[6] -pin Y0_i__3 I0[6] -pin Y0_i__4 I0[6] -pin Y0_i__5 I0[6] -pin Y0_i__6 I0[6] -pin Y0_i__7 I0[6] -pin Y0_i__8 I0[6] -pin Y0_i__9 I0[6] -pin Y2_i I0[6] -pin Y2_i__0 I0[6] -pin Y2_i__1 I0[6] -pin Y2_i__2 I0[6] -pin Y2_i__3 I0[6] -pin Y2_i__4 I0[6] -pin Y2_i__5 I0[6]
load net A[7] -attr @rip A[7] -port A[7] -pin OVF0_i__0 I0[7] -pin OVF0_i__3 I0[7] -pin OVF0_i__4 I0 -pin OVF0_i__5 I0[7] -pin OVF1_i I0 -pin OVF1_i__0 I1 -pin OVF1_i__1 I0 -pin OVF1_i__2 I1 -pin OVF1_i__3 I0 -pin Y0_i I0[7] -pin Y0_i__0 I0[7] -pin Y0_i__1 I0[7] -pin Y0_i__10 I0[7] -pin Y0_i__11 I0[7] -pin Y0_i__2 I0[7] -pin Y0_i__3 I0[7] -pin Y0_i__4 I0[7] -pin Y0_i__5 I0[7] -pin Y0_i__6 I0[7] -pin Y0_i__7 I0[7] -pin Y0_i__8 I0[7] -pin Y0_i__9 I0[7] -pin Y2_i I0[7] -pin Y2_i__0 I0[7] -pin Y2_i__1 I0[7] -pin Y2_i__2 I0[7] -pin Y2_i__3 I0[7] -pin Y2_i__4 I0[7] -pin Y2_i__5 I0[7]
load net B[0] -attr @rip B[0] -port B[0] -pin OVF0_i__0 I1[0] -pin Y0_i I1[0] -pin Y0_i__0 I1[0] -pin Y0_i__1 I1[0] -pin Y0_i__10 I1[0] -pin Y0_i__11 I1[0] -pin Y0_i__3 I1[0] -pin Y0_i__4 I1[0] -pin Y0_i__7 I1[0] -pin Y0_i__8 I1[0] -pin Y0_i__9 I1[0] -pin Y2_i I1[0] -pin Y2_i__0 I1[0] -pin Y2_i__1 I1[0] -pin Y2_i__2 I1[0] -pin Y2_i__3 I1[0] -pin Y2_i__4 I1[0] -pin Y2_i__5 I1[0]
load net B[1] -attr @rip B[1] -port B[1] -pin OVF0_i__0 I1[1] -pin Y0_i I1[1] -pin Y0_i__0 I1[1] -pin Y0_i__1 I1[1] -pin Y0_i__10 I1[1] -pin Y0_i__11 I1[1] -pin Y0_i__3 I1[1] -pin Y0_i__4 I1[1] -pin Y0_i__7 I1[1] -pin Y0_i__8 I1[1] -pin Y0_i__9 I1[1] -pin Y2_i I1[1] -pin Y2_i__0 I1[1] -pin Y2_i__1 I1[1] -pin Y2_i__2 I1[1] -pin Y2_i__3 I1[1] -pin Y2_i__4 I1[1] -pin Y2_i__5 I1[1]
load net B[2] -attr @rip B[2] -port B[2] -pin OVF0_i__0 I1[2] -pin Y0_i I1[2] -pin Y0_i__0 I1[2] -pin Y0_i__1 I1[2] -pin Y0_i__10 I1[2] -pin Y0_i__11 I1[2] -pin Y0_i__3 I1[2] -pin Y0_i__4 I1[2] -pin Y0_i__7 I1[2] -pin Y0_i__8 I1[2] -pin Y0_i__9 I1[2] -pin Y2_i I1[2] -pin Y2_i__0 I1[2] -pin Y2_i__1 I1[2] -pin Y2_i__2 I1[2] -pin Y2_i__3 I1[2] -pin Y2_i__4 I1[2] -pin Y2_i__5 I1[2]
load net B[3] -attr @rip B[3] -port B[3] -pin OVF0_i__0 I1[3] -pin Y0_i I1[3] -pin Y0_i__0 I1[3] -pin Y0_i__1 I1[3] -pin Y0_i__3 I1[3] -pin Y0_i__4 I1[3] -pin Y0_i__7 I1[3] -pin Y0_i__8 I1[3] -pin Y2_i I1[3] -pin Y2_i__0 I1[3] -pin Y2_i__1 I1[3] -pin Y2_i__2 I1[3] -pin Y2_i__3 I1[3] -pin Y2_i__4 I1[3] -pin Y2_i__5 I1[3]
load net B[4] -attr @rip B[4] -port B[4] -pin OVF0_i__0 I1[4] -pin Y0_i I1[4] -pin Y0_i__0 I1[4] -pin Y0_i__1 I1[4] -pin Y0_i__3 I1[4] -pin Y0_i__4 I1[4] -pin Y0_i__7 I1[4] -pin Y0_i__8 I1[4] -pin Y2_i I1[4] -pin Y2_i__0 I1[4] -pin Y2_i__1 I1[4] -pin Y2_i__2 I1[4] -pin Y2_i__3 I1[4] -pin Y2_i__4 I1[4] -pin Y2_i__5 I1[4]
load net B[5] -attr @rip B[5] -port B[5] -pin OVF0_i__0 I1[5] -pin Y0_i I1[5] -pin Y0_i__0 I1[5] -pin Y0_i__1 I1[5] -pin Y0_i__3 I1[5] -pin Y0_i__4 I1[5] -pin Y0_i__7 I1[5] -pin Y0_i__8 I1[5] -pin Y2_i I1[5] -pin Y2_i__0 I1[5] -pin Y2_i__1 I1[5] -pin Y2_i__2 I1[5] -pin Y2_i__3 I1[5] -pin Y2_i__4 I1[5] -pin Y2_i__5 I1[5]
load net B[6] -attr @rip B[6] -port B[6] -pin OVF0_i__0 I1[6] -pin Y0_i I1[6] -pin Y0_i__0 I1[6] -pin Y0_i__1 I1[6] -pin Y0_i__3 I1[6] -pin Y0_i__4 I1[6] -pin Y0_i__7 I1[6] -pin Y0_i__8 I1[6] -pin Y2_i I1[6] -pin Y2_i__0 I1[6] -pin Y2_i__1 I1[6] -pin Y2_i__2 I1[6] -pin Y2_i__3 I1[6] -pin Y2_i__4 I1[6] -pin Y2_i__5 I1[6]
load net B[7] -attr @rip B[7] -port B[7] -pin OVF0_i__0 I1[7] -pin OVF1_i I1 -pin OVF1_i__1 I1 -pin Y0_i I1[7] -pin Y0_i__0 I1[7] -pin Y0_i__1 I1[7] -pin Y0_i__3 I1[7] -pin Y0_i__4 I1[7] -pin Y0_i__7 I1[7] -pin Y0_i__8 I1[7] -pin Y2_i I1[7] -pin Y2_i__0 I1[7] -pin Y2_i__1 I1[7] -pin Y2_i__2 I1[7] -pin Y2_i__3 I1[7] -pin Y2_i__4 I1[7] -pin Y2_i__5 I1[7]
load net OVF -port OVF -pin OVF_i__10 O
netloc OVF 1 19 1 NJ 690
load net OVF0 -pin OVF0_i__4 O -pin OVF_i__2 I0
netloc OVF0 1 10 1 N 50
load net OVF0_i__0_n_0 -attr @rip O[8] -pin OVF0_i__0 O[8] -pin OVF_i I1
netloc OVF0_i__0_n_0 1 13 1 4630 790n
load net OVF0_i__1_n_0 -pin OVF0_i__1 O -pin OVF_i__0 I0
netloc OVF0_i__1_n_0 1 12 1 4300 490n
load net OVF0_i__2_n_0 -pin OVF0_i__2 O -pin OVF_i__1 I0
netloc OVF0_i__2_n_0 1 11 1 3870 190n
load net OVF0_i__5_n_0 -pin OVF0_i__5 O -pin OVF_i__2 I1
netloc OVF0_i__5_n_0 1 10 1 3460 70n
load net OVF0_i_n_0 -pin OVF0_i O -pin OVF_i I0
netloc OVF0_i_n_0 1 13 1 4710 790n
load net OVF1 -pin OVF0_i__4 I1 -pin OVF1_i__4 O
netloc OVF1 1 9 1 NJ 60
load net OVF1_i__0_n_0 -pin OVF0_i I1 -pin OVF1_i__0 O
netloc OVF1_i__0_n_0 1 12 1 4220 910n
load net OVF1_i__1_n_0 -pin OVF0_i__1 I0 -pin OVF1_i__1 O
netloc OVF1_i__1_n_0 1 11 1 N 670
load net OVF1_i__2_n_0 -pin OVF0_i__1 I1 -pin OVF1_i__2 O
netloc OVF1_i__2_n_0 1 11 1 3870 690n
load net OVF1_i__3_n_0 -pin OVF0_i__2 I0 -pin OVF1_i__3 O
netloc OVF1_i__3_n_0 1 10 1 3460 180n
load net OVF1_i_n_0 -pin OVF0_i I0 -pin OVF1_i O
netloc OVF1_i_n_0 1 12 1 4260 810n
load net OVF_i__0_n_0 -pin OVF_i__0 O -pin OVF_i__5 I0
netloc OVF_i__0_n_0 1 13 1 N 500
load net OVF_i__1_n_0 -pin OVF_i__1 O -pin OVF_i__4 I0
netloc OVF_i__1_n_0 1 12 1 4260 270n
load net OVF_i__2_n_0 -pin OVF_i__2 O -pin OVF_i__3 I0
netloc OVF_i__2_n_0 1 11 1 3910 60n
load net OVF_i__3_n_0 -pin OVF_i__3 O -pin OVF_i__4 I1
netloc OVF_i__3_n_0 1 12 1 4220 510n
load net OVF_i__4_n_0 -pin OVF_i__4 O -pin OVF_i__5 I1
netloc OVF_i__4_n_0 1 13 1 4710 520n
load net OVF_i__5_n_0 -pin OVF_i__5 O -pin OVF_i__6 I1
netloc OVF_i__5_n_0 1 14 1 5000 510n
load net OVF_i__6_n_0 -pin OVF_i__6 O -pin OVF_i__7 I1
netloc OVF_i__6_n_0 1 15 1 5330 690n
load net OVF_i__7_n_0 -pin OVF_i__7 O -pin OVF_i__8 I1
netloc OVF_i__7_n_0 1 16 1 5660 690n
load net OVF_i__8_n_0 -pin OVF_i__8 O -pin OVF_i__9 I1
netloc OVF_i__8_n_0 1 17 1 N 710
load net OVF_i__9_n_0 -pin OVF_i__10 I1 -pin OVF_i__9 O
netloc OVF_i__9_n_0 1 18 1 N 700
load net OVF_i_n_0 -pin OVF_i O -pin OVF_i__6 I0
netloc OVF_i_n_0 1 14 1 5060 680n
load net Y0_i__0_n_0 -attr @rip O[7] -pin Y0_i__0 O[7] -pin Y_i__21 I0[7]
load net Y0_i__0_n_1 -attr @rip O[6] -pin Y0_i__0 O[6] -pin Y_i__21 I0[6]
load net Y0_i__0_n_2 -attr @rip O[5] -pin Y0_i__0 O[5] -pin Y_i__21 I0[5]
load net Y0_i__0_n_3 -attr @rip O[4] -pin Y0_i__0 O[4] -pin Y_i__21 I0[4]
load net Y0_i__0_n_4 -attr @rip O[3] -pin Y0_i__0 O[3] -pin Y_i__21 I0[3]
load net Y0_i__0_n_5 -attr @rip O[2] -pin Y0_i__0 O[2] -pin Y_i__21 I0[2]
load net Y0_i__0_n_6 -attr @rip O[1] -pin Y0_i__0 O[1] -pin Y_i__21 I0[1]
load net Y0_i__0_n_7 -attr @rip O[0] -pin Y0_i__0 O[0] -pin Y_i__21 I0[0]
load net Y0_i__12_n_0 -attr @rip O[1] -pin Y0_i__12 O[1] -pin Y_i__10 I0[1]
load net Y0_i__12_n_1 -attr @rip O[0] -pin Y0_i__12 O[0] -pin Y_i__10 I0[0]
load net Y0_i__13_n_0 -attr @rip O[1] -pin Y0_i__13 O[1] -pin Y_i__4 I0[1]
load net Y0_i__13_n_1 -attr @rip O[0] -pin Y0_i__13 O[0] -pin Y_i__4 I0[0]
load net Y0_i__14_n_0 -attr @rip O[1] -pin Y0_i__14 O[1] -pin Y_i__4 I1[1]
load net Y0_i__14_n_1 -attr @rip O[0] -pin Y0_i__14 O[0] -pin Y_i__4 I1[0]
load net Y0_i__15_n_0 -attr @rip O[1] -pin Y0_i__15 O[1] -pin Y_i__5 I0[1]
load net Y0_i__15_n_1 -attr @rip O[0] -pin Y0_i__15 O[0] -pin Y_i__5 I0[0]
load net Y0_i__16_n_0 -attr @rip O[1] -pin Y0_i__16 O[1] -pin Y_i__5 I1[1]
load net Y0_i__16_n_1 -attr @rip O[0] -pin Y0_i__16 O[0] -pin Y_i__5 I1[0]
load net Y0_i__17_n_0 -attr @rip O[1] -pin Y0_i__17 O[1] -pin Y_i__6 I0[1]
load net Y0_i__17_n_1 -attr @rip O[0] -pin Y0_i__17 O[0] -pin Y_i__6 I0[0]
load net Y0_i__18_n_0 -attr @rip O[1] -pin Y0_i__18 O[1] -pin Y_i__6 I1[1]
load net Y0_i__18_n_1 -attr @rip O[0] -pin Y0_i__18 O[0] -pin Y_i__6 I1[0]
load net Y0_i__2_n_0 -attr @rip O[7] -pin Y0_i__2 O[7] -pin Y_i__19 I0[7]
load net Y0_i__2_n_1 -attr @rip O[6] -pin Y0_i__2 O[6] -pin Y_i__19 I0[6]
load net Y0_i__2_n_2 -attr @rip O[5] -pin Y0_i__2 O[5] -pin Y_i__19 I0[5]
load net Y0_i__2_n_3 -attr @rip O[4] -pin Y0_i__2 O[4] -pin Y_i__19 I0[4]
load net Y0_i__2_n_4 -attr @rip O[3] -pin Y0_i__2 O[3] -pin Y_i__19 I0[3]
load net Y0_i__2_n_5 -attr @rip O[2] -pin Y0_i__2 O[2] -pin Y_i__19 I0[2]
load net Y0_i__2_n_6 -attr @rip O[1] -pin Y0_i__2 O[1] -pin Y_i__19 I0[1]
load net Y0_i__2_n_7 -attr @rip O[0] -pin Y0_i__2 O[0] -pin Y_i__19 I0[0]
load net Y0_i__3_n_1 -attr @rip O[6] -pin Y0_i__3 O[6] -pin Y_i I0[6] -pin Y_i I1[6]
load net Y0_i__3_n_2 -attr @rip O[5] -pin Y0_i__3 O[5] -pin Y_i I0[5] -pin Y_i I1[5]
load net Y0_i__3_n_3 -attr @rip O[4] -pin Y0_i__3 O[4] -pin Y_i I0[4] -pin Y_i I1[4]
load net Y0_i__3_n_4 -attr @rip O[3] -pin Y0_i__3 O[3] -pin Y_i I0[3] -pin Y_i I1[3]
load net Y0_i__3_n_5 -attr @rip O[2] -pin Y0_i__3 O[2] -pin Y_i I0[2] -pin Y_i I1[2]
load net Y0_i__3_n_6 -attr @rip O[1] -pin Y0_i__3 O[1] -pin Y_i I0[1] -pin Y_i I1[1]
load net Y0_i__3_n_7 -attr @rip O[0] -pin Y0_i__3 O[0] -pin Y_i I0[0] -pin Y_i I1[0]
load net Y0_i__4_n_0 -attr @rip O[7] -pin OVF1_i__2 I0 -pin Y0_i__4 O[7] -pin Y_i__0 I0[15] -pin Y_i__0 I0[14] -pin Y_i__0 I0[13] -pin Y_i__0 I0[12] -pin Y_i__0 I0[11] -pin Y_i__0 I0[10] -pin Y_i__0 I0[9] -pin Y_i__0 I0[8] -pin Y_i__0 I0[7] -pin Y_i__0 I1[7]
load net Y0_i__4_n_1 -attr @rip O[6] -pin Y0_i__4 O[6] -pin Y_i__0 I0[6] -pin Y_i__0 I1[6]
load net Y0_i__4_n_2 -attr @rip O[5] -pin Y0_i__4 O[5] -pin Y_i__0 I0[5] -pin Y_i__0 I1[5]
load net Y0_i__4_n_3 -attr @rip O[4] -pin Y0_i__4 O[4] -pin Y_i__0 I0[4] -pin Y_i__0 I1[4]
load net Y0_i__4_n_4 -attr @rip O[3] -pin Y0_i__4 O[3] -pin Y_i__0 I0[3] -pin Y_i__0 I1[3]
load net Y0_i__4_n_5 -attr @rip O[2] -pin Y0_i__4 O[2] -pin Y_i__0 I0[2] -pin Y_i__0 I1[2]
load net Y0_i__4_n_6 -attr @rip O[1] -pin Y0_i__4 O[1] -pin Y_i__0 I0[1] -pin Y_i__0 I1[1]
load net Y0_i__4_n_7 -attr @rip O[0] -pin Y0_i__4 O[0] -pin Y_i__0 I0[0] -pin Y_i__0 I1[0]
load net Y0_i__5_n_0 -attr @rip O[7] -pin OVF0_i__2 I1 -pin Y0_i__5 O[7] -pin Y_i__1 I0[15] -pin Y_i__1 I0[14] -pin Y_i__1 I0[13] -pin Y_i__1 I0[12] -pin Y_i__1 I0[11] -pin Y_i__1 I0[10] -pin Y_i__1 I0[9] -pin Y_i__1 I0[8] -pin Y_i__1 I0[7] -pin Y_i__1 I1[7]
load net Y0_i__5_n_1 -attr @rip O[6] -pin Y0_i__5 O[6] -pin Y_i__1 I0[6] -pin Y_i__1 I1[6]
load net Y0_i__5_n_2 -attr @rip O[5] -pin Y0_i__5 O[5] -pin Y_i__1 I0[5] -pin Y_i__1 I1[5]
load net Y0_i__5_n_3 -attr @rip O[4] -pin Y0_i__5 O[4] -pin Y_i__1 I0[4] -pin Y_i__1 I1[4]
load net Y0_i__5_n_4 -attr @rip O[3] -pin Y0_i__5 O[3] -pin Y_i__1 I0[3] -pin Y_i__1 I1[3]
load net Y0_i__5_n_5 -attr @rip O[2] -pin Y0_i__5 O[2] -pin Y_i__1 I0[2] -pin Y_i__1 I1[2]
load net Y0_i__5_n_6 -attr @rip O[1] -pin Y0_i__5 O[1] -pin Y_i__1 I0[1] -pin Y_i__1 I1[1]
load net Y0_i__5_n_7 -attr @rip O[0] -pin Y0_i__5 O[0] -pin Y_i__1 I0[0] -pin Y_i__1 I1[0]
load net Y0_i__6_n_1 -attr @rip O[6] -pin Y0_i__6 O[6] -pin Y_i__2 I0[6] -pin Y_i__2 I1[6]
load net Y0_i__6_n_2 -attr @rip O[5] -pin Y0_i__6 O[5] -pin Y_i__2 I0[5] -pin Y_i__2 I1[5]
load net Y0_i__6_n_3 -attr @rip O[4] -pin Y0_i__6 O[4] -pin Y_i__2 I0[4] -pin Y_i__2 I1[4]
load net Y0_i__6_n_4 -attr @rip O[3] -pin Y0_i__6 O[3] -pin Y_i__2 I0[3] -pin Y_i__2 I1[3]
load net Y0_i__6_n_5 -attr @rip O[2] -pin Y0_i__6 O[2] -pin Y_i__2 I0[2] -pin Y_i__2 I1[2]
load net Y0_i__6_n_6 -attr @rip O[1] -pin Y0_i__6 O[1] -pin Y_i__2 I0[1] -pin Y_i__2 I1[1]
load net Y0_i__6_n_7 -attr @rip O[0] -pin Y0_i__6 O[0] -pin Y_i__2 I0[0] -pin Y_i__2 I1[0]
load net Y0_i__7_n_0 -attr @rip O[15] -pin Y0_i__7 O[15] -pin Y_i__3 I0[15]
load net Y0_i__7_n_1 -attr @rip O[14] -pin Y0_i__7 O[14] -pin Y_i__3 I0[14]
load net Y0_i__7_n_10 -attr @rip O[5] -pin Y0_i__7 O[5] -pin Y_i__3 I0[5]
load net Y0_i__7_n_11 -attr @rip O[4] -pin Y0_i__7 O[4] -pin Y_i__3 I0[4]
load net Y0_i__7_n_12 -attr @rip O[3] -pin Y0_i__7 O[3] -pin Y_i__3 I0[3]
load net Y0_i__7_n_13 -attr @rip O[2] -pin Y0_i__7 O[2] -pin Y_i__3 I0[2]
load net Y0_i__7_n_14 -attr @rip O[1] -pin Y0_i__7 O[1] -pin Y_i__3 I0[1]
load net Y0_i__7_n_15 -attr @rip O[0] -pin Y0_i__7 O[0] -pin Y_i__3 I0[0]
load net Y0_i__7_n_2 -attr @rip O[13] -pin Y0_i__7 O[13] -pin Y_i__3 I0[13]
load net Y0_i__7_n_3 -attr @rip O[12] -pin Y0_i__7 O[12] -pin Y_i__3 I0[12]
load net Y0_i__7_n_4 -attr @rip O[11] -pin Y0_i__7 O[11] -pin Y_i__3 I0[11]
load net Y0_i__7_n_5 -attr @rip O[10] -pin Y0_i__7 O[10] -pin Y_i__3 I0[10]
load net Y0_i__7_n_6 -attr @rip O[9] -pin Y0_i__7 O[9] -pin Y_i__3 I0[9]
load net Y0_i__7_n_7 -attr @rip O[8] -pin Y0_i__7 O[8] -pin Y_i__3 I0[8]
load net Y0_i__7_n_8 -attr @rip O[7] -pin Y0_i__7 O[7] -pin Y_i__3 I0[7]
load net Y0_i__7_n_9 -attr @rip O[6] -pin Y0_i__7 O[6] -pin Y_i__3 I0[6]
load net Y0_i__8_n_0 -attr @rip O[15] -pin Y0_i__8 O[15] -pin Y_i__3 I1[15]
load net Y0_i__8_n_1 -attr @rip O[14] -pin Y0_i__8 O[14] -pin Y_i__3 I1[14]
load net Y0_i__8_n_10 -attr @rip O[5] -pin Y0_i__8 O[5] -pin Y_i__3 I1[5]
load net Y0_i__8_n_11 -attr @rip O[4] -pin Y0_i__8 O[4] -pin Y_i__3 I1[4]
load net Y0_i__8_n_12 -attr @rip O[3] -pin Y0_i__8 O[3] -pin Y_i__3 I1[3]
load net Y0_i__8_n_13 -attr @rip O[2] -pin Y0_i__8 O[2] -pin Y_i__3 I1[2]
load net Y0_i__8_n_14 -attr @rip O[1] -pin Y0_i__8 O[1] -pin Y_i__3 I1[1]
load net Y0_i__8_n_15 -attr @rip O[0] -pin Y0_i__8 O[0] -pin Y_i__3 I1[0]
load net Y0_i__8_n_2 -attr @rip O[13] -pin Y0_i__8 O[13] -pin Y_i__3 I1[13]
load net Y0_i__8_n_3 -attr @rip O[12] -pin Y0_i__8 O[12] -pin Y_i__3 I1[12]
load net Y0_i__8_n_4 -attr @rip O[11] -pin Y0_i__8 O[11] -pin Y_i__3 I1[11]
load net Y0_i__8_n_5 -attr @rip O[10] -pin Y0_i__8 O[10] -pin Y_i__3 I1[10]
load net Y0_i__8_n_6 -attr @rip O[9] -pin Y0_i__8 O[9] -pin Y_i__3 I1[9]
load net Y0_i__8_n_7 -attr @rip O[8] -pin Y0_i__8 O[8] -pin Y_i__3 I1[8]
load net Y0_i__8_n_8 -attr @rip O[7] -pin Y0_i__8 O[7] -pin Y_i__3 I1[7]
load net Y0_i__8_n_9 -attr @rip O[6] -pin Y0_i__8 O[6] -pin Y_i__3 I1[6]
load net Y0_i_n_0 -attr @rip O[7] -pin Y0_i O[7] -pin Y_i__22 I0[7]
load net Y0_i_n_1 -attr @rip O[6] -pin Y0_i O[6] -pin Y_i__22 I0[6]
load net Y0_i_n_2 -attr @rip O[5] -pin Y0_i O[5] -pin Y_i__22 I0[5]
load net Y0_i_n_3 -attr @rip O[4] -pin Y0_i O[4] -pin Y_i__22 I0[4]
load net Y0_i_n_4 -attr @rip O[3] -pin Y0_i O[3] -pin Y_i__22 I0[3]
load net Y0_i_n_5 -attr @rip O[2] -pin Y0_i O[2] -pin Y_i__22 I0[2]
load net Y0_i_n_6 -attr @rip O[1] -pin Y0_i O[1] -pin Y_i__22 I0[1]
load net Y0_i_n_7 -attr @rip O[0] -pin Y0_i O[0] -pin Y_i__22 I0[0]
load net Y2 -pin Y0_i__12 S -pin Y2_i O
netloc Y2 1 5 1 1710J 540n
load net Y2_i__0_n_0 -pin Y0_i__13 S -pin Y2_i__0 O
netloc Y2_i__0_n_0 1 3 1 1040 360n
load net Y2_i__1_n_0 -pin Y0_i__14 S -pin Y2_i__1 O
netloc Y2_i__1_n_0 1 3 1 N 480
load net Y2_i__2_n_0 -pin Y0_i__15 S -pin Y2_i__2 O
netloc Y2_i__2_n_0 1 2 1 N 830
load net Y2_i__3_n_0 -pin Y0_i__16 S -pin Y2_i__3 O
netloc Y2_i__3_n_0 1 2 1 590 920n
load net Y2_i__4_n_0 -pin Y0_i__17 S -pin Y2_i__4 O
netloc Y2_i__4_n_0 1 1 1 220 520n
load net Y2_i__5_n_0 -pin OVF_i__0 I1 -pin Y0_i__18 S -pin Y2_i__5 O
netloc Y2_i__5_n_0 1 1 12 280 730N 670J 570 NJ 570 1430J 610 NJ 610 NJ 610 2380J 620 2740J 600 NJ 600 NJ 600 NJ 600 4240
load net Y[0] -attr @rip O[0] -port Y[0] -pin Y_i__22 O[0]
load net Y[10] -attr @rip O[10] -port Y[10] -pin Y_i__22 O[10]
load net Y[11] -attr @rip O[11] -port Y[11] -pin Y_i__22 O[11]
load net Y[12] -attr @rip O[12] -port Y[12] -pin Y_i__22 O[12]
load net Y[13] -attr @rip O[13] -port Y[13] -pin Y_i__22 O[13]
load net Y[14] -attr @rip O[14] -port Y[14] -pin Y_i__22 O[14]
load net Y[15] -attr @rip O[15] -port Y[15] -pin Y_i__22 O[15]
load net Y[1] -attr @rip O[1] -port Y[1] -pin Y_i__22 O[1]
load net Y[2] -attr @rip O[2] -port Y[2] -pin Y_i__22 O[2]
load net Y[3] -attr @rip O[3] -port Y[3] -pin Y_i__22 O[3]
load net Y[4] -attr @rip O[4] -port Y[4] -pin Y_i__22 O[4]
load net Y[5] -attr @rip O[5] -port Y[5] -pin Y_i__22 O[5]
load net Y[6] -attr @rip O[6] -port Y[6] -pin Y_i__22 O[6]
load net Y[7] -attr @rip O[7] -port Y[7] -pin Y_i__22 O[7]
load net Y[8] -attr @rip O[8] -port Y[8] -pin Y_i__22 O[8]
load net Y[9] -attr @rip O[9] -port Y[9] -pin Y_i__22 O[9]
load net Y_i__0_n_0 -attr @rip O[15] -pin Y_i__0 O[15] -pin Y_i__17 I0[15]
load net Y_i__0_n_1 -attr @rip O[14] -pin Y_i__0 O[14] -pin Y_i__17 I0[14]
load net Y_i__0_n_10 -attr @rip O[5] -pin Y_i__0 O[5] -pin Y_i__17 I0[5]
load net Y_i__0_n_11 -attr @rip O[4] -pin Y_i__0 O[4] -pin Y_i__17 I0[4]
load net Y_i__0_n_12 -attr @rip O[3] -pin Y_i__0 O[3] -pin Y_i__17 I0[3]
load net Y_i__0_n_13 -attr @rip O[2] -pin Y_i__0 O[2] -pin Y_i__17 I0[2]
load net Y_i__0_n_14 -attr @rip O[1] -pin Y_i__0 O[1] -pin Y_i__17 I0[1]
load net Y_i__0_n_15 -attr @rip O[0] -pin Y_i__0 O[0] -pin Y_i__17 I0[0]
load net Y_i__0_n_2 -attr @rip O[13] -pin Y_i__0 O[13] -pin Y_i__17 I0[13]
load net Y_i__0_n_3 -attr @rip O[12] -pin Y_i__0 O[12] -pin Y_i__17 I0[12]
load net Y_i__0_n_4 -attr @rip O[11] -pin Y_i__0 O[11] -pin Y_i__17 I0[11]
load net Y_i__0_n_5 -attr @rip O[10] -pin Y_i__0 O[10] -pin Y_i__17 I0[10]
load net Y_i__0_n_6 -attr @rip O[9] -pin Y_i__0 O[9] -pin Y_i__17 I0[9]
load net Y_i__0_n_7 -attr @rip O[8] -pin Y_i__0 O[8] -pin Y_i__17 I0[8]
load net Y_i__0_n_8 -attr @rip O[7] -pin Y_i__0 O[7] -pin Y_i__17 I0[7]
load net Y_i__0_n_9 -attr @rip O[6] -pin Y_i__0 O[6] -pin Y_i__17 I0[6]
load net Y_i__10_n_0 -attr @rip O[1] -pin Y_i__10 O[1] -pin Y_i__11 I1[1]
load net Y_i__10_n_1 -attr @rip O[0] -pin Y_i__10 O[0] -pin Y_i__11 I1[0]
load net Y_i__11_n_0 -attr @rip O[15] -pin Y_i__11 O[15] -pin Y_i__12 I1[15]
load net Y_i__11_n_1 -attr @rip O[14] -pin Y_i__11 O[14] -pin Y_i__12 I1[14]
load net Y_i__11_n_10 -attr @rip O[5] -pin Y_i__11 O[5] -pin Y_i__12 I1[5]
load net Y_i__11_n_11 -attr @rip O[4] -pin Y_i__11 O[4] -pin Y_i__12 I1[4]
load net Y_i__11_n_12 -attr @rip O[3] -pin Y_i__11 O[3] -pin Y_i__12 I1[3]
load net Y_i__11_n_13 -attr @rip O[2] -pin Y_i__11 O[2] -pin Y_i__12 I1[2]
load net Y_i__11_n_14 -attr @rip O[1] -pin Y_i__11 O[1] -pin Y_i__12 I1[1]
load net Y_i__11_n_15 -attr @rip O[0] -pin Y_i__11 O[0] -pin Y_i__12 I1[0]
load net Y_i__11_n_2 -attr @rip O[13] -pin Y_i__11 O[13] -pin Y_i__12 I1[13]
load net Y_i__11_n_3 -attr @rip O[12] -pin Y_i__11 O[12] -pin Y_i__12 I1[12]
load net Y_i__11_n_4 -attr @rip O[11] -pin Y_i__11 O[11] -pin Y_i__12 I1[11]
load net Y_i__11_n_5 -attr @rip O[10] -pin Y_i__11 O[10] -pin Y_i__12 I1[10]
load net Y_i__11_n_6 -attr @rip O[9] -pin Y_i__11 O[9] -pin Y_i__12 I1[9]
load net Y_i__11_n_7 -attr @rip O[8] -pin Y_i__11 O[8] -pin Y_i__12 I1[8]
load net Y_i__11_n_8 -attr @rip O[7] -pin Y_i__11 O[7] -pin Y_i__12 I1[7]
load net Y_i__11_n_9 -attr @rip O[6] -pin Y_i__11 O[6] -pin Y_i__12 I1[6]
load net Y_i__12_n_0 -attr @rip O[15] -pin Y_i__12 O[15] -pin Y_i__13 I1[15]
load net Y_i__12_n_1 -attr @rip O[14] -pin Y_i__12 O[14] -pin Y_i__13 I1[14]
load net Y_i__12_n_10 -attr @rip O[5] -pin Y_i__12 O[5] -pin Y_i__13 I1[5]
load net Y_i__12_n_11 -attr @rip O[4] -pin Y_i__12 O[4] -pin Y_i__13 I1[4]
load net Y_i__12_n_12 -attr @rip O[3] -pin Y_i__12 O[3] -pin Y_i__13 I1[3]
load net Y_i__12_n_13 -attr @rip O[2] -pin Y_i__12 O[2] -pin Y_i__13 I1[2]
load net Y_i__12_n_14 -attr @rip O[1] -pin Y_i__12 O[1] -pin Y_i__13 I1[1]
load net Y_i__12_n_15 -attr @rip O[0] -pin Y_i__12 O[0] -pin Y_i__13 I1[0]
load net Y_i__12_n_2 -attr @rip O[13] -pin Y_i__12 O[13] -pin Y_i__13 I1[13]
load net Y_i__12_n_3 -attr @rip O[12] -pin Y_i__12 O[12] -pin Y_i__13 I1[12]
load net Y_i__12_n_4 -attr @rip O[11] -pin Y_i__12 O[11] -pin Y_i__13 I1[11]
load net Y_i__12_n_5 -attr @rip O[10] -pin Y_i__12 O[10] -pin Y_i__13 I1[10]
load net Y_i__12_n_6 -attr @rip O[9] -pin Y_i__12 O[9] -pin Y_i__13 I1[9]
load net Y_i__12_n_7 -attr @rip O[8] -pin Y_i__12 O[8] -pin Y_i__13 I1[8]
load net Y_i__12_n_8 -attr @rip O[7] -pin Y_i__12 O[7] -pin Y_i__13 I1[7]
load net Y_i__12_n_9 -attr @rip O[6] -pin Y_i__12 O[6] -pin Y_i__13 I1[6]
load net Y_i__13_n_0 -attr @rip O[15] -pin Y_i__13 O[15] -pin Y_i__14 I1[15]
load net Y_i__13_n_1 -attr @rip O[14] -pin Y_i__13 O[14] -pin Y_i__14 I1[14]
load net Y_i__13_n_10 -attr @rip O[5] -pin Y_i__13 O[5] -pin Y_i__14 I1[5]
load net Y_i__13_n_11 -attr @rip O[4] -pin Y_i__13 O[4] -pin Y_i__14 I1[4]
load net Y_i__13_n_12 -attr @rip O[3] -pin Y_i__13 O[3] -pin Y_i__14 I1[3]
load net Y_i__13_n_13 -attr @rip O[2] -pin Y_i__13 O[2] -pin Y_i__14 I1[2]
load net Y_i__13_n_14 -attr @rip O[1] -pin Y_i__13 O[1] -pin Y_i__14 I1[1]
load net Y_i__13_n_15 -attr @rip O[0] -pin Y_i__13 O[0] -pin Y_i__14 I1[0]
load net Y_i__13_n_2 -attr @rip O[13] -pin Y_i__13 O[13] -pin Y_i__14 I1[13]
load net Y_i__13_n_3 -attr @rip O[12] -pin Y_i__13 O[12] -pin Y_i__14 I1[12]
load net Y_i__13_n_4 -attr @rip O[11] -pin Y_i__13 O[11] -pin Y_i__14 I1[11]
load net Y_i__13_n_5 -attr @rip O[10] -pin Y_i__13 O[10] -pin Y_i__14 I1[10]
load net Y_i__13_n_6 -attr @rip O[9] -pin Y_i__13 O[9] -pin Y_i__14 I1[9]
load net Y_i__13_n_7 -attr @rip O[8] -pin Y_i__13 O[8] -pin Y_i__14 I1[8]
load net Y_i__13_n_8 -attr @rip O[7] -pin Y_i__13 O[7] -pin Y_i__14 I1[7]
load net Y_i__13_n_9 -attr @rip O[6] -pin Y_i__13 O[6] -pin Y_i__14 I1[6]
load net Y_i__14_n_0 -attr @rip O[15] -pin Y_i__14 O[15] -pin Y_i__15 I1[15]
load net Y_i__14_n_1 -attr @rip O[14] -pin Y_i__14 O[14] -pin Y_i__15 I1[14]
load net Y_i__14_n_10 -attr @rip O[5] -pin Y_i__14 O[5] -pin Y_i__15 I1[5]
load net Y_i__14_n_11 -attr @rip O[4] -pin Y_i__14 O[4] -pin Y_i__15 I1[4]
load net Y_i__14_n_12 -attr @rip O[3] -pin Y_i__14 O[3] -pin Y_i__15 I1[3]
load net Y_i__14_n_13 -attr @rip O[2] -pin Y_i__14 O[2] -pin Y_i__15 I1[2]
load net Y_i__14_n_14 -attr @rip O[1] -pin Y_i__14 O[1] -pin Y_i__15 I1[1]
load net Y_i__14_n_15 -attr @rip O[0] -pin Y_i__14 O[0] -pin Y_i__15 I1[0]
load net Y_i__14_n_2 -attr @rip O[13] -pin Y_i__14 O[13] -pin Y_i__15 I1[13]
load net Y_i__14_n_3 -attr @rip O[12] -pin Y_i__14 O[12] -pin Y_i__15 I1[12]
load net Y_i__14_n_4 -attr @rip O[11] -pin Y_i__14 O[11] -pin Y_i__15 I1[11]
load net Y_i__14_n_5 -attr @rip O[10] -pin Y_i__14 O[10] -pin Y_i__15 I1[10]
load net Y_i__14_n_6 -attr @rip O[9] -pin Y_i__14 O[9] -pin Y_i__15 I1[9]
load net Y_i__14_n_7 -attr @rip O[8] -pin Y_i__14 O[8] -pin Y_i__15 I1[8]
load net Y_i__14_n_8 -attr @rip O[7] -pin Y_i__14 O[7] -pin Y_i__15 I1[7]
load net Y_i__14_n_9 -attr @rip O[6] -pin Y_i__14 O[6] -pin Y_i__15 I1[6]
load net Y_i__15_n_0 -attr @rip O[15] -pin Y_i__15 O[15] -pin Y_i__16 I1[15]
load net Y_i__15_n_1 -attr @rip O[14] -pin Y_i__15 O[14] -pin Y_i__16 I1[14]
load net Y_i__15_n_10 -attr @rip O[5] -pin Y_i__15 O[5] -pin Y_i__16 I1[5]
load net Y_i__15_n_11 -attr @rip O[4] -pin Y_i__15 O[4] -pin Y_i__16 I1[4]
load net Y_i__15_n_12 -attr @rip O[3] -pin Y_i__15 O[3] -pin Y_i__16 I1[3]
load net Y_i__15_n_13 -attr @rip O[2] -pin Y_i__15 O[2] -pin Y_i__16 I1[2]
load net Y_i__15_n_14 -attr @rip O[1] -pin Y_i__15 O[1] -pin Y_i__16 I1[1]
load net Y_i__15_n_15 -attr @rip O[0] -pin Y_i__15 O[0] -pin Y_i__16 I1[0]
load net Y_i__15_n_2 -attr @rip O[13] -pin Y_i__15 O[13] -pin Y_i__16 I1[13]
load net Y_i__15_n_3 -attr @rip O[12] -pin Y_i__15 O[12] -pin Y_i__16 I1[12]
load net Y_i__15_n_4 -attr @rip O[11] -pin Y_i__15 O[11] -pin Y_i__16 I1[11]
load net Y_i__15_n_5 -attr @rip O[10] -pin Y_i__15 O[10] -pin Y_i__16 I1[10]
load net Y_i__15_n_6 -attr @rip O[9] -pin Y_i__15 O[9] -pin Y_i__16 I1[9]
load net Y_i__15_n_7 -attr @rip O[8] -pin Y_i__15 O[8] -pin Y_i__16 I1[8]
load net Y_i__15_n_8 -attr @rip O[7] -pin Y_i__15 O[7] -pin Y_i__16 I1[7]
load net Y_i__15_n_9 -attr @rip O[6] -pin Y_i__15 O[6] -pin Y_i__16 I1[6]
load net Y_i__16_n_0 -attr @rip O[15] -pin Y_i__16 O[15] -pin Y_i__17 I1[15]
load net Y_i__16_n_1 -attr @rip O[14] -pin Y_i__16 O[14] -pin Y_i__17 I1[14]
load net Y_i__16_n_10 -attr @rip O[5] -pin Y_i__16 O[5] -pin Y_i__17 I1[5]
load net Y_i__16_n_11 -attr @rip O[4] -pin Y_i__16 O[4] -pin Y_i__17 I1[4]
load net Y_i__16_n_12 -attr @rip O[3] -pin Y_i__16 O[3] -pin Y_i__17 I1[3]
load net Y_i__16_n_13 -attr @rip O[2] -pin Y_i__16 O[2] -pin Y_i__17 I1[2]
load net Y_i__16_n_14 -attr @rip O[1] -pin Y_i__16 O[1] -pin Y_i__17 I1[1]
load net Y_i__16_n_15 -attr @rip O[0] -pin Y_i__16 O[0] -pin Y_i__17 I1[0]
load net Y_i__16_n_2 -attr @rip O[13] -pin Y_i__16 O[13] -pin Y_i__17 I1[13]
load net Y_i__16_n_3 -attr @rip O[12] -pin Y_i__16 O[12] -pin Y_i__17 I1[12]
load net Y_i__16_n_4 -attr @rip O[11] -pin Y_i__16 O[11] -pin Y_i__17 I1[11]
load net Y_i__16_n_5 -attr @rip O[10] -pin Y_i__16 O[10] -pin Y_i__17 I1[10]
load net Y_i__16_n_6 -attr @rip O[9] -pin Y_i__16 O[9] -pin Y_i__17 I1[9]
load net Y_i__16_n_7 -attr @rip O[8] -pin Y_i__16 O[8] -pin Y_i__17 I1[8]
load net Y_i__16_n_8 -attr @rip O[7] -pin Y_i__16 O[7] -pin Y_i__17 I1[7]
load net Y_i__16_n_9 -attr @rip O[6] -pin Y_i__16 O[6] -pin Y_i__17 I1[6]
load net Y_i__17_n_0 -attr @rip O[15] -pin Y_i__17 O[15] -pin Y_i__18 I1[15]
load net Y_i__17_n_1 -attr @rip O[14] -pin Y_i__17 O[14] -pin Y_i__18 I1[14]
load net Y_i__17_n_10 -attr @rip O[5] -pin Y_i__17 O[5] -pin Y_i__18 I1[5]
load net Y_i__17_n_11 -attr @rip O[4] -pin Y_i__17 O[4] -pin Y_i__18 I1[4]
load net Y_i__17_n_12 -attr @rip O[3] -pin Y_i__17 O[3] -pin Y_i__18 I1[3]
load net Y_i__17_n_13 -attr @rip O[2] -pin Y_i__17 O[2] -pin Y_i__18 I1[2]
load net Y_i__17_n_14 -attr @rip O[1] -pin Y_i__17 O[1] -pin Y_i__18 I1[1]
load net Y_i__17_n_15 -attr @rip O[0] -pin Y_i__17 O[0] -pin Y_i__18 I1[0]
load net Y_i__17_n_2 -attr @rip O[13] -pin Y_i__17 O[13] -pin Y_i__18 I1[13]
load net Y_i__17_n_3 -attr @rip O[12] -pin Y_i__17 O[12] -pin Y_i__18 I1[12]
load net Y_i__17_n_4 -attr @rip O[11] -pin Y_i__17 O[11] -pin Y_i__18 I1[11]
load net Y_i__17_n_5 -attr @rip O[10] -pin Y_i__17 O[10] -pin Y_i__18 I1[10]
load net Y_i__17_n_6 -attr @rip O[9] -pin Y_i__17 O[9] -pin Y_i__18 I1[9]
load net Y_i__17_n_7 -attr @rip O[8] -pin Y_i__17 O[8] -pin Y_i__18 I1[8]
load net Y_i__17_n_8 -attr @rip O[7] -pin Y_i__17 O[7] -pin Y_i__18 I1[7]
load net Y_i__17_n_9 -attr @rip O[6] -pin Y_i__17 O[6] -pin Y_i__18 I1[6]
load net Y_i__18_n_0 -attr @rip O[15] -pin Y_i__18 O[15] -pin Y_i__19 I1[15]
load net Y_i__18_n_1 -attr @rip O[14] -pin Y_i__18 O[14] -pin Y_i__19 I1[14]
load net Y_i__18_n_10 -attr @rip O[5] -pin Y_i__18 O[5] -pin Y_i__19 I1[5]
load net Y_i__18_n_11 -attr @rip O[4] -pin Y_i__18 O[4] -pin Y_i__19 I1[4]
load net Y_i__18_n_12 -attr @rip O[3] -pin Y_i__18 O[3] -pin Y_i__19 I1[3]
load net Y_i__18_n_13 -attr @rip O[2] -pin Y_i__18 O[2] -pin Y_i__19 I1[2]
load net Y_i__18_n_14 -attr @rip O[1] -pin Y_i__18 O[1] -pin Y_i__19 I1[1]
load net Y_i__18_n_15 -attr @rip O[0] -pin Y_i__18 O[0] -pin Y_i__19 I1[0]
load net Y_i__18_n_2 -attr @rip O[13] -pin Y_i__18 O[13] -pin Y_i__19 I1[13]
load net Y_i__18_n_3 -attr @rip O[12] -pin Y_i__18 O[12] -pin Y_i__19 I1[12]
load net Y_i__18_n_4 -attr @rip O[11] -pin Y_i__18 O[11] -pin Y_i__19 I1[11]
load net Y_i__18_n_5 -attr @rip O[10] -pin Y_i__18 O[10] -pin Y_i__19 I1[10]
load net Y_i__18_n_6 -attr @rip O[9] -pin Y_i__18 O[9] -pin Y_i__19 I1[9]
load net Y_i__18_n_7 -attr @rip O[8] -pin Y_i__18 O[8] -pin Y_i__19 I1[8]
load net Y_i__18_n_8 -attr @rip O[7] -pin Y_i__18 O[7] -pin Y_i__19 I1[7]
load net Y_i__18_n_9 -attr @rip O[6] -pin Y_i__18 O[6] -pin Y_i__19 I1[6]
load net Y_i__19_n_0 -attr @rip O[15] -pin Y_i__19 O[15] -pin Y_i__20 I1[15]
load net Y_i__19_n_1 -attr @rip O[14] -pin Y_i__19 O[14] -pin Y_i__20 I1[14]
load net Y_i__19_n_10 -attr @rip O[5] -pin Y_i__19 O[5] -pin Y_i__20 I1[5]
load net Y_i__19_n_11 -attr @rip O[4] -pin Y_i__19 O[4] -pin Y_i__20 I1[4]
load net Y_i__19_n_12 -attr @rip O[3] -pin Y_i__19 O[3] -pin Y_i__20 I1[3]
load net Y_i__19_n_13 -attr @rip O[2] -pin Y_i__19 O[2] -pin Y_i__20 I1[2]
load net Y_i__19_n_14 -attr @rip O[1] -pin Y_i__19 O[1] -pin Y_i__20 I1[1]
load net Y_i__19_n_15 -attr @rip O[0] -pin Y_i__19 O[0] -pin Y_i__20 I1[0]
load net Y_i__19_n_2 -attr @rip O[13] -pin Y_i__19 O[13] -pin Y_i__20 I1[13]
load net Y_i__19_n_3 -attr @rip O[12] -pin Y_i__19 O[12] -pin Y_i__20 I1[12]
load net Y_i__19_n_4 -attr @rip O[11] -pin Y_i__19 O[11] -pin Y_i__20 I1[11]
load net Y_i__19_n_5 -attr @rip O[10] -pin Y_i__19 O[10] -pin Y_i__20 I1[10]
load net Y_i__19_n_6 -attr @rip O[9] -pin Y_i__19 O[9] -pin Y_i__20 I1[9]
load net Y_i__19_n_7 -attr @rip O[8] -pin Y_i__19 O[8] -pin Y_i__20 I1[8]
load net Y_i__19_n_8 -attr @rip O[7] -pin Y_i__19 O[7] -pin Y_i__20 I1[7]
load net Y_i__19_n_9 -attr @rip O[6] -pin Y_i__19 O[6] -pin Y_i__20 I1[6]
load net Y_i__1_n_0 -attr @rip O[15] -pin Y_i__1 O[15] -pin Y_i__16 I0[15]
load net Y_i__1_n_1 -attr @rip O[14] -pin Y_i__1 O[14] -pin Y_i__16 I0[14]
load net Y_i__1_n_10 -attr @rip O[5] -pin Y_i__1 O[5] -pin Y_i__16 I0[5]
load net Y_i__1_n_11 -attr @rip O[4] -pin Y_i__1 O[4] -pin Y_i__16 I0[4]
load net Y_i__1_n_12 -attr @rip O[3] -pin Y_i__1 O[3] -pin Y_i__16 I0[3]
load net Y_i__1_n_13 -attr @rip O[2] -pin Y_i__1 O[2] -pin Y_i__16 I0[2]
load net Y_i__1_n_14 -attr @rip O[1] -pin Y_i__1 O[1] -pin Y_i__16 I0[1]
load net Y_i__1_n_15 -attr @rip O[0] -pin Y_i__1 O[0] -pin Y_i__16 I0[0]
load net Y_i__1_n_2 -attr @rip O[13] -pin Y_i__1 O[13] -pin Y_i__16 I0[13]
load net Y_i__1_n_3 -attr @rip O[12] -pin Y_i__1 O[12] -pin Y_i__16 I0[12]
load net Y_i__1_n_4 -attr @rip O[11] -pin Y_i__1 O[11] -pin Y_i__16 I0[11]
load net Y_i__1_n_5 -attr @rip O[10] -pin Y_i__1 O[10] -pin Y_i__16 I0[10]
load net Y_i__1_n_6 -attr @rip O[9] -pin Y_i__1 O[9] -pin Y_i__16 I0[9]
load net Y_i__1_n_7 -attr @rip O[8] -pin Y_i__1 O[8] -pin Y_i__16 I0[8]
load net Y_i__1_n_8 -attr @rip O[7] -pin Y_i__1 O[7] -pin Y_i__16 I0[7]
load net Y_i__1_n_9 -attr @rip O[6] -pin Y_i__1 O[6] -pin Y_i__16 I0[6]
load net Y_i__20_n_0 -attr @rip O[15] -pin Y_i__20 O[15] -pin Y_i__21 I1[15]
load net Y_i__20_n_1 -attr @rip O[14] -pin Y_i__20 O[14] -pin Y_i__21 I1[14]
load net Y_i__20_n_10 -attr @rip O[5] -pin Y_i__20 O[5] -pin Y_i__21 I1[5]
load net Y_i__20_n_11 -attr @rip O[4] -pin Y_i__20 O[4] -pin Y_i__21 I1[4]
load net Y_i__20_n_12 -attr @rip O[3] -pin Y_i__20 O[3] -pin Y_i__21 I1[3]
load net Y_i__20_n_13 -attr @rip O[2] -pin Y_i__20 O[2] -pin Y_i__21 I1[2]
load net Y_i__20_n_14 -attr @rip O[1] -pin Y_i__20 O[1] -pin Y_i__21 I1[1]
load net Y_i__20_n_15 -attr @rip O[0] -pin Y_i__20 O[0] -pin Y_i__21 I1[0]
load net Y_i__20_n_2 -attr @rip O[13] -pin Y_i__20 O[13] -pin Y_i__21 I1[13]
load net Y_i__20_n_3 -attr @rip O[12] -pin Y_i__20 O[12] -pin Y_i__21 I1[12]
load net Y_i__20_n_4 -attr @rip O[11] -pin Y_i__20 O[11] -pin Y_i__21 I1[11]
load net Y_i__20_n_5 -attr @rip O[10] -pin Y_i__20 O[10] -pin Y_i__21 I1[10]
load net Y_i__20_n_6 -attr @rip O[9] -pin Y_i__20 O[9] -pin Y_i__21 I1[9]
load net Y_i__20_n_7 -attr @rip O[8] -pin Y_i__20 O[8] -pin Y_i__21 I1[8]
load net Y_i__20_n_8 -attr @rip O[7] -pin Y_i__20 O[7] -pin Y_i__21 I1[7]
load net Y_i__20_n_9 -attr @rip O[6] -pin Y_i__20 O[6] -pin Y_i__21 I1[6]
load net Y_i__21_n_0 -attr @rip O[15] -pin Y_i__21 O[15] -pin Y_i__22 I1[15]
load net Y_i__21_n_1 -attr @rip O[14] -pin Y_i__21 O[14] -pin Y_i__22 I1[14]
load net Y_i__21_n_10 -attr @rip O[5] -pin Y_i__21 O[5] -pin Y_i__22 I1[5]
load net Y_i__21_n_11 -attr @rip O[4] -pin Y_i__21 O[4] -pin Y_i__22 I1[4]
load net Y_i__21_n_12 -attr @rip O[3] -pin Y_i__21 O[3] -pin Y_i__22 I1[3]
load net Y_i__21_n_13 -attr @rip O[2] -pin Y_i__21 O[2] -pin Y_i__22 I1[2]
load net Y_i__21_n_14 -attr @rip O[1] -pin Y_i__21 O[1] -pin Y_i__22 I1[1]
load net Y_i__21_n_15 -attr @rip O[0] -pin Y_i__21 O[0] -pin Y_i__22 I1[0]
load net Y_i__21_n_2 -attr @rip O[13] -pin Y_i__21 O[13] -pin Y_i__22 I1[13]
load net Y_i__21_n_3 -attr @rip O[12] -pin Y_i__21 O[12] -pin Y_i__22 I1[12]
load net Y_i__21_n_4 -attr @rip O[11] -pin Y_i__21 O[11] -pin Y_i__22 I1[11]
load net Y_i__21_n_5 -attr @rip O[10] -pin Y_i__21 O[10] -pin Y_i__22 I1[10]
load net Y_i__21_n_6 -attr @rip O[9] -pin Y_i__21 O[9] -pin Y_i__22 I1[9]
load net Y_i__21_n_7 -attr @rip O[8] -pin Y_i__21 O[8] -pin Y_i__22 I1[8]
load net Y_i__21_n_8 -attr @rip O[7] -pin Y_i__21 O[7] -pin Y_i__22 I1[7]
load net Y_i__21_n_9 -attr @rip O[6] -pin Y_i__21 O[6] -pin Y_i__22 I1[6]
load net Y_i__2_n_0 -attr @rip O[15] -pin Y_i__15 I0[15] -pin Y_i__2 O[15]
load net Y_i__2_n_1 -attr @rip O[14] -pin Y_i__15 I0[14] -pin Y_i__2 O[14]
load net Y_i__2_n_10 -attr @rip O[5] -pin Y_i__15 I0[5] -pin Y_i__2 O[5]
load net Y_i__2_n_11 -attr @rip O[4] -pin Y_i__15 I0[4] -pin Y_i__2 O[4]
load net Y_i__2_n_12 -attr @rip O[3] -pin Y_i__15 I0[3] -pin Y_i__2 O[3]
load net Y_i__2_n_13 -attr @rip O[2] -pin Y_i__15 I0[2] -pin Y_i__2 O[2]
load net Y_i__2_n_14 -attr @rip O[1] -pin Y_i__15 I0[1] -pin Y_i__2 O[1]
load net Y_i__2_n_15 -attr @rip O[0] -pin Y_i__15 I0[0] -pin Y_i__2 O[0]
load net Y_i__2_n_2 -attr @rip O[13] -pin Y_i__15 I0[13] -pin Y_i__2 O[13]
load net Y_i__2_n_3 -attr @rip O[12] -pin Y_i__15 I0[12] -pin Y_i__2 O[12]
load net Y_i__2_n_4 -attr @rip O[11] -pin Y_i__15 I0[11] -pin Y_i__2 O[11]
load net Y_i__2_n_5 -attr @rip O[10] -pin Y_i__15 I0[10] -pin Y_i__2 O[10]
load net Y_i__2_n_6 -attr @rip O[9] -pin Y_i__15 I0[9] -pin Y_i__2 O[9]
load net Y_i__2_n_7 -attr @rip O[8] -pin Y_i__15 I0[8] -pin Y_i__2 O[8]
load net Y_i__2_n_8 -attr @rip O[7] -pin Y_i__15 I0[7] -pin Y_i__2 O[7]
load net Y_i__2_n_9 -attr @rip O[6] -pin Y_i__15 I0[6] -pin Y_i__2 O[6]
load net Y_i__3_n_0 -attr @rip O[15] -pin Y_i__14 I0[15] -pin Y_i__3 O[15]
load net Y_i__3_n_1 -attr @rip O[14] -pin Y_i__14 I0[14] -pin Y_i__3 O[14]
load net Y_i__3_n_10 -attr @rip O[5] -pin Y_i__14 I0[5] -pin Y_i__3 O[5]
load net Y_i__3_n_11 -attr @rip O[4] -pin Y_i__14 I0[4] -pin Y_i__3 O[4]
load net Y_i__3_n_12 -attr @rip O[3] -pin Y_i__14 I0[3] -pin Y_i__3 O[3]
load net Y_i__3_n_13 -attr @rip O[2] -pin Y_i__14 I0[2] -pin Y_i__3 O[2]
load net Y_i__3_n_14 -attr @rip O[1] -pin Y_i__14 I0[1] -pin Y_i__3 O[1]
load net Y_i__3_n_15 -attr @rip O[0] -pin Y_i__14 I0[0] -pin Y_i__3 O[0]
load net Y_i__3_n_2 -attr @rip O[13] -pin Y_i__14 I0[13] -pin Y_i__3 O[13]
load net Y_i__3_n_3 -attr @rip O[12] -pin Y_i__14 I0[12] -pin Y_i__3 O[12]
load net Y_i__3_n_4 -attr @rip O[11] -pin Y_i__14 I0[11] -pin Y_i__3 O[11]
load net Y_i__3_n_5 -attr @rip O[10] -pin Y_i__14 I0[10] -pin Y_i__3 O[10]
load net Y_i__3_n_6 -attr @rip O[9] -pin Y_i__14 I0[9] -pin Y_i__3 O[9]
load net Y_i__3_n_7 -attr @rip O[8] -pin Y_i__14 I0[8] -pin Y_i__3 O[8]
load net Y_i__3_n_8 -attr @rip O[7] -pin Y_i__14 I0[7] -pin Y_i__3 O[7]
load net Y_i__3_n_9 -attr @rip O[6] -pin Y_i__14 I0[6] -pin Y_i__3 O[6]
load net Y_i__4_n_0 -attr @rip O[1] -pin Y_i__4 O[1] -pin Y_i__9 I0[1]
load net Y_i__4_n_1 -attr @rip O[0] -pin Y_i__4 O[0] -pin Y_i__9 I0[0]
load net Y_i__5_n_0 -attr @rip O[1] -pin Y_i__5 O[1] -pin Y_i__8 I0[1]
load net Y_i__5_n_1 -attr @rip O[0] -pin Y_i__5 O[0] -pin Y_i__8 I0[0]
load net Y_i__6_n_0 -attr @rip O[1] -pin Y_i__6 O[1] -pin Y_i__7 I0[1]
load net Y_i__6_n_1 -attr @rip O[0] -pin Y_i__6 O[0] -pin Y_i__7 I0[0]
load net Y_i__7_n_0 -attr @rip O[1] -pin Y_i__7 O[1] -pin Y_i__8 I1[1]
load net Y_i__7_n_1 -attr @rip O[0] -pin Y_i__7 O[0] -pin Y_i__8 I1[0]
load net Y_i__8_n_0 -attr @rip O[1] -pin Y_i__8 O[1] -pin Y_i__9 I1[1]
load net Y_i__8_n_1 -attr @rip O[0] -pin Y_i__8 O[0] -pin Y_i__9 I1[0]
load net Y_i__9_n_0 -attr @rip O[1] -pin Y_i__10 I1[1] -pin Y_i__9 O[1]
load net Y_i__9_n_1 -attr @rip O[0] -pin Y_i__10 I1[0] -pin Y_i__9 O[0]
load net Y_i_n_0 -attr @rip O[15] -pin Y_i O[15] -pin Y_i__18 I0[15]
load net Y_i_n_1 -attr @rip O[14] -pin Y_i O[14] -pin Y_i__18 I0[14]
load net Y_i_n_10 -attr @rip O[5] -pin Y_i O[5] -pin Y_i__18 I0[5]
load net Y_i_n_11 -attr @rip O[4] -pin Y_i O[4] -pin Y_i__18 I0[4]
load net Y_i_n_12 -attr @rip O[3] -pin Y_i O[3] -pin Y_i__18 I0[3]
load net Y_i_n_13 -attr @rip O[2] -pin Y_i O[2] -pin Y_i__18 I0[2]
load net Y_i_n_14 -attr @rip O[1] -pin Y_i O[1] -pin Y_i__18 I0[1]
load net Y_i_n_15 -attr @rip O[0] -pin Y_i O[0] -pin Y_i__18 I0[0]
load net Y_i_n_2 -attr @rip O[13] -pin Y_i O[13] -pin Y_i__18 I0[13]
load net Y_i_n_3 -attr @rip O[12] -pin Y_i O[12] -pin Y_i__18 I0[12]
load net Y_i_n_4 -attr @rip O[11] -pin Y_i O[11] -pin Y_i__18 I0[11]
load net Y_i_n_5 -attr @rip O[10] -pin Y_i O[10] -pin Y_i__18 I0[10]
load net Y_i_n_6 -attr @rip O[9] -pin Y_i O[9] -pin Y_i__18 I0[9]
load net Y_i_n_7 -attr @rip O[8] -pin Y_i O[8] -pin Y_i__18 I0[8]
load net Y_i_n_8 -attr @rip O[7] -pin Y_i O[7] -pin Y_i__18 I0[7]
load net Y_i_n_9 -attr @rip O[6] -pin Y_i O[6] -pin Y_i__18 I0[6]
load net op[0] -attr @rip op[0] -pin OVF_i__10 S[0] -pin OVF_i__3 S[0] -pin OVF_i__4 S[0] -pin OVF_i__5 S[0] -pin OVF_i__6 S[0] -pin OVF_i__7 S[0] -pin OVF_i__8 S[0] -pin OVF_i__9 S[0] -pin Y_i__10 S[0] -pin Y_i__11 S[0] -pin Y_i__12 S[0] -pin Y_i__13 S[0] -pin Y_i__14 S[0] -pin Y_i__15 S[0] -pin Y_i__16 S[0] -pin Y_i__17 S[0] -pin Y_i__18 S[0] -pin Y_i__19 S[0] -pin Y_i__20 S[0] -pin Y_i__21 S[0] -pin Y_i__22 S[0] -pin Y_i__7 S[0] -pin Y_i__8 S[0] -pin Y_i__9 S[0] -port op[0]
load net op[1] -attr @rip op[1] -pin OVF_i__10 S[1] -pin OVF_i__3 S[1] -pin OVF_i__4 S[1] -pin OVF_i__5 S[1] -pin OVF_i__6 S[1] -pin OVF_i__7 S[1] -pin OVF_i__8 S[1] -pin OVF_i__9 S[1] -pin Y_i__10 S[1] -pin Y_i__11 S[1] -pin Y_i__12 S[1] -pin Y_i__13 S[1] -pin Y_i__14 S[1] -pin Y_i__15 S[1] -pin Y_i__16 S[1] -pin Y_i__17 S[1] -pin Y_i__18 S[1] -pin Y_i__19 S[1] -pin Y_i__20 S[1] -pin Y_i__21 S[1] -pin Y_i__22 S[1] -pin Y_i__7 S[1] -pin Y_i__8 S[1] -pin Y_i__9 S[1] -port op[1]
load net op[2] -attr @rip op[2] -pin OVF_i__10 S[2] -pin OVF_i__3 S[2] -pin OVF_i__4 S[2] -pin OVF_i__5 S[2] -pin OVF_i__6 S[2] -pin OVF_i__7 S[2] -pin OVF_i__8 S[2] -pin OVF_i__9 S[2] -pin Y_i__10 S[2] -pin Y_i__11 S[2] -pin Y_i__12 S[2] -pin Y_i__13 S[2] -pin Y_i__14 S[2] -pin Y_i__15 S[2] -pin Y_i__16 S[2] -pin Y_i__17 S[2] -pin Y_i__18 S[2] -pin Y_i__19 S[2] -pin Y_i__20 S[2] -pin Y_i__21 S[2] -pin Y_i__22 S[2] -pin Y_i__7 S[2] -pin Y_i__8 S[2] -pin Y_i__9 S[2] -port op[2]
load net op[3] -attr @rip op[3] -pin OVF_i__10 S[3] -pin OVF_i__3 S[3] -pin OVF_i__4 S[3] -pin OVF_i__5 S[3] -pin OVF_i__6 S[3] -pin OVF_i__7 S[3] -pin OVF_i__8 S[3] -pin OVF_i__9 S[3] -pin Y_i__10 S[3] -pin Y_i__11 S[3] -pin Y_i__12 S[3] -pin Y_i__13 S[3] -pin Y_i__14 S[3] -pin Y_i__15 S[3] -pin Y_i__16 S[3] -pin Y_i__17 S[3] -pin Y_i__18 S[3] -pin Y_i__19 S[3] -pin Y_i__20 S[3] -pin Y_i__21 S[3] -pin Y_i__22 S[3] -pin Y_i__7 S[3] -pin Y_i__8 S[3] -pin Y_i__9 S[3] -port op[3]
load net p_14_in[0] -attr @rip O[0] -pin Y0_i__1 O[0] -pin Y_i__20 I0[0]
load net p_14_in[1] -attr @rip O[1] -pin Y0_i__1 O[1] -pin Y_i__20 I0[1]
load net p_14_in[2] -attr @rip O[2] -pin Y0_i__1 O[2] -pin Y_i__20 I0[2]
load net p_14_in[3] -attr @rip O[3] -pin Y0_i__1 O[3] -pin Y_i__20 I0[3]
load net p_14_in[4] -attr @rip O[4] -pin Y0_i__1 O[4] -pin Y_i__20 I0[4]
load net p_14_in[5] -attr @rip O[5] -pin Y0_i__1 O[5] -pin Y_i__20 I0[5]
load net p_14_in[6] -attr @rip O[6] -pin Y0_i__1 O[6] -pin Y_i__20 I0[6]
load net p_14_in[7] -attr @rip O[7] -pin Y0_i__1 O[7] -pin Y_i__20 I0[7]
load net p_1_in -attr @rip O[7] -pin OVF1_i__0 I0 -pin Y0_i__3 O[7] -pin Y_i I0[15] -pin Y_i I0[14] -pin Y_i I0[13] -pin Y_i I0[12] -pin Y_i I0[11] -pin Y_i I0[10] -pin Y_i I0[9] -pin Y_i I0[8] -pin Y_i I0[7] -pin Y_i I1[7]
load net p_2_in -attr @rip O[7] -pin OVF1_i__4 I0 -pin Y0_i__6 O[7] -pin Y_i__2 I0[15] -pin Y_i__2 I0[14] -pin Y_i__2 I0[13] -pin Y_i__2 I0[12] -pin Y_i__2 I0[11] -pin Y_i__2 I0[10] -pin Y_i__2 I0[9] -pin Y_i__2 I0[8] -pin Y_i__2 I0[7] -pin Y_i__2 I1[7]
load net p_3_in -attr @rip O[8] -pin OVF0_i__3 O[8] -pin OVF_i__1 I1
netloc p_3_in 1 11 1 3870 280n
load net p_6_in[0] -attr @rip O[0] -pin Y0_i__11 O[0] -pin Y_i__11 I0[0]
load net p_6_in[1] -attr @rip O[1] -pin Y0_i__11 O[1] -pin Y_i__11 I0[1]
load net p_6_in[2] -attr @rip O[2] -pin Y0_i__11 O[2] -pin Y_i__11 I0[2]
load net p_6_in[3] -attr @rip O[3] -pin Y0_i__11 O[3] -pin Y_i__11 I0[3]
load net p_6_in[4] -attr @rip O[4] -pin Y0_i__11 O[4] -pin Y_i__11 I0[4]
load net p_6_in[5] -attr @rip O[5] -pin Y0_i__11 O[5] -pin Y_i__11 I0[5]
load net p_6_in[6] -attr @rip O[6] -pin Y0_i__11 O[6] -pin Y_i__11 I0[6]
load net p_6_in[7] -attr @rip O[7] -pin Y0_i__11 O[7] -pin Y_i__11 I0[7]
load net p_7_in[0] -attr @rip O[0] -pin Y0_i__10 O[0] -pin Y_i__12 I0[0]
load net p_7_in[1] -attr @rip O[1] -pin Y0_i__10 O[1] -pin Y_i__12 I0[1]
load net p_7_in[2] -attr @rip O[2] -pin Y0_i__10 O[2] -pin Y_i__12 I0[2]
load net p_7_in[3] -attr @rip O[3] -pin Y0_i__10 O[3] -pin Y_i__12 I0[3]
load net p_7_in[4] -attr @rip O[4] -pin Y0_i__10 O[4] -pin Y_i__12 I0[4]
load net p_7_in[5] -attr @rip O[5] -pin Y0_i__10 O[5] -pin Y_i__12 I0[5]
load net p_7_in[6] -attr @rip O[6] -pin Y0_i__10 O[6] -pin Y_i__12 I0[6]
load net p_7_in[7] -attr @rip O[7] -pin Y0_i__10 O[7] -pin Y_i__12 I0[7]
load net p_8_in[0] -attr @rip O[0] -pin Y0_i__9 O[0] -pin Y_i__13 I0[0]
load net p_8_in[1] -attr @rip O[1] -pin Y0_i__9 O[1] -pin Y_i__13 I0[1]
load net p_8_in[2] -attr @rip O[2] -pin Y0_i__9 O[2] -pin Y_i__13 I0[2]
load net p_8_in[3] -attr @rip O[3] -pin Y0_i__9 O[3] -pin Y_i__13 I0[3]
load net p_8_in[4] -attr @rip O[4] -pin Y0_i__9 O[4] -pin Y_i__13 I0[4]
load net p_8_in[5] -attr @rip O[5] -pin Y0_i__9 O[5] -pin Y_i__13 I0[5]
load net p_8_in[6] -attr @rip O[6] -pin Y0_i__9 O[6] -pin Y_i__13 I0[6]
load net p_8_in[7] -attr @rip O[7] -pin Y0_i__9 O[7] -pin Y_i__13 I0[7]
load net signed_mode -pin OVF_i S -pin OVF_i__0 S -pin OVF_i__1 S -pin OVF_i__2 S -pin Y_i S -pin Y_i__0 S -pin Y_i__1 S -pin Y_i__2 S -pin Y_i__3 S -pin Y_i__4 S -pin Y_i__5 S -pin Y_i__6 S -port signed_mode
netloc signed_mode 1 0 14 NJ 590 NJ 590 590J 690N 1020 720N 1410 370N 1710J 280 NJ 280 NJ 280 NJ 280 3160 430N 3580 120N 3890 330N 4340 560N 4670
load netBundle @A 8 A[7] A[6] A[5] A[4] A[3] A[2] A[1] A[0] -autobundled
netbloc @A 1 0 18 40 690 240 550 630 530 NJ 530 1450 420 NJ 420 2060 530 2420 640 2780 910 3140 620 3560 810 3890 740 4220 740 NJ 740 5040 570 5330 630 5680 430 N
load netBundle @B 8 B[7] B[6] B[5] B[4] B[3] B[2] B[1] B[0] -autobundled
netbloc @B 1 0 18 20 790 260 570 650 550 NJ 550 1450 590 NJ 590 2100 590 2400 660 2720 790 3080 720 3600 910 3930 760 4300 700 4630J 590 NJ 590 5390 530 5700 450 N
load netBundle @op 4 op[3] op[2] op[1] op[0] -autobundled
netbloc @op 1 0 19 NJ 980 NJ 980 NJ 980 1080J 840N 1450 730N 1750 400N N 400N N 400N 2720 550N N 550N 3500 580N 3930 570N 4320 680N 4690 570N 5020 750N 5370 750N 5700 770N 5990 760N 6280
load netBundle @Y 16 Y[15] Y[14] Y[13] Y[12] Y[11] Y[10] Y[9] Y[8] Y[7] Y[6] Y[5] Y[4] Y[3] Y[2] Y[1] Y[0] -autobundled
netbloc @Y 1 19 1 NJ 570
load netBundle @Y0_i_n_ 8 Y0_i_n_0 Y0_i_n_1 Y0_i_n_2 Y0_i_n_3 Y0_i_n_4 Y0_i_n_5 Y0_i_n_6 Y0_i_n_7 -autobundled
netbloc @Y0_i_n_ 1 18 1 6300 440n
load netBundle @Y0_i__0_n_ 8 Y0_i__0_n_0 Y0_i__0_n_1 Y0_i__0_n_2 Y0_i__0_n_3 Y0_i__0_n_4 Y0_i__0_n_5 Y0_i__0_n_6 Y0_i__0_n_7 -autobundled
netbloc @Y0_i__0_n_ 1 17 1 6010 500n
load netBundle @p_14_in 8 p_14_in[7] p_14_in[6] p_14_in[5] p_14_in[4] p_14_in[3] p_14_in[2] p_14_in[1] p_14_in[0] -autobundled
netbloc @p_14_in 1 16 1 5700 580
load netBundle @p_7_in 8 p_7_in[7] p_7_in[6] p_7_in[5] p_7_in[4] p_7_in[3] p_7_in[2] p_7_in[1] p_7_in[0] -autobundled
netbloc @p_7_in 1 8 1 2760 480n
load netBundle @p_6_in 8 p_6_in[7] p_6_in[6] p_6_in[5] p_6_in[4] p_6_in[3] p_6_in[2] p_6_in[1] p_6_in[0] -autobundled
netbloc @p_6_in 1 7 1 2420 330n
load netBundle @Y0_i__12_n_ 2 Y0_i__12_n_0 Y0_i__12_n_1 -autobundled
netbloc @Y0_i__12_n_ 1 6 1 2080 330n
load netBundle @Y0_i__13_n_ 2 Y0_i__13_n_0 Y0_i__13_n_1 -autobundled
netbloc @Y0_i__13_n_ 1 4 1 N 300
load netBundle @Y0_i__14_n_ 2 Y0_i__14_n_0 Y0_i__14_n_1 -autobundled
netbloc @Y0_i__14_n_ 1 4 1 1390 320n
load netBundle @Y0_i__15_n_ 2 Y0_i__15_n_0 Y0_i__15_n_1 -autobundled
netbloc @Y0_i__15_n_ 1 3 1 1000 650n
load netBundle @Y0_i__16_n_ 2 Y0_i__16_n_0 Y0_i__16_n_1 -autobundled
netbloc @Y0_i__16_n_ 1 3 1 1060 670n
load netBundle @Y0_i__17_n_ 2 Y0_i__17_n_0 Y0_i__17_n_1 -autobundled
netbloc @Y0_i__17_n_ 1 2 1 610 460n
load netBundle @Y0_i__18_n_ 2 Y0_i__18_n_0 Y0_i__18_n_1 -autobundled
netbloc @Y0_i__18_n_ 1 2 1 690 640n
load netBundle @Y0_i__2_n_ 8 Y0_i__2_n_0 Y0_i__2_n_1 Y0_i__2_n_2 Y0_i__2_n_3 Y0_i__2_n_4 Y0_i__2_n_5 Y0_i__2_n_6 Y0_i__2_n_7 -autobundled
netbloc @Y0_i__2_n_ 1 15 1 5350J 430n
load netBundle @Y0_i__3_n_,p_1_in 8 p_1_in Y0_i__3_n_1 Y0_i__3_n_2 Y0_i__3_n_3 Y0_i__3_n_4 Y0_i__3_n_5 Y0_i__3_n_6 Y0_i__3_n_7 -autobundled
netbloc @Y0_i__3_n_,p_1_in 1 11 3 3950 860 NJ 860 4650
load netBundle @Y0_i__4_n_ 8 Y0_i__4_n_0 Y0_i__4_n_1 Y0_i__4_n_2 Y0_i__4_n_3 Y0_i__4_n_4 Y0_i__4_n_5 Y0_i__4_n_6 Y0_i__4_n_7 -autobundled
netbloc @Y0_i__4_n_ 1 10 3 3580 620 NJ 620 4280
load netBundle @Y0_i__5_n_ 8 Y0_i__5_n_0 Y0_i__5_n_1 Y0_i__5_n_2 Y0_i__5_n_3 Y0_i__5_n_4 Y0_i__5_n_5 Y0_i__5_n_6 Y0_i__5_n_7 -autobundled
netbloc @Y0_i__5_n_ 1 10 2 3520 140 3930
load netBundle @Y0_i__6_n_,p_2_in 8 p_2_in Y0_i__6_n_1 Y0_i__6_n_2 Y0_i__6_n_3 Y0_i__6_n_4 Y0_i__6_n_5 Y0_i__6_n_6 Y0_i__6_n_7 -autobundled
netbloc @Y0_i__6_n_,p_2_in 1 8 3 2740 580 NJ 580 3480
load netBundle @Y0_i__7_n_ 16 Y0_i__7_n_0 Y0_i__7_n_1 Y0_i__7_n_2 Y0_i__7_n_3 Y0_i__7_n_4 Y0_i__7_n_5 Y0_i__7_n_6 Y0_i__7_n_7 Y0_i__7_n_8 Y0_i__7_n_9 Y0_i__7_n_10 Y0_i__7_n_11 Y0_i__7_n_12 Y0_i__7_n_13 Y0_i__7_n_14 Y0_i__7_n_15 -autobundled
netbloc @Y0_i__7_n_ 1 9 1 3080 360n
load netBundle @Y0_i__8_n_ 16 Y0_i__8_n_0 Y0_i__8_n_1 Y0_i__8_n_2 Y0_i__8_n_3 Y0_i__8_n_4 Y0_i__8_n_5 Y0_i__8_n_6 Y0_i__8_n_7 Y0_i__8_n_8 Y0_i__8_n_9 Y0_i__8_n_10 Y0_i__8_n_11 Y0_i__8_n_12 Y0_i__8_n_13 Y0_i__8_n_14 Y0_i__8_n_15 -autobundled
netbloc @Y0_i__8_n_ 1 9 1 3120 380n
load netBundle @p_8_in 8 p_8_in[7] p_8_in[6] p_8_in[5] p_8_in[4] p_8_in[3] p_8_in[2] p_8_in[1] p_8_in[0] -autobundled
netbloc @p_8_in 1 9 1 3160 480n
load netBundle @Y_i_n_ 16 Y_i_n_0 Y_i_n_1 Y_i_n_2 Y_i_n_3 Y_i_n_4 Y_i_n_5 Y_i_n_6 Y_i_n_7 Y_i_n_8 Y_i_n_9 Y_i_n_10 Y_i_n_11 Y_i_n_12 Y_i_n_13 Y_i_n_14 Y_i_n_15 -autobundled
netbloc @Y_i_n_ 1 14 1 4980 420n
load netBundle @Y_i__0_n_ 16 Y_i__0_n_0 Y_i__0_n_1 Y_i__0_n_2 Y_i__0_n_3 Y_i__0_n_4 Y_i__0_n_5 Y_i__0_n_6 Y_i__0_n_7 Y_i__0_n_8 Y_i__0_n_9 Y_i__0_n_10 Y_i__0_n_11 Y_i__0_n_12 Y_i__0_n_13 Y_i__0_n_14 Y_i__0_n_15 -autobundled
netbloc @Y_i__0_n_ 1 13 1 4710 250n
load netBundle @Y_i__1_n_ 16 Y_i__1_n_0 Y_i__1_n_1 Y_i__1_n_2 Y_i__1_n_3 Y_i__1_n_4 Y_i__1_n_5 Y_i__1_n_6 Y_i__1_n_7 Y_i__1_n_8 Y_i__1_n_9 Y_i__1_n_10 Y_i__1_n_11 Y_i__1_n_12 Y_i__1_n_13 Y_i__1_n_14 Y_i__1_n_15 -autobundled
netbloc @Y_i__1_n_ 1 12 1 4320 140n
load netBundle @Y_i__10_n_ 2 Y_i__10_n_0 Y_i__10_n_1 -autobundled
netbloc @Y_i__10_n_ 1 7 1 2380 340n
load netBundle @Y_i__11_n_ 16 Y_i__11_n_0 Y_i__11_n_1 Y_i__11_n_2 Y_i__11_n_3 Y_i__11_n_4 Y_i__11_n_5 Y_i__11_n_6 Y_i__11_n_7 Y_i__11_n_8 Y_i__11_n_9 Y_i__11_n_10 Y_i__11_n_11 Y_i__11_n_12 Y_i__11_n_13 Y_i__11_n_14 Y_i__11_n_15 -autobundled
netbloc @Y_i__11_n_ 1 8 1 2780 340n
load netBundle @Y_i__12_n_ 16 Y_i__12_n_0 Y_i__12_n_1 Y_i__12_n_2 Y_i__12_n_3 Y_i__12_n_4 Y_i__12_n_5 Y_i__12_n_6 Y_i__12_n_7 Y_i__12_n_8 Y_i__12_n_9 Y_i__12_n_10 Y_i__12_n_11 Y_i__12_n_12 Y_i__12_n_13 Y_i__12_n_14 Y_i__12_n_15 -autobundled
netbloc @Y_i__12_n_ 1 9 1 3100 490n
load netBundle @Y_i__13_n_ 16 Y_i__13_n_0 Y_i__13_n_1 Y_i__13_n_2 Y_i__13_n_3 Y_i__13_n_4 Y_i__13_n_5 Y_i__13_n_6 Y_i__13_n_7 Y_i__13_n_8 Y_i__13_n_9 Y_i__13_n_10 Y_i__13_n_11 Y_i__13_n_12 Y_i__13_n_13 Y_i__13_n_14 Y_i__13_n_15 -autobundled
netbloc @Y_i__13_n_ 1 10 1 3540 490n
load netBundle @Y_i__14_n_ 16 Y_i__14_n_0 Y_i__14_n_1 Y_i__14_n_2 Y_i__14_n_3 Y_i__14_n_4 Y_i__14_n_5 Y_i__14_n_6 Y_i__14_n_7 Y_i__14_n_8 Y_i__14_n_9 Y_i__14_n_10 Y_i__14_n_11 Y_i__14_n_12 Y_i__14_n_13 Y_i__14_n_14 Y_i__14_n_15 -autobundled
netbloc @Y_i__14_n_ 1 11 1 3890 400n
load netBundle @Y_i__15_n_ 16 Y_i__15_n_0 Y_i__15_n_1 Y_i__15_n_2 Y_i__15_n_3 Y_i__15_n_4 Y_i__15_n_5 Y_i__15_n_6 Y_i__15_n_7 Y_i__15_n_8 Y_i__15_n_9 Y_i__15_n_10 Y_i__15_n_11 Y_i__15_n_12 Y_i__15_n_13 Y_i__15_n_14 Y_i__15_n_15 -autobundled
netbloc @Y_i__15_n_ 1 12 1 N 390
load netBundle @Y_i__16_n_ 16 Y_i__16_n_0 Y_i__16_n_1 Y_i__16_n_2 Y_i__16_n_3 Y_i__16_n_4 Y_i__16_n_5 Y_i__16_n_6 Y_i__16_n_7 Y_i__16_n_8 Y_i__16_n_9 Y_i__16_n_10 Y_i__16_n_11 Y_i__16_n_12 Y_i__16_n_13 Y_i__16_n_14 Y_i__16_n_15 -autobundled
netbloc @Y_i__16_n_ 1 13 1 N 380
load netBundle @Y_i__17_n_ 16 Y_i__17_n_0 Y_i__17_n_1 Y_i__17_n_2 Y_i__17_n_3 Y_i__17_n_4 Y_i__17_n_5 Y_i__17_n_6 Y_i__17_n_7 Y_i__17_n_8 Y_i__17_n_9 Y_i__17_n_10 Y_i__17_n_11 Y_i__17_n_12 Y_i__17_n_13 Y_i__17_n_14 Y_i__17_n_15 -autobundled
netbloc @Y_i__17_n_ 1 14 1 5000 370n
load netBundle @Y_i__18_n_ 16 Y_i__18_n_0 Y_i__18_n_1 Y_i__18_n_2 Y_i__18_n_3 Y_i__18_n_4 Y_i__18_n_5 Y_i__18_n_6 Y_i__18_n_7 Y_i__18_n_8 Y_i__18_n_9 Y_i__18_n_10 Y_i__18_n_11 Y_i__18_n_12 Y_i__18_n_13 Y_i__18_n_14 Y_i__18_n_15 -autobundled
netbloc @Y_i__18_n_ 1 15 1 5330 430n
load netBundle @Y_i__19_n_ 16 Y_i__19_n_0 Y_i__19_n_1 Y_i__19_n_2 Y_i__19_n_3 Y_i__19_n_4 Y_i__19_n_5 Y_i__19_n_6 Y_i__19_n_7 Y_i__19_n_8 Y_i__19_n_9 Y_i__19_n_10 Y_i__19_n_11 Y_i__19_n_12 Y_i__19_n_13 Y_i__19_n_14 Y_i__19_n_15 -autobundled
netbloc @Y_i__19_n_ 1 16 1 5660 440n
load netBundle @Y_i__2_n_ 16 Y_i__2_n_0 Y_i__2_n_1 Y_i__2_n_2 Y_i__2_n_3 Y_i__2_n_4 Y_i__2_n_5 Y_i__2_n_6 Y_i__2_n_7 Y_i__2_n_8 Y_i__2_n_9 Y_i__2_n_10 Y_i__2_n_11 Y_i__2_n_12 Y_i__2_n_13 Y_i__2_n_14 Y_i__2_n_15 -autobundled
netbloc @Y_i__2_n_ 1 11 1 3870 380n
load netBundle @Y_i__20_n_ 16 Y_i__20_n_0 Y_i__20_n_1 Y_i__20_n_2 Y_i__20_n_3 Y_i__20_n_4 Y_i__20_n_5 Y_i__20_n_6 Y_i__20_n_7 Y_i__20_n_8 Y_i__20_n_9 Y_i__20_n_10 Y_i__20_n_11 Y_i__20_n_12 Y_i__20_n_13 Y_i__20_n_14 Y_i__20_n_15 -autobundled
netbloc @Y_i__20_n_ 1 17 1 N 590
load netBundle @Y_i__21_n_ 16 Y_i__21_n_0 Y_i__21_n_1 Y_i__21_n_2 Y_i__21_n_3 Y_i__21_n_4 Y_i__21_n_5 Y_i__21_n_6 Y_i__21_n_7 Y_i__21_n_8 Y_i__21_n_9 Y_i__21_n_10 Y_i__21_n_11 Y_i__21_n_12 Y_i__21_n_13 Y_i__21_n_14 Y_i__21_n_15 -autobundled
netbloc @Y_i__21_n_ 1 18 1 N 580
load netBundle @Y_i__3_n_ 16 Y_i__3_n_0 Y_i__3_n_1 Y_i__3_n_2 Y_i__3_n_3 Y_i__3_n_4 Y_i__3_n_5 Y_i__3_n_6 Y_i__3_n_7 Y_i__3_n_8 Y_i__3_n_9 Y_i__3_n_10 Y_i__3_n_11 Y_i__3_n_12 Y_i__3_n_13 Y_i__3_n_14 Y_i__3_n_15 -autobundled
netbloc @Y_i__3_n_ 1 10 1 3460 370n
load netBundle @Y_i__4_n_ 2 Y_i__4_n_0 Y_i__4_n_1 -autobundled
netbloc @Y_i__4_n_ 1 5 1 1730 310n
load netBundle @Y_i__5_n_ 2 Y_i__5_n_0 Y_i__5_n_1 -autobundled
netbloc @Y_i__5_n_ 1 4 1 N 660
load netBundle @Y_i__6_n_ 2 Y_i__6_n_0 Y_i__6_n_1 -autobundled
netbloc @Y_i__6_n_ 1 3 1 1040 630n
load netBundle @Y_i__7_n_ 2 Y_i__7_n_0 Y_i__7_n_1 -autobundled
netbloc @Y_i__7_n_ 1 4 1 1430 680n
load netBundle @Y_i__8_n_ 2 Y_i__8_n_0 Y_i__8_n_1 -autobundled
netbloc @Y_i__8_n_ 1 5 1 1730 350n
load netBundle @Y_i__9_n_ 2 Y_i__9_n_0 Y_i__9_n_1 -autobundled
netbloc @Y_i__9_n_ 1 6 1 2060 340n
levelinfo -pg 1 0 110 460 870 1260 1580 1930 2230 2580 2940 3330 3740 4090 4500 4850 5200 5530 5860 6150 6440 6570
pagesize -pg 1 -db -bbox -sgen -140 0 6670 1000
show
fullfit
#
# initialize ictrl to current module alu work:alu:NOFILE
ictrl init topinfo |
