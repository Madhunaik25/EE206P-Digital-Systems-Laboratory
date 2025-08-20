module Div_by2_Nbit #(parameter N = 8)(a,b);

input [N-1:0]a;
output [N-1:0]b;

assign b = {1'b0 , a[N-1:1]};

endmodule