`timescale 1ns / 1ps

module Freq_div(
    input clk_100mhz,
    input s_ctl,
    input [31:0] fr_ctr,
    output reg fr_out
);
    reg [31:0] cnt1;
    reg rst = 0;
    
    always @(posedge clk_100mhz) begin
        if(s_ctl == 1)begin
            rst = ~rst;
        end
        if (!rst) begin
            cnt1 = 0;
            fr_out = 0;
        end else begin
            if (cnt1 < fr_ctr / 2 - 1) begin
                cnt1 = cnt1 + 1;
            end else begin
                cnt1 = 0;
                fr_out = ~fr_out;
            end
        end
    end
endmodule
