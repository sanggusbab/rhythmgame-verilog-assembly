module RegisterFile #(parameter Width = 32)(counter,RegWrite,AdrReg1,AdrReg2,AdrRegd,regWriteData,interrupt,MilliSeconds,ReadData1,ReadData2);
    input[2:0] counter;
    input RegWrite;
    input [4:0] AdrReg1;
    input [4:0] AdrReg2;
    input [4:0] AdrRegd;
    input [Width-1:0] regWriteData;
    input[19:0] interrupt;
    input[Width-1:0] MilliSeconds;
    output reg [Width-1:0] ReadData1, ReadData2;
    reg [Width-1:0] Register [Width-1:0];
    always @(counter) begin
        if(counter==1) begin
            ReadData1 = (AdrReg1 != 0) ? Register[AdrReg1] : 0;
            ReadData2 = (AdrReg2 != 0) ? Register[AdrReg2] : 0;
            Register[29] = {12'b000000000000,interrupt}; // hardwired Keypad
            Register[31] = MilliSeconds; // hardwired Timer
        end
        else if(counter == 4) begin
            if(RegWrite) begin
                if(AdrRegd == 0) Register[AdrRegd] = 0;
                else Register[AdrRegd] = regWriteData;
            end
        end
    end
    initial begin
        Register[0] = 32'b0;
        Register[1] = 32'b0;
        Register[2] = 32'b0;
        Register[3] = 32'b0;
        Register[4] = 32'b0;
        Register[5] = 32'b0;
        Register[6] = 32'b0;
        Register[7] = 32'b0;
        Register[8] = 32'b0;
        Register[9] = 32'b0;
        Register[10] = 32'b0;
        Register[11] = 32'b0;
        Register[12] = 32'b0;
        Register[13] = 32'b0;
        Register[14] = 32'b0;
        Register[15] = 32'b0;
        Register[16] = 32'b0;
        Register[17] = 32'b0;
        Register[18] = 32'b0;
        Register[19] = 32'b0;
        Register[20] = 32'b0;
        Register[21] = 32'b0;
        Register[22] = 32'b0;
        Register[23] = 32'b0;
        Register[24] = 32'b0;
        Register[25] = 32'b0;
        Register[26] = 32'b0;
        Register[27] = 32'b0;
        Register[28] = 32'b0;
        Register[29] = 32'b0;
        Register[30] = 32'b0;
        Register[31] = 32'b0;
    end
endmodule
