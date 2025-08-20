module TB_jk_with_ar();
    reg clk;
    reg J;
    reg K;
    reg rst;
    wire Q;
    wire Qb;

    jk_with_ar uut (.clk(clk), .J(J), .K(K), .Q(Q), .Qb(Qb), .rst(rst));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        J = 1'b0;
        K = 1'b0;

        #10 rst = 1'b0;
        #10 J = 1'b1; K = 1'b0;
        #10 J = 1'b0; K = 1'b1;
        #10 J = 1'b1; K = 1'b1;
        #10 J = 1'b0; K = 1'b0;
        #10 J = 1'b1; K = 1'b0;
        #10 J = 1'b1; K = 1'b1;
        #10 J = 1'b0; K = 1'b1;
        #10 rst = 1'b1;
        #10 rst = 1'b0; J = 1'b1; K = 1'b1;
    end

    always #5 clk = ~clk;
endmodule

