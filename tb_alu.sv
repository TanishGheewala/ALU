// tb_alu.sv
// Tanish Gheewala - March 2026
// Testbench for the Parametric Arithmetic Logic Unit (ALU) at the RTL Level

`timescale 1ns/1ps

// Module Header
module tb_alu;
    // Must Match alu.sv Parameters
    localparam int WIDTH = 8;
    localparam int OPW   = 4;

    // DUT inputs
    logic [WIDTH-1:0] A;
    logic [WIDTH-1:0] B;
    logic [OPW-1:0]   op;
    logic             signed_mode;

    // DUT outputs
    logic [(2*WIDTH)-1:0] Y;
    logic                 OVF;

    // DUT Instantiation
    alu #(
        .WIDTH(WIDTH),
        .OPW(OPW)
    ) dut (
        .A(A),
        .B(B),
        .op(op),
        .signed_mode(signed_mode),
        .Y(Y),
        .OVF(OVF)
    );

    

endmodule