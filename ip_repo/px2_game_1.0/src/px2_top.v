`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/21 09:57:18
// Design Name: 
// Module Name: px2_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module px2_top(
clk,
sclk,
smosi,//主机输出
scs,
spi_miso,//手柄到主机
 l2,r2,l1,r1,triangle,o,x,square,up,right,down,left
    );
    input clk;
    reg sclk;
    output sclk;
    reg smosi;
    output smosi;
    input spi_miso;
    reg scs;
    output scs;
    output l2,r2,l1,r1,triangle,o,x,square,up,right,down,left;
    reg l2,r2,l1,r1,triangle,o,x,square,start,up,right,down,left;
    reg trig;
    reg [9:0]cnt_clk_6us=10'b00_0000_0000;
    reg clk_6us=0,clk_1020us=0;
    reg [15:0]cnt_1020us=16'b0000_0000_0000_0000;
    reg [7:0]data_in;
    always @(posedge clk)   //定义两个时钟，周期分别为6us和1020us
    begin
            if(cnt_clk_6us == 10'b00_1001_0110-1) begin
                cnt_clk_6us <= 0;
                clk_6us <= ~clk_6us;   //按位取反
            end
            else
                cnt_clk_6us <= cnt_clk_6us + 1;
    
            if(cnt_1020us == 16'b0110_0011_1001_1100-1) begin    //  110 0011 1001 1100  周期1020us
                cnt_1020us <= 0;
                clk_1020us <= ~clk_1020us;   //按位取反
            end
            else
                cnt_1020us <= cnt_1020us + 1;
    end
    reg [3:0]count_for_trig=4'b0000;
    always @( posedge clk_1020us)
    begin
        count_for_trig<=count_for_trig+1;
        if (count_for_trig==4'b0001)   
        trig<=0;
        else if (count_for_trig==4'b0010)   //trig拉低1020us
        trig<=1;
        else    if (count_for_trig==4'b1010)
            count_for_trig<=4'b0000;
    end
    
    reg [7:0] data_in1;
    reg [7:0] count_trig=0;
    always @(negedge clk_6us)
    begin
        if (trig==0)   
        begin
        scs<=0;    
        count_trig<=count_trig+1;
        //////////spi_clk波形产生////////////
                if ((0<count_trig)&(count_trig<17))   //byte1
                sclk<=~sclk;
                else if ((19<count_trig)&(count_trig<36))  //byte2
                sclk<=~sclk;
                else if ((38<count_trig)&(count_trig<55))  //byte3
                sclk<=~sclk;
                else if ((57<count_trig)&(count_trig<74))  //byte4
                sclk<=~sclk;
                else if ((76<count_trig)&(count_trig<93))  //byte5
                sclk<=~sclk;
                else if ((95<count_trig)&(count_trig<112))  //byte6
                sclk<=~sclk;
                else if ((114<count_trig)&(count_trig<131))  //byte7
                sclk<=~sclk;
                else if ((133<count_trig)&(count_trig<150))  //byte8
                sclk<=~sclk;
                else if ((152<count_trig)&(count_trig<169))  //byte9
                sclk<=~sclk;
    
        ///////////////////mosi波形产生///////////////////
        //通过波形图可以看出莫斯一共拉高了三次，每次持续12us，因为只需要发送一个0x01和0x42
                if (count_trig<2)
                    smosi<=1;
                else if ((20<count_trig)&(count_trig<23))
                    smosi<=1;
                else if ((30<count_trig)&(count_trig<33))
                    smosi<=1;
                else 
                    smosi<=0;
                //////////////读取miso////////////////////
            
//                    if (count_trig==58)    //读byte4
//                    select<=spi_miso;
//                else if (count_trig==60)
//                    l3<=spi_miso;
//                else if (count_trig==62)
//                    r3<=spi_miso;
//                else if (count_trig==64)
//                    start<=spi_miso;
//                else 
                if (count_trig==66)
                    up<=spi_miso;
                else if (count_trig==68)
                    right<=spi_miso;
                else if (count_trig==70)
                   down<=spi_miso;
                else if (count_trig==72)
                    left<=spi_miso;
                else if (count_trig==78)//77    //读byte5
                    l2<=spi_miso;
                else if (count_trig==80)//79
                    r2<=spi_miso;
                else if (count_trig==82)//81
                    l1<=spi_miso;
                else if (count_trig==84)//83
                    r1<=spi_miso;
                else if (count_trig==86)//85
                    triangle<=spi_miso;
                else if (count_trig==88)//87
                    o<=spi_miso;
                else if (count_trig==90)//89
                   x<=spi_miso;
                else if (count_trig==92)//91
                    square<=spi_miso;  
            end
        else if(trig==1)   //不通讯时（即trig=1时）cs信号拉高，clk信号拉高
            begin
            scs<=1;
            sclk<=1;
            count_trig<=0;
            end
//    assign O_scs=scs;
//    assign O_sclk=sclk;
    end
endmodule
