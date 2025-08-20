module TB_t_with_sr();
    reg clk;
    reg T;
    reg rst;
    wire Q;
    wire Qb;

    t_with_sr uut (.clk(clk), .T(T), .Q(Q), .Qb(Qb), .rst(rst));

    initial begin
        clk = 1'b0;
        rst = 1'b1;
        T = 1'b0;

        #10 rst = 1'b0;
        repeat(10) begin
            #10 T = $random;
        end
        #10 rst = 1'b1;
        #10 rst = 1'b0;
        repeat(5) begin
            #10 T = $random;
        end
    end

    always #5 clk = ~clk;
endmodule

