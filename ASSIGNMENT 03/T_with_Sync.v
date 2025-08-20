module t_without_r(clk,T,Q,Qb,rst);
input clk;
input T;
input rst;
output reg Q;
output Qb;

always@(posedge clk)
begin 
if(rst == 1)
Q = 1'b0;
else
 Q = T^Q;
end
assign Qb = ~Q;
endmodule
