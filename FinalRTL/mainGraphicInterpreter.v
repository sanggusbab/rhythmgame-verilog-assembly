module mainGraphicInterpreter(clk, MainGraphic, led_A_com, led_A_seg);
    input clk;
    input[63:0] MainGraphic;
    output reg[7:0] led_A_com;
    output[7:0] led_A_seg;
    reg[7:0] led_A_seg_Natural;
    reg[2:0] counter = 0;

    GraphicInterpreter GI01(led_A_seg_Natural, led_A_seg);

    always @(posedge clk) begin
        case(counter)
            0: begin
                led_A_seg_Natural = MainGraphic[63:56];
                led_A_com = 8'b01111111;
                counter = counter + 1;
            end
            1: begin
                led_A_seg_Natural = MainGraphic[55:48];
                led_A_com = 8'b10111111;
                counter = counter + 1;
            end
            2: begin
                led_A_seg_Natural = MainGraphic[47:40];
                led_A_com = 8'b11011111;
                counter = counter + 1;
            end
            3: begin
                led_A_seg_Natural = MainGraphic[39:32];
                led_A_com = 8'b11101111;
                counter = counter + 1;
            end
            4: begin
                led_A_seg_Natural = MainGraphic[31:24];
                led_A_com = 8'b11110111;
                counter = counter + 1;
            end
            5: begin
                led_A_seg_Natural = MainGraphic[23:16];
                led_A_com = 8'b11111011;
                counter = counter + 1;
            end
            6: begin
                led_A_seg_Natural = MainGraphic[15:8];
                led_A_com = 8'b11111101;
                counter = counter + 1;
            end
            7: begin
                led_A_seg_Natural = MainGraphic[7:0];
                led_A_com = 8'b11111110;
                counter = counter + 1;
            end
        endcase
    end
endmodule
