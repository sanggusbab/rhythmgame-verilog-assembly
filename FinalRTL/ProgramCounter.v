module ProgramCounter(counter, NewPC, PC);
    input[2:0] counter;
    input[31:0] NewPC;
    output reg[31:0] PC = 0;
    always @(counter)begin
        if(counter == 0) PC = NewPC;
    end
endmodule
