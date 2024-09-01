`timescale 1ns / 1ps

 module Score(
    input clk100mhz,
    input s_ctl,
    output reg music
);

    reg [7:0]Bt_ctr;
    wire BF_120BPM;
    wire BF_pitch;
    wire BT_out;
    reg [5:0] pitch;
    reg [5:0] i = 0;
    reg [31:0] notes[0:30];
    reg [5:0] melody[0:7];
    reg [5:0] beat[0:7];
    reg [5:0] k = 0;
    reg [31:0] F_100MHZ = 100000000;

    Freq_div freq_div1(clk100mhz, s_ctl, notes[pitch], BF_pitch); // 音高生成
    Freq_div freq_div2(clk100mhz, s_ctl, F_100MHZ, BF_120BPM); // 节拍分频，120bpm
    Beat beat_gen(clk100mhz, BF_120BPM, Bt_ctr, BT_out); // 节奏生成

    initial begin
        // 初始化音符频率
        notes[0] = 0; // 默认输出0
        notes[1] = F_100MHZ/131;
        notes[2] = F_100MHZ/147;
        notes[3] = F_100MHZ/165;
        notes[4] = F_100MHZ/175;
        notes[5] = F_100MHZ/196;
        notes[6] = F_100MHZ/220;
        notes[7] = F_100MHZ/247;
        notes[8] = F_100MHZ/262;
        notes[9] = F_100MHZ/294;
        notes[10] = F_100MHZ/330;
        notes[11] = F_100MHZ/350;
        notes[12] = F_100MHZ/392;
        notes[13] = F_100MHZ/440;
        notes[14] = F_100MHZ/494;
        notes[15] = F_100MHZ/523;
        notes[16] = F_100MHZ/587;
        notes[17] = F_100MHZ/659;
        notes[18] = F_100MHZ/698;
        notes[19] = F_100MHZ/784;
        notes[20] = F_100MHZ/880;
        notes[21] = F_100MHZ/988;
        notes[22] = F_100MHZ/1047;
        notes[23] = F_100MHZ/1175;
        notes[24] = F_100MHZ/1319;
        notes[25] = F_100MHZ/1397;
        notes[26] = F_100MHZ/1568;
        notes[27] = F_100MHZ/1760;
        notes[28] = F_100MHZ/1976;
        notes[29] = F_100MHZ/2093;

        // 初始化旋律和节拍
        melody[0] = 8;
        melody[1] = 9;
        melody[2] = 10;
        melody[3] = 11;
        melody[4] = 12;

        beat[0] = 1;
        beat[1] = 1;
        beat[2] = 1;
        beat[3] = 1;
        beat[4] = 1;
    end
    
    //播放完毕重置
    always @(posedge BF_120BPM) begin
        if (i >= 7)
            i <= 0;
        else
            i <= i + 1;
    end

    always @(posedge clk100mhz) begin
        pitch <= melody[i];
        Bt_ctr <= beat[i];
    end

    always @(posedge clk100mhz) begin
        if (BT_out == 1)
            music <= BF_pitch;
        else
            music <= 0;
    end

endmodule
