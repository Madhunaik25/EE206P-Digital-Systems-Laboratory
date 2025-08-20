module And_2in_Nbit #(parameter N = 8)(c,a,b);

input [N-1:0]a;
input [N-1:0]b;
output [N-1:0]c;

assign c = a&b;

endmodule
