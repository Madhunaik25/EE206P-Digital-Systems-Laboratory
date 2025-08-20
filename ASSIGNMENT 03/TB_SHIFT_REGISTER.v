module tb_siso_shift_register_4bit();

    reg clk;
    reg serial_in;
    wire serial_out;

    siso_shift_register_4bit uut (
        .clk(clk),
        .serial_in(serial_in),
        .serial_out(serial_out)
    );

    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    initial begin
        #20;
        repeat(10) begin
            serial_in = $random % 2;
            #20;
        end
        #100;
        $finish;
    end

    initial begin
        $monitor("Time = %0d, serial_in = %b, serial_out = %b, shift_reg = %b", $time, serial_in, serial_out, uut.shift_reg);
    end

endmodule

