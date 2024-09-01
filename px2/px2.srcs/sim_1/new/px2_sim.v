`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/21 10:01:39
// Design Name: 
// Module Name: px2_sim
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


module px2_sim(
    );
    reg clk,spi_miso;
    initial
    begin
    clk=0;
    spi_miso=0;
    end
    
    always #6 clk=~clk;
    
    wire sclk,scs,smosi;
    wire l2,r2,l1,r1,triangle,o,x,square,up,right,down,left;
    px2_top pp(
    .clk(clk),
    .sclk(sclk),
    .smosi(smosi),//主机输出
    .scs(scs),//,
   .spi_miso(spi_miso));//,.l2(l2),.r2(r2),.l1(l1),.r1(r1),.triangle(triangle),.o(o),.x(x),.square(square),.up(up),.right(right),.down(down),.left(left));
//.l2(),.r2(),.l1(),.r1(),.triangle(),.o(),.x(),.square(),.up(),.right(),.down(),.left());//手柄到主机);

endmodule
