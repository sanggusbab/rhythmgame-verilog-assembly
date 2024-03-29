module RhythmGameboy #(parameter WIDTH = 32)(clk, interrupt, led_A_seg, led_A_com, led_Single, led_RGB, piezo);
    input clk;
    input[19:0] interrupt;
    
    output[7:0] led_A_seg,led_A_com,led_Single;
    output[11:0] led_RGB;
    output piezo;
    
    wire[63:0] MainGraphic;
    wire[WIDTH-1:0] SingleGraphic,Amplitude,ProgressBar,FrequencyPiezo,LedRGBBright;
    wire[WIDTH-1:0] ALUOut,regWriteData,Instruction,ReadData1,ReadData2,readData;
    wire[WIDTH-1:0] MilliSeconds,clockRate;
    wire ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,jump;
    wire[1:0] Aluop;
    wire[WIDTH-1:0] BeforPC,NewPC,PC,PC_Plus4,BranchPC,immediateout,shiftoutput,Mux1output;
    wire zero, sel;
    wire[3:0]Control;

    reg[2:0] counter=1;

    singleGraphicInterpreter singleGraphicInterpreter01(SingleGraphic[7:0],led_Single); // Completed
    ledRGBInterPreter ledRGBInterPreterI01(clk,interrupt[18:13],LedRGBBright[7:0],led_RGB); // Completed
    piezoInterpreter piezoInterpreter01(clk, clockRate, FrequencyPiezo, piezo); // Completed
    mainGraphicInterpreter mainGraphicInterpreter01(clk, MainGraphic, led_A_com, led_A_seg); // Completed
    MilliSecondsTimer MilliSecondsTimer01(clk,clockRate,MilliSeconds); // Completed

    ProgramCounter ProgramCounter01(counter, NewPC, PC); // Completed
    PCPlus4 PCPlus401(PC, PC_Plus4); // Completed
    MemoryControlUnit MemoryControlUnit01(counter, PC, Instruction, MemWrite, MemRead, ALUOut, ReadData2,readData,MainGraphic,SingleGraphic,Amplitude,ProgressBar,FrequencyPiezo,LedRGBBright,clockRate); // Completed
	Immediategeneration Immediategeneration01(Instruction, immediateout); // Completed
    mainController mainController01(Instruction[6:0],ALUSrc,MemtoReg,RegWrite, MemRead, MemWrite, Branch,jump,Aluop); // Completed
    shift shift01(immediateout,shiftoutput); // Completed
    PCAdder PCAdder01(shiftoutput, PC, BranchPC); // Completed
    Mux Mux01(PC_Plus4,BranchPC,sel,BeforPC); // Completed
    Mux MuxLastPCSelector(BeforPC,shiftoutput,jump,NewPC); // Completed
    and and01(sel,Branch,zero); // Completed
    RegisterFile RegisterFile01(counter,RegWrite,Instruction[19:15],Instruction[24:20],Instruction[11:7],regWriteData,interrupt,MilliSeconds,ReadData1,ReadData2); // Completed
    Mux Mux02(ReadData2,immediateout,ALUSrc,Mux1output); // Completed
    ALUControl ALUControlC01(Aluop,Instruction[31:25],Instruction[14:12],Control,jump); // Completed
    ALU ALU2(counter,Control,ReadData1,Mux1output,ALUOut,zero); // Completed
    Mux Mux03(ALUOut,readData,MemtoReg,regWriteData); // Completed

    always @(posedge clk)begin
        if(counter == 4) counter = 0;
        else counter = counter + 1;
    end

endmodule

    /*
    wire[15:0] SRAM_DQ;
    output[17:0] SRAM_ADDR;
    output SRAM_OE; // Sram output Enable
    output SRAM_WE; // Sram Write Enable
    output SRAM_CS; // Sram Chip Select
    topsram TS01(clk, PMOD, SRAM_ADDR, SRAM_DQ, SRAM_OE, SRAM_WE, SRAM_CS);
    wire[3:0] PMOD;
*/