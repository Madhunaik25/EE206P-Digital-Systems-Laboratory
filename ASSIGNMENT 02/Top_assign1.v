module Top_assign1#(parameter N = 8) (s,a,b,c);
input [2:0]s;
input [N-1:0] a,b;
output [N-1:0]c;

wire [N-1:0] w1,w2,w3,w4,w5,w6,w7,w8;

And_2in_Nbit #(.N(N)) And (.c(w1),.a(a),.b(b));
Or_2in_Nbit #(.N(N)) Or (.c(w2),.a(a),.b(b));
Nand_2in_Nbit #(.N(N)) Nand (.c(w3),.a(a),.b(b));
Nor_2in_Nbit #(.N(N)) Nor (.c(w4),.a(a),.b(b));
Xor_2in_Nbit #(.N(N)) Xor (.c(w5),.a(a),.b(b));
Xnor_2in_Nbit #(.N(N)) Xnor (.c(w6),.a(a),.b(b));
Mul_by2_Nbit #(.N(N)) Mul (.y(w7),.a(a));
Div_by2_Nbit #(.N(N)) Div (.b(w8),.a(a));

Mux_8x1_Nbit #(.N(N)) Mux (.s(s),.a(w1),.b(w2),.c(w3),.d(w4),.e(w5),.f(w6),.g(w7),.h(w8),.o(c));

endmodule
