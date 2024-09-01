
module    VGA_TIMING(
    input  wire                         sclk                       ,
    input  wire                         rst_n                      ,
    input              [   9:0]         x_move                     ,
    input              [   9:0]         y_move                     ,
//    input  wire        [  19:0]         data                       ,
    output             [   3:0]         po_vga_r                   ,
    output             [   3:0]         po_vga_g                   ,
    output             [   3:0]         po_vga_b                   ,
    //output                              po_de                      ,
    output                              po_v_sync                  ,
    output                              po_h_sync                   
         
//	input	wire	[31:0]	rgb_pixel,
//	output	wire		rd_fifo_en
);
//wire define

wire                   [  11:0]         pix_x                      ;//VGA
wire                   [  11:0]         pix_y                      ;
wire                   [  15:0]         pix_data                   ;
wire                   [  15:0]         rgb                        ;
//wire sclk;
//wire rst_n;

assign po_vga_r={rgb[15:12]};
assign po_vga_g={rgb[10:7]};
assign po_vga_b={rgb[4:1]};

//  clk_wiz_0 instance_name
//    (
//    // Clock in ports
//     .clk_in1(clk_in),      // input clk_in1
//     // Clock out ports
//     .clk_out1(sclk),     // output clk_out1
//     // Status and control signals
//     .locked(rst_n));      // output locked
//------------- vga_ctrl_inst -------------
vga_ctrl  vga_ctrl_inst
(
    .vga_clk                           (sclk                      ),//25MHz,1bit
    .sys_rst_n                         (rst_n                     ),//1bit
    .pix_data                          (pix_data                  ),//16bit

    .pix_x                             (pix_x                     ),//10bit
    .pix_y                             (pix_y                     ),//10bit


    .hsync                             (po_h_sync                 ),//1bit
    .vsync                             (po_v_sync                 ),//1bit
    .rgb_valid                         (                     ),
    .rgb                               (rgb                       ) //16bit
);
//------------- vga_pic_inst -------------
vga_pic vga_pic_inst
(
    .vga_clk                           (sclk                      ),//1bit
    .sys_rst_n                         (rst_n                     ),//1bit
    .pix_x                             (pix_x                     ),//10bit
    .pix_y                             (pix_y                     ),//10bit
    .x_move                            (x_move                 )                   ,
    .y_move                            (y_move                 )                    ,
    .pix_data_out                      (pix_data                  ) //16bit

);

endmodule