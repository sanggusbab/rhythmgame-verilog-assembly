module Mux #(parameter Width = 32)(a, b, sel, out);
    input [Width-1 : 0] a;
    input [Width-1 : 0] b;
    input sel;
    output[Width-1 : 0] out;
    assign out = (sel == 1'b0) ? a : b;
endmodule
