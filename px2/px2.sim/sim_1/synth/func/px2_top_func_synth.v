// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Tue Jun 11 14:15:49 2024
// Host        : DESKTOP-P1GI4OE running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/Files_for_work/hardware_proj/px2/px2.sim/sim_1/synth/func/px2_top_func_synth.v
// Design      : px2_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module px2_top
   (clk,
    sclk,
    smosi,
    scs,
    spi_miso,
    l2,
    r2,
    l1,
    r1,
    triangle,
    o,
    x,
    square,
    up,
    right,
    down,
    left);
  input clk;
  output sclk;
  output smosi;
  output scs;
  input spi_miso;
  output l2;
  output r2;
  output l1;
  output r1;
  output triangle;
  output o;
  output x;
  output square;
  output up;
  output right;
  output down;
  output left;

  wire clk;
  wire clk_1020us;
  wire clk_1020us_i_1_n_0;
  wire clk_1020us_reg_n_0;
  wire clk_6us_i_1_n_0;
  wire clk_6us_i_2_n_0;
  wire clk_6us_reg_n_0;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]cnt_1020us;
  wire \cnt_1020us[12]_i_2_n_0 ;
  wire \cnt_1020us[12]_i_3_n_0 ;
  wire \cnt_1020us[12]_i_4_n_0 ;
  wire \cnt_1020us[12]_i_5_n_0 ;
  wire \cnt_1020us[15]_i_3_n_0 ;
  wire \cnt_1020us[15]_i_4_n_0 ;
  wire \cnt_1020us[15]_i_5_n_0 ;
  wire \cnt_1020us[15]_i_6_n_0 ;
  wire \cnt_1020us[15]_i_7_n_0 ;
  wire \cnt_1020us[15]_i_8_n_0 ;
  wire \cnt_1020us[4]_i_2_n_0 ;
  wire \cnt_1020us[4]_i_3_n_0 ;
  wire \cnt_1020us[4]_i_4_n_0 ;
  wire \cnt_1020us[4]_i_5_n_0 ;
  wire \cnt_1020us[8]_i_2_n_0 ;
  wire \cnt_1020us[8]_i_3_n_0 ;
  wire \cnt_1020us[8]_i_4_n_0 ;
  wire \cnt_1020us[8]_i_5_n_0 ;
  wire \cnt_1020us_reg[12]_i_1_n_0 ;
  wire \cnt_1020us_reg[12]_i_1_n_1 ;
  wire \cnt_1020us_reg[12]_i_1_n_2 ;
  wire \cnt_1020us_reg[12]_i_1_n_3 ;
  wire \cnt_1020us_reg[12]_i_1_n_4 ;
  wire \cnt_1020us_reg[12]_i_1_n_5 ;
  wire \cnt_1020us_reg[12]_i_1_n_6 ;
  wire \cnt_1020us_reg[12]_i_1_n_7 ;
  wire \cnt_1020us_reg[15]_i_2_n_2 ;
  wire \cnt_1020us_reg[15]_i_2_n_3 ;
  wire \cnt_1020us_reg[15]_i_2_n_5 ;
  wire \cnt_1020us_reg[15]_i_2_n_6 ;
  wire \cnt_1020us_reg[15]_i_2_n_7 ;
  wire \cnt_1020us_reg[4]_i_1_n_0 ;
  wire \cnt_1020us_reg[4]_i_1_n_1 ;
  wire \cnt_1020us_reg[4]_i_1_n_2 ;
  wire \cnt_1020us_reg[4]_i_1_n_3 ;
  wire \cnt_1020us_reg[4]_i_1_n_4 ;
  wire \cnt_1020us_reg[4]_i_1_n_5 ;
  wire \cnt_1020us_reg[4]_i_1_n_6 ;
  wire \cnt_1020us_reg[4]_i_1_n_7 ;
  wire \cnt_1020us_reg[8]_i_1_n_0 ;
  wire \cnt_1020us_reg[8]_i_1_n_1 ;
  wire \cnt_1020us_reg[8]_i_1_n_2 ;
  wire \cnt_1020us_reg[8]_i_1_n_3 ;
  wire \cnt_1020us_reg[8]_i_1_n_4 ;
  wire \cnt_1020us_reg[8]_i_1_n_5 ;
  wire \cnt_1020us_reg[8]_i_1_n_6 ;
  wire \cnt_1020us_reg[8]_i_1_n_7 ;
  wire \cnt_1020us_reg_n_0_[0] ;
  wire \cnt_1020us_reg_n_0_[10] ;
  wire \cnt_1020us_reg_n_0_[11] ;
  wire \cnt_1020us_reg_n_0_[12] ;
  wire \cnt_1020us_reg_n_0_[13] ;
  wire \cnt_1020us_reg_n_0_[14] ;
  wire \cnt_1020us_reg_n_0_[15] ;
  wire \cnt_1020us_reg_n_0_[1] ;
  wire \cnt_1020us_reg_n_0_[2] ;
  wire \cnt_1020us_reg_n_0_[3] ;
  wire \cnt_1020us_reg_n_0_[4] ;
  wire \cnt_1020us_reg_n_0_[5] ;
  wire \cnt_1020us_reg_n_0_[6] ;
  wire \cnt_1020us_reg_n_0_[7] ;
  wire \cnt_1020us_reg_n_0_[8] ;
  wire \cnt_1020us_reg_n_0_[9] ;
  wire [9:0]cnt_clk_6us;
  wire \cnt_clk_6us[4]_i_2_n_0 ;
  wire \cnt_clk_6us[7]_i_2_n_0 ;
  wire \cnt_clk_6us[7]_i_3_n_0 ;
  wire \cnt_clk_6us[7]_i_4_n_0 ;
  wire \cnt_clk_6us[7]_i_5_n_0 ;
  wire \cnt_clk_6us[9]_i_2_n_0 ;
  wire \cnt_clk_6us_reg_n_0_[0] ;
  wire \cnt_clk_6us_reg_n_0_[1] ;
  wire \cnt_clk_6us_reg_n_0_[2] ;
  wire \cnt_clk_6us_reg_n_0_[3] ;
  wire \cnt_clk_6us_reg_n_0_[4] ;
  wire \cnt_clk_6us_reg_n_0_[5] ;
  wire \cnt_clk_6us_reg_n_0_[6] ;
  wire \cnt_clk_6us_reg_n_0_[7] ;
  wire \cnt_clk_6us_reg_n_0_[8] ;
  wire \cnt_clk_6us_reg_n_0_[9] ;
  wire [3:0]count_for_trig;
  wire \count_for_trig[0]_i_1_n_0 ;
  wire \count_for_trig[1]_i_1_n_0 ;
  wire \count_for_trig[2]_i_1_n_0 ;
  wire \count_for_trig[3]_i_1_n_0 ;
  wire \count_for_trig[3]_i_2_n_0 ;
  wire \count_trig[0]_i_1_n_0 ;
  wire \count_trig[1]_i_1_n_0 ;
  wire \count_trig[2]_i_1_n_0 ;
  wire \count_trig[3]_i_1_n_0 ;
  wire \count_trig[4]_i_1_n_0 ;
  wire \count_trig[5]_i_1_n_0 ;
  wire \count_trig[6]_i_1_n_0 ;
  wire \count_trig[6]_i_2_n_0 ;
  wire \count_trig[7]_i_1_n_0 ;
  wire \count_trig[7]_i_2_n_0 ;
  wire \count_trig[7]_i_3_n_0 ;
  wire [7:0]count_trig_reg;
  wire down;
  wire down_OBUF;
  wire down_i_1_n_0;
  wire l1;
  wire l2;
  wire left;
  wire left_OBUF;
  wire left_i_1_n_0;
  wire left_i_2_n_0;
  wire left_i_3_n_0;
  wire o;
  wire r1;
  wire r2;
  wire right;
  wire right_OBUF;
  wire right_i_1_n_0;
  wire sclk;
  wire sclk7_out;
  wire sclk_OBUF;
  wire sclk_i_1_n_0;
  wire sclk_i_2_n_0;
  wire sclk_i_4_n_0;
  wire sclk_i_5_n_0;
  wire sclk_reg_i_3_n_0;
  wire scs;
  wire scs_OBUF;
  wire smosi;
  wire smosi_OBUF;
  wire smosi_i_1_n_0;
  wire smosi_i_2_n_0;
  wire smosi_i_3_n_0;
  wire spi_miso;
  wire spi_miso_IBUF;
  wire square;
  wire triangle;
  wire trig_i_1_n_0;
  wire up;
  wire up_OBUF;
  wire up_i_1_n_0;
  wire up_i_2_n_0;
  wire x;
  wire [3:2]\NLW_cnt_1020us_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_cnt_1020us_reg[15]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h9)) 
    clk_1020us_i_1
       (.I0(\cnt_1020us[15]_i_3_n_0 ),
        .I1(clk_1020us_reg_n_0),
        .O(clk_1020us_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_1020us_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_1020us_i_1_n_0),
        .Q(clk_1020us_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFBF0040)) 
    clk_6us_i_1
       (.I0(clk_6us_i_2_n_0),
        .I1(\cnt_clk_6us_reg_n_0_[2] ),
        .I2(\cnt_clk_6us_reg_n_0_[0] ),
        .I3(\cnt_clk_6us_reg_n_0_[1] ),
        .I4(clk_6us_reg_n_0),
        .O(clk_6us_i_1_n_0));
  LUT3 #(
    .INIT(8'hFD)) 
    clk_6us_i_2
       (.I0(\cnt_clk_6us_reg_n_0_[4] ),
        .I1(\cnt_clk_6us_reg_n_0_[3] ),
        .I2(\cnt_clk_6us[4]_i_2_n_0 ),
        .O(clk_6us_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_6us_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clk_6us_i_1_n_0),
        .Q(clk_6us_reg_n_0),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_1020us[0]_i_1 
       (.I0(\cnt_1020us_reg_n_0_[0] ),
        .O(cnt_1020us));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[12]_i_2 
       (.I0(\cnt_1020us_reg_n_0_[12] ),
        .O(\cnt_1020us[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[12]_i_3 
       (.I0(\cnt_1020us_reg_n_0_[11] ),
        .O(\cnt_1020us[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[12]_i_4 
       (.I0(\cnt_1020us_reg_n_0_[10] ),
        .O(\cnt_1020us[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[12]_i_5 
       (.I0(\cnt_1020us_reg_n_0_[9] ),
        .O(\cnt_1020us[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_1020us[15]_i_1 
       (.I0(\cnt_1020us[15]_i_3_n_0 ),
        .O(clk_1020us));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \cnt_1020us[15]_i_3 
       (.I0(\cnt_1020us_reg_n_0_[5] ),
        .I1(\cnt_1020us_reg_n_0_[3] ),
        .I2(\cnt_1020us_reg_n_0_[2] ),
        .I3(\cnt_1020us_reg_n_0_[1] ),
        .I4(\cnt_1020us[15]_i_7_n_0 ),
        .I5(\cnt_1020us[15]_i_8_n_0 ),
        .O(\cnt_1020us[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[15]_i_4 
       (.I0(\cnt_1020us_reg_n_0_[15] ),
        .O(\cnt_1020us[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[15]_i_5 
       (.I0(\cnt_1020us_reg_n_0_[14] ),
        .O(\cnt_1020us[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[15]_i_6 
       (.I0(\cnt_1020us_reg_n_0_[13] ),
        .O(\cnt_1020us[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \cnt_1020us[15]_i_7 
       (.I0(\cnt_1020us_reg_n_0_[12] ),
        .I1(\cnt_1020us_reg_n_0_[11] ),
        .I2(\cnt_1020us_reg_n_0_[14] ),
        .I3(\cnt_1020us_reg_n_0_[0] ),
        .I4(\cnt_1020us_reg_n_0_[15] ),
        .I5(\cnt_1020us_reg_n_0_[13] ),
        .O(\cnt_1020us[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
    \cnt_1020us[15]_i_8 
       (.I0(\cnt_1020us_reg_n_0_[4] ),
        .I1(\cnt_1020us_reg_n_0_[6] ),
        .I2(\cnt_1020us_reg_n_0_[10] ),
        .I3(\cnt_1020us_reg_n_0_[9] ),
        .I4(\cnt_1020us_reg_n_0_[7] ),
        .I5(\cnt_1020us_reg_n_0_[8] ),
        .O(\cnt_1020us[15]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[4]_i_2 
       (.I0(\cnt_1020us_reg_n_0_[4] ),
        .O(\cnt_1020us[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[4]_i_3 
       (.I0(\cnt_1020us_reg_n_0_[3] ),
        .O(\cnt_1020us[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[4]_i_4 
       (.I0(\cnt_1020us_reg_n_0_[2] ),
        .O(\cnt_1020us[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[4]_i_5 
       (.I0(\cnt_1020us_reg_n_0_[1] ),
        .O(\cnt_1020us[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[8]_i_2 
       (.I0(\cnt_1020us_reg_n_0_[8] ),
        .O(\cnt_1020us[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[8]_i_3 
       (.I0(\cnt_1020us_reg_n_0_[7] ),
        .O(\cnt_1020us[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[8]_i_4 
       (.I0(\cnt_1020us_reg_n_0_[6] ),
        .O(\cnt_1020us[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \cnt_1020us[8]_i_5 
       (.I0(\cnt_1020us_reg_n_0_[5] ),
        .O(\cnt_1020us[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_1020us),
        .Q(\cnt_1020us_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[12]_i_1_n_6 ),
        .Q(\cnt_1020us_reg_n_0_[10] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[12]_i_1_n_5 ),
        .Q(\cnt_1020us_reg_n_0_[11] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[12]_i_1_n_4 ),
        .Q(\cnt_1020us_reg_n_0_[12] ),
        .R(clk_1020us));
  CARRY4 \cnt_1020us_reg[12]_i_1 
       (.CI(\cnt_1020us_reg[8]_i_1_n_0 ),
        .CO({\cnt_1020us_reg[12]_i_1_n_0 ,\cnt_1020us_reg[12]_i_1_n_1 ,\cnt_1020us_reg[12]_i_1_n_2 ,\cnt_1020us_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1020us_reg[12]_i_1_n_4 ,\cnt_1020us_reg[12]_i_1_n_5 ,\cnt_1020us_reg[12]_i_1_n_6 ,\cnt_1020us_reg[12]_i_1_n_7 }),
        .S({\cnt_1020us[12]_i_2_n_0 ,\cnt_1020us[12]_i_3_n_0 ,\cnt_1020us[12]_i_4_n_0 ,\cnt_1020us[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[15]_i_2_n_7 ),
        .Q(\cnt_1020us_reg_n_0_[13] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[15]_i_2_n_6 ),
        .Q(\cnt_1020us_reg_n_0_[14] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[15]_i_2_n_5 ),
        .Q(\cnt_1020us_reg_n_0_[15] ),
        .R(clk_1020us));
  CARRY4 \cnt_1020us_reg[15]_i_2 
       (.CI(\cnt_1020us_reg[12]_i_1_n_0 ),
        .CO({\NLW_cnt_1020us_reg[15]_i_2_CO_UNCONNECTED [3:2],\cnt_1020us_reg[15]_i_2_n_2 ,\cnt_1020us_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_1020us_reg[15]_i_2_O_UNCONNECTED [3],\cnt_1020us_reg[15]_i_2_n_5 ,\cnt_1020us_reg[15]_i_2_n_6 ,\cnt_1020us_reg[15]_i_2_n_7 }),
        .S({1'b0,\cnt_1020us[15]_i_4_n_0 ,\cnt_1020us[15]_i_5_n_0 ,\cnt_1020us[15]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[4]_i_1_n_7 ),
        .Q(\cnt_1020us_reg_n_0_[1] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[4]_i_1_n_6 ),
        .Q(\cnt_1020us_reg_n_0_[2] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[4]_i_1_n_5 ),
        .Q(\cnt_1020us_reg_n_0_[3] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[4]_i_1_n_4 ),
        .Q(\cnt_1020us_reg_n_0_[4] ),
        .R(clk_1020us));
  CARRY4 \cnt_1020us_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\cnt_1020us_reg[4]_i_1_n_0 ,\cnt_1020us_reg[4]_i_1_n_1 ,\cnt_1020us_reg[4]_i_1_n_2 ,\cnt_1020us_reg[4]_i_1_n_3 }),
        .CYINIT(\cnt_1020us_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1020us_reg[4]_i_1_n_4 ,\cnt_1020us_reg[4]_i_1_n_5 ,\cnt_1020us_reg[4]_i_1_n_6 ,\cnt_1020us_reg[4]_i_1_n_7 }),
        .S({\cnt_1020us[4]_i_2_n_0 ,\cnt_1020us[4]_i_3_n_0 ,\cnt_1020us[4]_i_4_n_0 ,\cnt_1020us[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[8]_i_1_n_7 ),
        .Q(\cnt_1020us_reg_n_0_[5] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[8]_i_1_n_6 ),
        .Q(\cnt_1020us_reg_n_0_[6] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[8]_i_1_n_5 ),
        .Q(\cnt_1020us_reg_n_0_[7] ),
        .R(clk_1020us));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[8]_i_1_n_4 ),
        .Q(\cnt_1020us_reg_n_0_[8] ),
        .R(clk_1020us));
  CARRY4 \cnt_1020us_reg[8]_i_1 
       (.CI(\cnt_1020us_reg[4]_i_1_n_0 ),
        .CO({\cnt_1020us_reg[8]_i_1_n_0 ,\cnt_1020us_reg[8]_i_1_n_1 ,\cnt_1020us_reg[8]_i_1_n_2 ,\cnt_1020us_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_1020us_reg[8]_i_1_n_4 ,\cnt_1020us_reg[8]_i_1_n_5 ,\cnt_1020us_reg[8]_i_1_n_6 ,\cnt_1020us_reg[8]_i_1_n_7 }),
        .S({\cnt_1020us[8]_i_2_n_0 ,\cnt_1020us[8]_i_3_n_0 ,\cnt_1020us[8]_i_4_n_0 ,\cnt_1020us[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_1020us_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\cnt_1020us_reg[12]_i_1_n_7 ),
        .Q(\cnt_1020us_reg_n_0_[9] ),
        .R(clk_1020us));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_clk_6us[0]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[0] ),
        .O(cnt_clk_6us[0]));
  LUT6 #(
    .INIT(64'h0000FFFFEFFF0000)) 
    \cnt_clk_6us[1]_i_1 
       (.I0(\cnt_clk_6us[4]_i_2_n_0 ),
        .I1(\cnt_clk_6us_reg_n_0_[3] ),
        .I2(\cnt_clk_6us_reg_n_0_[4] ),
        .I3(\cnt_clk_6us_reg_n_0_[2] ),
        .I4(\cnt_clk_6us_reg_n_0_[0] ),
        .I5(\cnt_clk_6us_reg_n_0_[1] ),
        .O(cnt_clk_6us[1]));
  LUT6 #(
    .INIT(64'h5455FFFFAAAA0000)) 
    \cnt_clk_6us[2]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[1] ),
        .I1(\cnt_clk_6us[4]_i_2_n_0 ),
        .I2(\cnt_clk_6us_reg_n_0_[3] ),
        .I3(\cnt_clk_6us_reg_n_0_[4] ),
        .I4(\cnt_clk_6us_reg_n_0_[0] ),
        .I5(\cnt_clk_6us_reg_n_0_[2] ),
        .O(cnt_clk_6us[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \cnt_clk_6us[3]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[1] ),
        .I1(\cnt_clk_6us_reg_n_0_[0] ),
        .I2(\cnt_clk_6us_reg_n_0_[2] ),
        .I3(\cnt_clk_6us_reg_n_0_[3] ),
        .O(cnt_clk_6us[3]));
  LUT6 #(
    .INIT(64'h3EC0FF00FF00FF00)) 
    \cnt_clk_6us[4]_i_1 
       (.I0(\cnt_clk_6us[4]_i_2_n_0 ),
        .I1(\cnt_clk_6us_reg_n_0_[3] ),
        .I2(\cnt_clk_6us_reg_n_0_[1] ),
        .I3(\cnt_clk_6us_reg_n_0_[4] ),
        .I4(\cnt_clk_6us_reg_n_0_[0] ),
        .I5(\cnt_clk_6us_reg_n_0_[2] ),
        .O(cnt_clk_6us[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \cnt_clk_6us[4]_i_2 
       (.I0(\cnt_clk_6us_reg_n_0_[8] ),
        .I1(\cnt_clk_6us_reg_n_0_[9] ),
        .I2(\cnt_clk_6us_reg_n_0_[5] ),
        .I3(\cnt_clk_6us_reg_n_0_[6] ),
        .I4(\cnt_clk_6us_reg_n_0_[7] ),
        .O(\cnt_clk_6us[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \cnt_clk_6us[5]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[2] ),
        .I1(\cnt_clk_6us_reg_n_0_[0] ),
        .I2(\cnt_clk_6us_reg_n_0_[1] ),
        .I3(\cnt_clk_6us_reg_n_0_[3] ),
        .I4(\cnt_clk_6us_reg_n_0_[4] ),
        .I5(\cnt_clk_6us_reg_n_0_[5] ),
        .O(cnt_clk_6us[5]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \cnt_clk_6us[6]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[5] ),
        .I1(\cnt_clk_6us_reg_n_0_[4] ),
        .I2(\cnt_clk_6us_reg_n_0_[3] ),
        .I3(\cnt_clk_6us_reg_n_0_[1] ),
        .I4(\cnt_clk_6us[7]_i_2_n_0 ),
        .I5(\cnt_clk_6us_reg_n_0_[6] ),
        .O(cnt_clk_6us[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAA3000)) 
    \cnt_clk_6us[7]_i_1 
       (.I0(\cnt_clk_6us[7]_i_2_n_0 ),
        .I1(\cnt_clk_6us[9]_i_2_n_0 ),
        .I2(\cnt_clk_6us_reg_n_0_[5] ),
        .I3(\cnt_clk_6us_reg_n_0_[6] ),
        .I4(\cnt_clk_6us_reg_n_0_[7] ),
        .I5(\cnt_clk_6us[7]_i_3_n_0 ),
        .O(cnt_clk_6us[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_clk_6us[7]_i_2 
       (.I0(\cnt_clk_6us_reg_n_0_[0] ),
        .I1(\cnt_clk_6us_reg_n_0_[2] ),
        .O(\cnt_clk_6us[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBFF0000FFF30000)) 
    \cnt_clk_6us[7]_i_3 
       (.I0(\cnt_clk_6us[7]_i_4_n_0 ),
        .I1(\cnt_clk_6us_reg_n_0_[4] ),
        .I2(\cnt_clk_6us[7]_i_5_n_0 ),
        .I3(\cnt_clk_6us_reg_n_0_[3] ),
        .I4(\cnt_clk_6us_reg_n_0_[7] ),
        .I5(\cnt_clk_6us_reg_n_0_[1] ),
        .O(\cnt_clk_6us[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cnt_clk_6us[7]_i_4 
       (.I0(\cnt_clk_6us_reg_n_0_[5] ),
        .I1(\cnt_clk_6us_reg_n_0_[6] ),
        .O(\cnt_clk_6us[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt_clk_6us[7]_i_5 
       (.I0(\cnt_clk_6us_reg_n_0_[6] ),
        .I1(\cnt_clk_6us_reg_n_0_[5] ),
        .I2(\cnt_clk_6us_reg_n_0_[9] ),
        .I3(\cnt_clk_6us_reg_n_0_[8] ),
        .O(\cnt_clk_6us[7]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \cnt_clk_6us[8]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[7] ),
        .I1(\cnt_clk_6us_reg_n_0_[6] ),
        .I2(\cnt_clk_6us_reg_n_0_[5] ),
        .I3(\cnt_clk_6us[9]_i_2_n_0 ),
        .I4(\cnt_clk_6us_reg_n_0_[8] ),
        .O(cnt_clk_6us[8]));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \cnt_clk_6us[9]_i_1 
       (.I0(\cnt_clk_6us_reg_n_0_[8] ),
        .I1(\cnt_clk_6us[9]_i_2_n_0 ),
        .I2(\cnt_clk_6us_reg_n_0_[5] ),
        .I3(\cnt_clk_6us_reg_n_0_[6] ),
        .I4(\cnt_clk_6us_reg_n_0_[7] ),
        .I5(\cnt_clk_6us_reg_n_0_[9] ),
        .O(cnt_clk_6us[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt_clk_6us[9]_i_2 
       (.I0(\cnt_clk_6us_reg_n_0_[4] ),
        .I1(\cnt_clk_6us_reg_n_0_[3] ),
        .I2(\cnt_clk_6us_reg_n_0_[1] ),
        .I3(\cnt_clk_6us_reg_n_0_[0] ),
        .I4(\cnt_clk_6us_reg_n_0_[2] ),
        .O(\cnt_clk_6us[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[0]),
        .Q(\cnt_clk_6us_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[1]),
        .Q(\cnt_clk_6us_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[2]),
        .Q(\cnt_clk_6us_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[3]),
        .Q(\cnt_clk_6us_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[4]),
        .Q(\cnt_clk_6us_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[5]),
        .Q(\cnt_clk_6us_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[6]),
        .Q(\cnt_clk_6us_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[7]),
        .Q(\cnt_clk_6us_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[8]),
        .Q(\cnt_clk_6us_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_clk_6us_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(cnt_clk_6us[9]),
        .Q(\cnt_clk_6us_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_for_trig[0]_i_1 
       (.I0(count_for_trig[0]),
        .O(\count_for_trig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_for_trig[1]_i_1 
       (.I0(count_for_trig[0]),
        .I1(count_for_trig[1]),
        .O(\count_for_trig[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_for_trig[2]_i_1 
       (.I0(count_for_trig[0]),
        .I1(count_for_trig[1]),
        .I2(count_for_trig[2]),
        .O(\count_for_trig[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \count_for_trig[3]_i_1 
       (.I0(count_for_trig[0]),
        .I1(count_for_trig[1]),
        .I2(count_for_trig[3]),
        .I3(count_for_trig[2]),
        .O(\count_for_trig[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_for_trig[3]_i_2 
       (.I0(count_for_trig[1]),
        .I1(count_for_trig[0]),
        .I2(count_for_trig[2]),
        .I3(count_for_trig[3]),
        .O(\count_for_trig[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_trig_reg[0] 
       (.C(clk_1020us_reg_n_0),
        .CE(1'b1),
        .D(\count_for_trig[0]_i_1_n_0 ),
        .Q(count_for_trig[0]),
        .R(\count_for_trig[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_trig_reg[1] 
       (.C(clk_1020us_reg_n_0),
        .CE(1'b1),
        .D(\count_for_trig[1]_i_1_n_0 ),
        .Q(count_for_trig[1]),
        .R(\count_for_trig[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_trig_reg[2] 
       (.C(clk_1020us_reg_n_0),
        .CE(1'b1),
        .D(\count_for_trig[2]_i_1_n_0 ),
        .Q(count_for_trig[2]),
        .R(\count_for_trig[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_for_trig_reg[3] 
       (.C(clk_1020us_reg_n_0),
        .CE(1'b1),
        .D(\count_for_trig[3]_i_2_n_0 ),
        .Q(count_for_trig[3]),
        .R(\count_for_trig[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count_trig[0]_i_1 
       (.I0(count_trig_reg[0]),
        .O(\count_trig[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_trig[1]_i_1 
       (.I0(count_trig_reg[0]),
        .I1(count_trig_reg[1]),
        .O(\count_trig[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count_trig[2]_i_1 
       (.I0(count_trig_reg[2]),
        .I1(count_trig_reg[0]),
        .I2(count_trig_reg[1]),
        .O(\count_trig[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count_trig[3]_i_1 
       (.I0(count_trig_reg[3]),
        .I1(count_trig_reg[0]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[2]),
        .O(\count_trig[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \count_trig[4]_i_1 
       (.I0(count_trig_reg[4]),
        .I1(count_trig_reg[2]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[0]),
        .I4(count_trig_reg[3]),
        .O(\count_trig[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count_trig[5]_i_1 
       (.I0(count_trig_reg[5]),
        .I1(count_trig_reg[3]),
        .I2(count_trig_reg[0]),
        .I3(count_trig_reg[1]),
        .I4(count_trig_reg[2]),
        .I5(count_trig_reg[4]),
        .O(\count_trig[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \count_trig[6]_i_1 
       (.I0(count_trig_reg[6]),
        .I1(count_trig_reg[4]),
        .I2(count_trig_reg[2]),
        .I3(\count_trig[6]_i_2_n_0 ),
        .I4(count_trig_reg[3]),
        .I5(count_trig_reg[5]),
        .O(\count_trig[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_trig[6]_i_2 
       (.I0(count_trig_reg[1]),
        .I1(count_trig_reg[0]),
        .O(\count_trig[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB888CCCC)) 
    \count_trig[7]_i_1 
       (.I0(\count_trig[7]_i_2_n_0 ),
        .I1(count_trig_reg[7]),
        .I2(count_trig_reg[5]),
        .I3(\count_trig[7]_i_3_n_0 ),
        .I4(count_trig_reg[6]),
        .O(\count_trig[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \count_trig[7]_i_2 
       (.I0(count_trig_reg[4]),
        .I1(count_trig_reg[2]),
        .I2(count_trig_reg[0]),
        .I3(count_trig_reg[1]),
        .I4(count_trig_reg[3]),
        .I5(count_trig_reg[5]),
        .O(\count_trig[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count_trig[7]_i_3 
       (.I0(count_trig_reg[3]),
        .I1(count_trig_reg[0]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[2]),
        .I4(count_trig_reg[4]),
        .O(\count_trig[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[0] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[0]_i_1_n_0 ),
        .Q(count_trig_reg[0]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[1] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[1]_i_1_n_0 ),
        .Q(count_trig_reg[1]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[2] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[2]_i_1_n_0 ),
        .Q(count_trig_reg[2]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[3] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[3]_i_1_n_0 ),
        .Q(count_trig_reg[3]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[4] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[4]_i_1_n_0 ),
        .Q(count_trig_reg[4]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[5] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[5]_i_1_n_0 ),
        .Q(count_trig_reg[5]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[6] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[6]_i_1_n_0 ),
        .Q(count_trig_reg[6]),
        .R(sclk7_out));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \count_trig_reg[7] 
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(\count_trig[7]_i_1_n_0 ),
        .Q(count_trig_reg[7]),
        .R(sclk7_out));
  OBUF down_OBUF_inst
       (.I(down_OBUF),
        .O(down));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    down_i_1
       (.I0(spi_miso_IBUF),
        .I1(count_trig_reg[2]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[0]),
        .I4(up_i_2_n_0),
        .I5(down_OBUF),
        .O(down_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    down_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(down_i_1_n_0),
        .Q(down_OBUF),
        .R(1'b0));
  OBUFT l1_OBUF_inst
       (.I(1'b0),
        .O(l1),
        .T(1'b1));
  OBUFT l2_OBUF_inst
       (.I(1'b0),
        .O(l2),
        .T(1'b1));
  OBUF left_OBUF_inst
       (.I(left_OBUF),
        .O(left));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    left_i_1
       (.I0(spi_miso_IBUF),
        .I1(left_i_2_n_0),
        .I2(left_i_3_n_0),
        .I3(count_trig_reg[3]),
        .I4(count_trig_reg[4]),
        .I5(left_OBUF),
        .O(left_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h01)) 
    left_i_2
       (.I0(count_trig_reg[1]),
        .I1(count_trig_reg[0]),
        .I2(count_trig_reg[2]),
        .O(left_i_2_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    left_i_3
       (.I0(count_trig_reg[5]),
        .I1(count_trig_reg[6]),
        .I2(sclk7_out),
        .I3(count_trig_reg[7]),
        .O(left_i_3_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    left_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(left_i_1_n_0),
        .Q(left_OBUF),
        .R(1'b0));
  OBUFT o_OBUF_inst
       (.I(1'b0),
        .O(o),
        .T(1'b1));
  OBUFT r1_OBUF_inst
       (.I(1'b0),
        .O(r1),
        .T(1'b1));
  OBUFT r2_OBUF_inst
       (.I(1'b0),
        .O(r2),
        .T(1'b1));
  OBUF right_OBUF_inst
       (.I(right_OBUF),
        .O(right));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    right_i_1
       (.I0(spi_miso_IBUF),
        .I1(count_trig_reg[2]),
        .I2(count_trig_reg[0]),
        .I3(count_trig_reg[1]),
        .I4(up_i_2_n_0),
        .I5(right_OBUF),
        .O(right_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    right_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(right_i_1_n_0),
        .Q(right_OBUF),
        .R(1'b0));
  OBUF sclk_OBUF_inst
       (.I(sclk_OBUF),
        .O(sclk));
  LUT6 #(
    .INIT(64'hFBAAFBFF04550400)) 
    sclk_i_1
       (.I0(sclk7_out),
        .I1(sclk_i_2_n_0),
        .I2(count_trig_reg[6]),
        .I3(count_trig_reg[7]),
        .I4(sclk_reg_i_3_n_0),
        .I5(sclk_OBUF),
        .O(sclk_i_1_n_0));
  LUT6 #(
    .INIT(64'h5555555336366777)) 
    sclk_i_2
       (.I0(count_trig_reg[5]),
        .I1(count_trig_reg[4]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[0]),
        .I4(count_trig_reg[2]),
        .I5(count_trig_reg[3]),
        .O(sclk_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFF7FFF77BDBDBDE)) 
    sclk_i_4
       (.I0(count_trig_reg[5]),
        .I1(count_trig_reg[4]),
        .I2(count_trig_reg[2]),
        .I3(count_trig_reg[1]),
        .I4(count_trig_reg[0]),
        .I5(count_trig_reg[3]),
        .O(sclk_i_4_n_0));
  LUT6 #(
    .INIT(64'hBBEFBEEFFFF7FF77)) 
    sclk_i_5
       (.I0(count_trig_reg[5]),
        .I1(count_trig_reg[4]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[2]),
        .I4(count_trig_reg[0]),
        .I5(count_trig_reg[3]),
        .O(sclk_i_5_n_0));
  FDSE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b1)) 
    sclk_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(sclk_i_1_n_0),
        .Q(sclk_OBUF),
        .S(sclk7_out));
  MUXF7 sclk_reg_i_3
       (.I0(sclk_i_4_n_0),
        .I1(sclk_i_5_n_0),
        .O(sclk_reg_i_3_n_0),
        .S(count_trig_reg[6]));
  OBUF scs_OBUF_inst
       (.I(scs_OBUF),
        .O(scs));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    scs_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(sclk7_out),
        .Q(scs_OBUF),
        .R(1'b0));
  OBUF smosi_OBUF_inst
       (.I(smosi_OBUF),
        .O(smosi));
  LUT6 #(
    .INIT(64'hC0C0C0C0C0CFC0CA)) 
    smosi_i_1
       (.I0(smosi_i_2_n_0),
        .I1(smosi_OBUF),
        .I2(sclk7_out),
        .I3(count_trig_reg[6]),
        .I4(smosi_i_3_n_0),
        .I5(count_trig_reg[7]),
        .O(smosi_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000002)) 
    smosi_i_2
       (.I0(count_trig_reg[5]),
        .I1(count_trig_reg[3]),
        .I2(count_trig_reg[0]),
        .I3(count_trig_reg[1]),
        .I4(count_trig_reg[2]),
        .I5(count_trig_reg[4]),
        .O(smosi_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000004014001)) 
    smosi_i_3
       (.I0(count_trig_reg[3]),
        .I1(count_trig_reg[2]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[4]),
        .I4(count_trig_reg[0]),
        .I5(count_trig_reg[5]),
        .O(smosi_i_3_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    smosi_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(smosi_i_1_n_0),
        .Q(smosi_OBUF),
        .R(1'b0));
  IBUF spi_miso_IBUF_inst
       (.I(spi_miso),
        .O(spi_miso_IBUF));
  OBUFT square_OBUF_inst
       (.I(1'b0),
        .O(square),
        .T(1'b1));
  OBUFT triangle_OBUF_inst
       (.I(1'b0),
        .O(triangle),
        .T(1'b1));
  LUT5 #(
    .INIT(32'hAAAAA8BA)) 
    trig_i_1
       (.I0(sclk7_out),
        .I1(count_for_trig[2]),
        .I2(count_for_trig[1]),
        .I3(count_for_trig[0]),
        .I4(count_for_trig[3]),
        .O(trig_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    trig_reg
       (.C(clk_1020us_reg_n_0),
        .CE(1'b1),
        .D(trig_i_1_n_0),
        .Q(sclk7_out),
        .R(1'b0));
  OBUF up_OBUF_inst
       (.I(up_OBUF),
        .O(up));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    up_i_1
       (.I0(spi_miso_IBUF),
        .I1(count_trig_reg[2]),
        .I2(count_trig_reg[1]),
        .I3(count_trig_reg[0]),
        .I4(up_i_2_n_0),
        .I5(up_OBUF),
        .O(up_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    up_i_2
       (.I0(count_trig_reg[4]),
        .I1(count_trig_reg[3]),
        .I2(count_trig_reg[7]),
        .I3(sclk7_out),
        .I4(count_trig_reg[6]),
        .I5(count_trig_reg[5]),
        .O(up_i_2_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    up_reg
       (.C(clk_6us_reg_n_0),
        .CE(1'b1),
        .D(up_i_1_n_0),
        .Q(up_OBUF),
        .R(1'b0));
  OBUFT x_OBUF_inst
       (.I(1'b0),
        .O(x),
        .T(1'b1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
