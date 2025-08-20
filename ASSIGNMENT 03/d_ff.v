module d_ff_without_r(clk,D,Q,Qb);
input clk;
input D;
output reg Q;
output Qb;

always@(posedge clk)
begin

Q <= D;

end

assign Qb = ~Q;

endmodule
