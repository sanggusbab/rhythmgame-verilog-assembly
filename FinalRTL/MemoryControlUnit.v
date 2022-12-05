module MemoryControlUnit #(parameter WIDTH = 32,parameter DatamemoryRef = 7788)(counter, PC, Instruction, MemWrite, MemRead, ALUOut, ReadData2,readData,MainGraphic,SingleGraphic,Amplitude,ProgressBar,FrequencyPiezo,LedRGBBright,clockRate);
// if DataAdderss you only need to modify the value of DatamemoryRef
    input[2:0] counter;
    input[WIDTH-1:0] PC;
    input[WIDTH-1:0] ALUOut;
    output reg[WIDTH-1:0] readData;
    output[WIDTH-1:0] Instruction;
    input MemWrite;
    input MemRead;
    input[WIDTH-1:0] ReadData2;

    output[63:0] MainGraphic; // 7368~7375
    output[31:0] SingleGraphic; // 7376~7379
    output[31:0] Amplitude; // 7380~7383
    output[31:0] ProgressBar; // 7384~7387
    output[31:0] FrequencyPiezo; // 7388~7391
    output[31:0] LedRGBBright; // 7392~7395
    output[31:0] clockRate; // 7520~7523
    reg [7:0] Memory [26259:0]; // 8bit per unit Memory - commuticate 32bit
    assign Instruction = {Memory[PC+3],Memory[PC+2],Memory[PC+1],Memory[PC]};

    assign MainGraphic = {Memory[DatamemoryRef+3],Memory[DatamemoryRef+2],Memory[DatamemoryRef+1],Memory[DatamemoryRef],Memory[DatamemoryRef+7],Memory[DatamemoryRef+6],Memory[DatamemoryRef+5],Memory[DatamemoryRef+4]};
    assign SingleGraphic = {Memory[DatamemoryRef+11],Memory[DatamemoryRef+10],Memory[DatamemoryRef+9],Memory[DatamemoryRef+8]};
    assign Amplitude = {Memory[DatamemoryRef+15],Memory[DatamemoryRef+14],Memory[DatamemoryRef+13],Memory[DatamemoryRef+12]};
    assign ProgressBar = {Memory[DatamemoryRef+19],Memory[DatamemoryRef+18],Memory[DatamemoryRef+17],Memory[DatamemoryRef+16]};
    assign FrequencyPiezo = {Memory[DatamemoryRef+23],Memory[DatamemoryRef+22],Memory[DatamemoryRef+21],Memory[DatamemoryRef+20]};
    assign LedRGBBright = {Memory[DatamemoryRef+27],Memory[DatamemoryRef+26],Memory[DatamemoryRef+25],Memory[DatamemoryRef+24]};
    assign clockRate = {Memory[DatamemoryRef+155],Memory[DatamemoryRef+154],Memory[DatamemoryRef+153],Memory[DatamemoryRef+152]};

    always @(counter)begin
        if(counter == 3) begin
            if(MemWrite==1) {Memory[ALUOut+3],Memory[ALUOut+2],Memory[ALUOut+1],Memory[ALUOut]} = ReadData2;
            else if(MemRead) readData = {Memory[ALUOut+3],Memory[ALUOut+2],Memory[ALUOut+1],Memory[ALUOut]};
            else if(~MemRead) readData = ALUOut;
        end
    end
    initial begin
        $readmemh("./rhythm_gamemem.mem", Memory);
    end
endmodule
