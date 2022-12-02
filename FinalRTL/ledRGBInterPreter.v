module ledRGBInterPreter(clk,interrupt,LedRGBBright,led_RGB);
    input clk;
    input[5:0] interrupt;
    input[7:0] LedRGBBright;
    output reg[11:0] led_RGB;
    integer counter = 0;
    always @(clk) begin
        case(interrupt[5:4])
            2'b00:begin
                led_RGB[11:8] = 0;
                counter = 0;
            end
            2'b01:begin
                if(counter < (LedRGBBright/3))begin
                    led_RGB[11:8] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[11:8] = 0;
                end
            end
            2'b10:begin
                if(counter < (LedRGBBright/2))begin
                    led_RGB[11:8] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[11:8] = 0;
                end
            end
            2'b11:begin
                if(counter < (LedRGBBright))begin
                    led_RGB[11:8] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[11:8] = 0;
                end
            end
        endcase
        case(interrupt[3:2])
            2'b00:begin
                led_RGB[7:4] = 0;
                counter = 0;
            end
            2'b01:begin
                if(counter < (LedRGBBright/3))begin
                    led_RGB[7:4] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[7:4] = 0;
                end
            end
            2'b10:begin
                if(counter < (LedRGBBright/2))begin
                    led_RGB[7:4] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[7:4] = 0;
                end
            end
            2'b11:begin
                if(counter < (LedRGBBright))begin
                    led_RGB[7:4] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[7:4] = 0;
                end
            end
        endcase
        case(interrupt[1:0])
            2'b00:begin
                led_RGB[3:0] = 0;
                counter = 0;
            end
            2'b01:begin
                if(counter < (LedRGBBright/3))begin
                    led_RGB[3:0] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[3:0] = 0;
                end
            end
            2'b10:begin
                if(counter < (LedRGBBright/2))begin
                    led_RGB[3:0] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[3:0] = 0;
                end
            end
            2'b11:begin
                if(counter < (LedRGBBright))begin
                    led_RGB[3:0] = 4'b1111;
                    counter = counter +1;
                end
                else if(counter >= 255) begin
                    counter = 0;
                end
                else begin
                    led_RGB[3:0] = 0;
                end
            end
        endcase
    end
endmodule
