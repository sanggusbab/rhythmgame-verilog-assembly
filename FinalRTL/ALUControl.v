module ALUControl(Aluop,funct7,funct3,Control,jump);
    input [1:0] Aluop;
    input[6:0] funct7;
    input [2:0] funct3;
    input jump;
    output reg [3:0] Control;
    always @(*) begin
        case (Aluop)
            2'b00 : begin
                if(jump==1) Control <= 4'b1001; // jal
                else Control <= 4'b0010; // lw, sw
            end
            2'b01 : begin
                case(funct3)
                    3'b000 : Control <= 4'b0110; // beq
                    3'b001 : Control <= 4'b1111; // bneq
                endcase
            end
            2'b10 : begin
                case({funct7[5],funct3})
                    4'b0000 : begin
                        if(funct7[0] == 1) Control <=4'b1110; // mul
                        else Control <= 4'b0010; // add
                    end
                    4'b0001 : Control <= 4'b0011; // sll
                    4'b0010 : Control <= 4'b0100; // slt
                    4'b0011 : Control <= 4'b0101; // sltu
                    4'b0100 : begin
                        if(funct7[0] == 1) Control <= 4'b1101; // div
                        else Control <= 4'b0111; // xor
                    end
                    4'b0101 : Control <= 4'b1000; // srl
                    4'b0110 : begin
                        if(funct7[0] == 1) Control <= 4'b1011; // rem
                        else Control <= 4'b0001; // or
                    end
                    4'b0111 : Control <= 4'b0000; // and
                    4'b1000 : Control <= 4'b0110; // sub
                    4'b1101 : Control <= 4'b1010; // sra
                    default : Control <= 4'bxxxx;
                endcase
            end
            2'b11 : begin
                case({funct3})
                    3'b000 : Control <= 4'b0010; // addi
                    3'b001 : Control <= 4'b0011; // slli
                    3'b010 : Control <= 4'b0100; // slti
                    3'b011 : Control <= 4'b0101; // sltui
                    3'b100 : Control <= 4'b0111; // xori
                    3'b101 : Control <= 4'b1000; // srli
                    3'b110 : Control <= 4'b0001; // ori
                    3'b111 : Control <= 4'b0000; // andi
                    default : Control <= 4'bxxxx;
                endcase
            end
        endcase
    end
endmodule