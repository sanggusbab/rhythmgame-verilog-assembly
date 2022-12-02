
`timescale  1ns/1ps
module RhythmGameboy_tb2();
    reg clk;
    reg[19:0] interrupt;
    wire[7:0] led_A_com;
    wire[7:0] led_A_seg;
    wire[7:0] led_Single;
    wire[11:0] led_RGB;
    wire piezo;
RhythmGameboy RTMGB02(clk, interrupt, led_A_seg, led_A_com, led_Single, led_RGB, piezo);
/*
Reset:      20'b10000000000000000000
Red:        20'b01100000000000000000
Green:      20'b00011000000000000000
Blue:       20'b00000110000000000000
Pause:      20'b00000001000000000000
1key:       20'b00000000100000000000
2key:       20'b00000000010000000000
3key:       20'b00000000001000000000
4key:       20'b00000000000100000000
5key:       20'b00000000000010000000
6key:       20'b00000000000001000000
7key:       20'b00000000000000100000
8key:       20'b00000000000000010000
9key:       20'b00000000000000001000
starkey:    20'b00000000000000000100
0key:       20'b00000000000000000010
hashkey:    20'b00000000000000000001
*/
/*
    initial begin
        interrupt = 20'b0;
        clk = 0;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
        #30000 interrupt = 20';//
        #30000 interrupt = 20'b00000000000000000000;
    end
    always begin
        #5 clk = ~clk;
    end
*/
endmodule