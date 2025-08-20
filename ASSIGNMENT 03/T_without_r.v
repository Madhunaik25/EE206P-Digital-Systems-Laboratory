module t_without_r(clk,T,Q,Qb);
input clk;
input T;
output reg Q;
output Qb;

always@(posedge clk)
begin 
 Q = T^Q;
end
assign Qb = ~Q;
endmodule
