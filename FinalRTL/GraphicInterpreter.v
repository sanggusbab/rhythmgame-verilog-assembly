module GraphicInterpreter(led_A_seg_Natural, led_A_seg);
    input[7:0] led_A_seg_Natural;
    output reg[7:0] led_A_seg;
    always @(*) begin
        case(led_A_seg_Natural)
            0: led_A_seg = 8'b11111100;
            1: led_A_seg = 8'b01100000;
            2: led_A_seg = 8'b11011010;
            3: led_A_seg = 8'b11110010;
            4: led_A_seg = 8'b01100110;
            5: led_A_seg = 8'b10110110;
            6: led_A_seg = 8'b10111110;
            7: led_A_seg = 8'b11100100;
            8: led_A_seg = 8'b11111110;
            9: led_A_seg = 8'b11110110;
            10: led_A_seg = 8'b11101110;
            11: led_A_seg = 8'b00111110;
            12: led_A_seg = 8'b00110100;
            13: led_A_seg = 8'b01111010;
            14: led_A_seg = 8'b10011110;
            15: led_A_seg = 8'b10001110;
            16: led_A_seg = 8'b10111100;
            17: led_A_seg = 8'b01101110;
            18: led_A_seg = 8'b00001100;
            19: led_A_seg = 8'b01110000;
            20: led_A_seg = 8'b00001110;
            21: led_A_seg = 8'b00011100;
            22: led_A_seg = 8'b00101010;
            23: led_A_seg = 8'b00111010;
            24: led_A_seg = 8'b11001110;
            25: led_A_seg = 8'b11100110;
            26: led_A_seg = 8'b00001010;
            27: led_A_seg = 8'b10110110;
            28: led_A_seg = 8'b00011110;
            29: led_A_seg = 8'b00111000;
            30: led_A_seg = 8'b00111000;
            31: led_A_seg = 8'b01100110;
            32: led_A_seg = 8'b11011010;
            33: led_A_seg = 8'b01101100;
            34: led_A_seg = 8'b00000000;
            35: led_A_seg = 8'b11111111;
            36: led_A_seg = 8'b00000010;
            default:  led_A_seg = 8'b11111111;
        endcase
    end
endmodule