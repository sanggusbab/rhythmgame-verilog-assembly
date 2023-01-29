module piezoInterpreter(clk, clockRate, FrequencyPiezo, piezo);
    input clk;
    input[31:0] clockRate;
    input[31:0] FrequencyPiezo;
    output reg piezo = 0;
    integer counter = 0;
    always @(posedge clk)begin
        if(counter >= ((clockRate/FrequencyPiezo)/2))begin
            counter = 0;
            piezo = ~piezo;
        end
        else counter = counter + 1;
    end
endmodule
