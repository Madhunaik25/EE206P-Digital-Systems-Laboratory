module tb_JohnsonCounter();

    reg clk;
    reg reset;
    wire [3:0] Q;

    JohnsonCounter uut (
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        reset = 1;
        #20;
        reset = 0;
        repeat(10) begin
            reset = $random % 2;
            #20;
        end
        #100;
        $finish;
    end

    initial begin
        $monitor("Time = %0d, reset = %b, Q = %b", $time, reset, Q);
    end

endmodule

