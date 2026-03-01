// alu.sv
// Tanish Gheewala - March 2026

module alu #(
    parameter int WIDTH = 8,         // Operand Width (Default: 8)
    parameter int OPW   = 4          // Opcode Width (Default: 4))
) (
    input  logic [WIDTH-1:0]         A,
    input  logic [WIDTH-1:0]         B,
    input  logic [OPW-1:0]           op,
    input  logic                     signed_mode,

    output logic [(2*WIDTH)-1:0]     Y,
    output logic                     OVF
);

endmodule