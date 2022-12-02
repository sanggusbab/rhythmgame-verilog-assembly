module PCPlus4(PC, PC_Plus4);
    input[31:0] PC;
    output[31:0] PC_Plus4;
    assign PC_Plus4 = PC + 4;
endmodule
