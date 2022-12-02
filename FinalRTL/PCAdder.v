module PCAdder(shiftoutput, PC, BranchPC);
    input[31:0] shiftoutput;
    input[31:0] PC;
    output[31:0] BranchPC;
    assign BranchPC = shiftoutput + PC;
endmodule
