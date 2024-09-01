`timescale 1ns / 1ps

module Beat(clk_100mhz,BF_120BPM,Bt_ctr,BT_out);
    input wire clk_100mhz;
    input wire BF_120BPM;
    input wire [7:0]Bt_ctr;
    output reg BT_out;
    reg [7:0]i=0;
    
    always@(posedge BF_120BPM)
        begin
            if(i>=Bt_ctr+1)
                begin
                    BT_out=1;
                    i=0;
                end
            else if(i==Bt_ctr+1)
                begin
                    BT_out=0;
                    i=i+1;
                end
            i=i+1;
        end 
endmodule