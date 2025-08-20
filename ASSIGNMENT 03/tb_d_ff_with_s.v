module TB_d_ff_with_as();
reg clk;
reg D;
reg rst;
wire Q,Qb;

d_ff_with_sr uut (.clk(clk),.D(D),.Q(Q),.Qb(Qb),.rst(rst));

initial
begin
clk = 1'b0;
D =1; 
rst = 1'b0;

repeat(10)
begin
#5
D = $random;
end

end

always
#5
clk = ~clk;
always
#5
rst = ~rst;

endmodule
