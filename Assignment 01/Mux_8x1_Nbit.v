module Mux_8x1_Nbit #(parameter N = 8) (s,a,b,c,d,e,f,g,h,o);
input [2:0]s;
input [N-1:0] a,b,c,d,e,f,g,h;

output [N-1:0]o;

assign o = (s == 3'b000) ? a:
	   (s == 3'b001) ? b:
	   (s == 3'b010) ? c:
	   (s == 3'b011) ? d:
	   (s == 3'b100) ? e:
	   (s == 3'b101) ? f:
	   (s == 3'b110) ? g:
	    h;

endmodule

