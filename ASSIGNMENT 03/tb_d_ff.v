module TB_d_ff_without_r();
reg clk;
reg D;
wire Q,Qb;

d_ff_without_r uut (.clk(clk),.D(D),.Q(Q),.Qb(Qb));

initial
begin
clk = 1'b0;
D =1; 

repeat(10)
begin
#5
D = $random;
end

end

always
#5
clk = ~clk;

endmodule
