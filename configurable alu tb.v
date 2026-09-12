module tb_alu;

reg [3:0] A, B;
reg [2:0] sel;
wire [3:0] Y;

alu uut(A, B, sel, Y);

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, tb_alu);

    A = 4'b0101; B = 4'b0011;

    sel = 3'b000; #10;   // Addition
    sel = 3'b001; #10;   // Subtraction
    sel = 3'b010; #10;   // AND
    sel = 3'b011; #10;   // OR
    sel = 3'b100; #10;   // XOR
    sel = 3'b101; #10;   // NOT

    $finish;
end

endmodule