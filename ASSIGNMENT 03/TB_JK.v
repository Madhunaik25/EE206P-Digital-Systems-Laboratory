module TB_jk_without_r();
    reg clk;
    reg J;
    reg K;
    wire Q;
    wire Qb;

    jk_without_r uut (.clk(clk), .J(J), .K(K), .Q(Q), .Qb(Qb));

    initial begin
        clk = 1'b0;
        J = 1'b0;
        K = 1'b0;

        #10 J = 1'b1; K = 1'b0;
        #10 J = 1'b0; K = 1'b1;
        #10 J = 1'b1; K = 1'b1;
        #10 J = 1'b0; K = 1'b0;
        #10 J = 1'b1; K = 1'b0;
        #10 J = 1'b1; K = 1'b1;
        #10 J = 1'b0; K = 1'b1;
        #10 J = 1'b0; K = 1'b0;
    end

    always #5 clk = ~clk;
endmodule

