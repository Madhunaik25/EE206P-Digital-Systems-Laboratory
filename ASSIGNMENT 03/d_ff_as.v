module d_ff_with_ar(clk,D,Q,Qb,rst);
input clk;
input D;
input rst;
output reg Q;
output Qb;


always@(posedge clk or rst)

begin

if(rst == 1)
  Q <= 1'b0;
else
Q <= D;

end

assign Qb = ~Q;

endmodule
