module MilliSecondsTimer(clk,clockRate,MilliSeconds);
    input clk;
    input[31:0] clockRate;
    output reg[31:0] MilliSeconds = 0;
    integer counter = 0;
    always @(posedge clk)begin
        if(counter >= clockRate/1000) begin
            counter = 0;
            MilliSeconds = MilliSeconds + 1;
        end
        counter = counter + 1;
    end
endmodule
