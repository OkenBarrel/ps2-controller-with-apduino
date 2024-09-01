
module  vga_pic
(
    input   wire            vga_clk     ,   //25MHz
    input   wire            sys_rst_n   ,   //
    input   wire    [11:0]   pix_x       ,   //
    input   wire    [11:0]   pix_y       ,   //
    input              [   9:0]         x_move                     ,
    input              [   9:0]         y_move                     ,

    output  wire    [15:0]  pix_data_out    //

);

//********************************************************************//
//****************** Parameter and Internal Signal *******************//
//********************************************************************//

parameter   H_VALID =  10'd640     ,   //12'd1920 ,//
            V_VALID =  10'd480     ;   //12'd1080;// 

parameter   H_PIC   =   10'd100     ,   
            W_PIC   =   10'd100     ,  
            PIC_SIZE=   14'd10000   ;  

parameter   RED     =   16'hF800    ,  
            ORANGE  =   16'hFC00    ,  
            YELLOW  =   16'hFFE0    ,  
            GREEN   =   16'h07E0    ,   
            CYAN    =   16'h07FF    ,  
            BLUE    =   16'h001F    , 
            PURPPLE =   16'hF81F    ,  
            BLACK   =   16'h0000    ,   
            WHITE   =   16'hFFFF    ,  
            GRAY    =   16'hD69A    ;  

//wire  define
wire            rd_en       ; 
wire    [15:0]  pic_data    ; 

//reg   define
reg     [13:0]  rom_addr    ;   
reg             pic_valid   ;  
reg     [15:0]  pix_data    ;  
//reg     [9:0]   x_move      ;  
//reg     [9:0]   y_move      ;   
reg             x_flag      ;   
reg             y_flag      ;   

//********************************************************************//
//***************************** Main Code ****************************//
//********************************************************************//


//always@(posedge vga_clk or negedge sys_rst_n)
//    if(sys_rst_n == 1'b0)
//        x_flag  <=  1'b0;
//    else    if(x_move == 10'd0)
//        x_flag  <=  1'b0;
//    else    if((x_move == (H_VALID - H_PIC - 1'b1))
//            && (pix_x == (H_VALID - 1'b1))
//            && (pix_y == (V_VALID - 1'b1)))
//        x_flag  <=  1'b1;


//always@(posedge vga_clk or negedge sys_rst_n)
//    if(sys_rst_n == 1'b0)
//        x_move   <=  10'd0;
//    else    if((x_flag == 1'b0) && (pix_x == (H_VALID - 1'b1))
//                && (pix_y == (V_VALID -1'b1)))
//        x_move   <=  x_move + 1'b1;
//    else    if((x_flag == 1'b1) && (pix_x == (H_VALID - 1'b1))
//                && (pix_y == (V_VALID -1'b1)))
//        x_move   <=  x_move - 1'b1;


//always@(posedge vga_clk or negedge sys_rst_n)
//    if(sys_rst_n == 1'b0)
//        y_flag  <=  1'b0;
//    else    if(y_move == 0)
//        y_flag  <=  1'b0;
//    else    if((y_move == (V_VALID - W_PIC - 1'b1))
//            && (pix_x == (H_VALID - 1'b1))
//            && (pix_y == (V_VALID - 1'b1)))
//        y_flag  <=  1'b1;


//always@(posedge vga_clk or negedge sys_rst_n)
//    if(sys_rst_n == 1'b0)
//        y_move   <=  10'd0;
//    else    if((y_flag == 1'b0) && (pix_x == (H_VALID - 1'b1))
//                && (pix_y == (V_VALID -1'b1)))
//        y_move   <=  y_move + 1'b1;
//    else    if((y_flag == 1'b1) && (pix_x == (H_VALID - 1'b1))
//                && (pix_y == (V_VALID -1'b1)))
//        y_move   <=  y_move - 1'b1;


assign  rd_en = (((pix_x >= (x_move))
                && (pix_x < (x_move + H_PIC))) 
                &&((pix_y >= (y_move))
                && ((pix_y < (y_move + W_PIC)))));


always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        pic_valid   <=  1'b1;
    else
        pic_valid   <=  rd_en;


assign  pix_data_out = (pic_valid == 1'b1) ? pic_data : pix_data;


always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        pix_data    <=  WHITE;
    else
        pix_data    <=  WHITE;


always@(posedge vga_clk or negedge sys_rst_n)
    if(sys_rst_n == 1'b0)
        rom_addr    <=  14'd0;
    else    if(rom_addr == (PIC_SIZE - 1'b1))
        rom_addr    <=  14'd0;
    else    if(rd_en == 1'b1)
        rom_addr    <=  rom_addr + 1'b1;



//-------------rom_pic_inst-------------
blk_mem_gen_0 rom_pic_inst (
  .clka(vga_clk),    // input wire clka
  .ena(rd_en),      // input wire ena
  .addra(rom_addr),  // input wire [13 : 0] addra
  .douta(pic_data)  // output wire [15 : 0] douta
);

endmodule
