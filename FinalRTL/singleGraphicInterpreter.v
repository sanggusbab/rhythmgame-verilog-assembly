module singleGraphicInterpreter(SingleGraphic,led_Single);
    input[7:0] SingleGraphic;
    output reg[7:0] led_Single;
    always @(SingleGraphic) begin
        case(SingleGraphic)
            0: led_Single = 8'b11111100;
            1: led_Single = 8'b01100000;
            2: led_Single = 8'b11011010;
            3: led_Single = 8'b11110010;
            4: led_Single = 8'b01100110;
            5: led_Single = 8'b10110110;
            6: led_Single = 8'b10111110;
            7: led_Single = 8'b11100100;
            8: led_Single = 8'b11111110;
            9: led_Single = 8'b11110110;
            10: led_Single = 8'b11101110;
            11: led_Single = 8'b00111110;
            12: led_Single = 8'b00110100;
            13: led_Single = 8'b01111010;
            14: led_Single = 8'b10011110;
            15: led_Single = 8'b10001110;
            16: led_Single = 8'b10111100;
            17: led_Single = 8'b01101110;
            18: led_Single = 8'b00001100;
            19: led_Single = 8'b01110000;
            20: led_Single = 8'b00001110;
            21: led_Single = 8'b00011100;
            22: led_Single = 8'b00101010;
            23: led_Single = 8'b00111010;
            24: led_Single = 8'b11001110;
            25: led_Single = 8'b11100110;
            26: led_Single = 8'b00001010;
            27: led_Single = 8'b10110110;
            28: led_Single = 8'b00011110;
            29: led_Single = 8'b00111000;
            30: led_Single = 8'b00111000;
            31: led_Single = 8'b01100110;
            32: led_Single = 8'b11011010;
            33: led_Single = 8'b01101100;
            34: led_Single = 8'b00000000;
            35: led_Single = 8'b11111111;
            36: led_Single = 8'b00000010;
            default:  led_Single = 8'b11111111;
        endcase
    end
endmodule
