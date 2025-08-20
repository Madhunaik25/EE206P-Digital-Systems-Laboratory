module siso_shift_register_4bit (
    input wire clk,
    input wire serial_in,
    output wire serial_out
);

reg [3:0] shift_reg;

initial begin
    shift_reg = 4'b1010;
end

always @(posedge clk) begin
    shift_reg <= {serial_in, shift_reg[3:1]};
end

assign serial_out = shift_reg[0];

endmodule

