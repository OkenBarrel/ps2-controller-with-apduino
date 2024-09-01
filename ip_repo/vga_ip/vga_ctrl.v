`timescale  1ns/1ns


module  vga_ctrl
(
    input   wire            vga_clk     ,   //25MHz
    input   wire            sys_rst_n   ,   //
    input   wire    [15:0]  pix_data    ,   //

    output  wire    [11:0]  pix_x       ,   //?
    output  wire    [11:0]  pix_y       ,   //?
    output  wire            hsync       ,   //?
    output  wire            vsync       ,   //
    output  wire            rgb_valid   ,
    output  wire    [15:0]  rgb             //
);


//parameter define
parameter H_SYNC    = 10'd96  ,   //行同�?           10'd44  ,//   
          H_BACK    =  10'd40  ,   //行时序后�?      10'd148  ,//   
          H_LEFT    = 10'd8   ,   //行时序左边框     10'd0   ,//   
          H_VALID   =  10'd640 ,   //行有效数�?      12'd1920 ,//
          H_RIGHT   = 10'd8   ,   //行时序右边框     10'd0   ,//   
          H_FRONT   =  10'd8   ,   //行时序前�?      10'd88   ,//
          H_TOTAL   =  10'd800 ;   //行扫描周�?      12'd2200 ;//
parameter V_SYNC    = 10'd2   ,   //场同�?           10'd5   ,// 
          V_BACK    = 10'd25  ,   //场时序后�?       10'd36  ,//   
          V_TOP     = 10'd8   ,   //场时序上边框     10'd0   ,//   
          V_VALID   =  10'd480 ,   //场有效数�?      12'd1080 ,//
          V_BOTTOM  = 10'd8   ,   //场时序下边框     10'd0   ,//   
          V_FRONT   = 10'd2   ,   //场时序前�?       10'd4   ,// 
          V_TOTAL   =  10'd525 ;   //场扫描周�?      12'd1125 ;//  
//wire  define
wire            pix_data_req    ;   //?

//reg   define
reg     [11:0]  cnt_h           ;   //
reg     [11:0]  cnt_v           ;   //


//cnt_h
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_h   <=  12'd0   ;
    else    if(cnt_h == H_TOTAL - 1'd1)
        cnt_h   <=  12'd0   ;
    else
        cnt_h   <=  cnt_h + 1'd1   ;

//hsync
assign  hsync = (cnt_h  <=  H_SYNC - 1'd1) ? 1'b1 : 1'b0  ;

//cnt_v
always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        cnt_v   <=  12'd0 ;
    else    if((cnt_v == V_TOTAL - 1'd1) &&  (cnt_h == H_TOTAL-1'd1))
        cnt_v   <=  12'd0 ;
    else    if(cnt_h == H_TOTAL - 1'd1)
        cnt_v   <=  cnt_v + 1'd1 ;
    else
        cnt_v   <=  cnt_v ;

//vsync?
assign  vsync = (cnt_v  <=  V_SYNC - 1'd1) ? 1'b1 : 1'b0  ;

//rgb_valid:VGA
assign  rgb_valid = (((cnt_h >= H_SYNC + H_BACK + H_LEFT)
                    && (cnt_h < H_SYNC + H_BACK + H_LEFT + H_VALID))
                    &&((cnt_v >= V_SYNC + V_BACK + V_TOP)
                    && (cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID)))
                    ? 1'b1 : 1'b0;

//pix_data_req?
assign  pix_data_req = (((cnt_h >= H_SYNC + H_BACK + H_LEFT - 1'b1)
                    && (cnt_h < H_SYNC + H_BACK + H_LEFT + H_VALID - 1'b1))
                    &&((cnt_v >= V_SYNC + V_BACK + V_TOP)
                    && (cnt_v < V_SYNC + V_BACK + V_TOP + V_VALID)))
                    ? 1'b1 : 1'b0;

//pix_x,pix_y:VGA
assign  pix_x = (pix_data_req == 1'b1)
                ? (cnt_h - (H_SYNC + H_BACK + H_LEFT - 1'b1)) : 12'hfff;
assign  pix_y = (pix_data_req == 1'b1)
                ? (cnt_v - (V_SYNC + V_BACK + V_TOP)) : 12'hfff;

//rgb:
assign  rgb = (rgb_valid == 1'b1) ? pix_data : 16'b0 ;

endmodule
