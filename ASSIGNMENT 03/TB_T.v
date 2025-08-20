module TB_t_without_r();
    reg clk;
    reg T;
    wire Q;
    wire Qb;

    t_without_r uut (.clk(clk), .T(T), .Q(Q), .Qb(Qb));

    initial begin
        clk = 1'b0;
        T = 1'b0;

        repeat(10) begin
            #10 T = $random;
        end
    end

    always #5 clk = ~clk;
endmodule

