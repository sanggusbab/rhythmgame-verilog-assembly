module ALU #(parameter Width = 32)(counter,Control,A1,A2,ALUOut, zero);
    input [2:0] counter;
    input [3:0] Control;
    input [Width-1:0] A1;
    input [Width-1:0] A2;
    output reg [Width-1:0] ALUOut;
    output zero;
    assign zero = (ALUOut == 0) ? 1 : 0;
    always @(counter) begin
        if(counter == 2) begin
            if (Control == 4'b0000) ALUOut = A1 & A2;
            else if (Control == 4'b0001) ALUOut = A1 | A2;
            else if(Control == 4'b0010) ALUOut = A1 + A2;
            else if(Control == 4'b0110) ALUOut = A1 - A2;
            else if(Control == 4'b0011) ALUOut = A1 << A2;
            else if(Control == 4'b0100)begin
                if(A1 < A2) ALUOut = 1;
                else ALUOut = 0; 
            end
            else if(Control == 4'b0101) begin
                if((~A1+1) < (~A2+1)) ALUOut = 1;
                else ALUOut = 0;
            end
            else if(Control == 4'b0111) ALUOut = A1 ^ A2;
            else if(Control == 4'b1000) ALUOut = A1 >> A2;
            else if(Control == 4'b1001) ALUOut = 0; 
            else if(Control == 4'b1010) ALUOut = A1 >>> A2;
            else if(Control == 4'b1011) ALUOut = A1 % A2;
            else if(Control == 4'b1101) ALUOut = A1 / A2;
            else if(Control == 4'b1110) ALUOut = A1 * A2;
            else if(Control == 4'b1111) ALUOut = (A1 == A2);
            else ALUOut = {Width{1'bx}};
        end
    end
endmodule
