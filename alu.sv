// alu.sv
// Tanish Gheewala - March 2026

// Module Header
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

// 4-bit Opcode Table
localparam logic [OPW-1:0] OP_AND = 4'b0000;
localparam logic [OPW-1:0] OP_OR  = 4'b0001;
localparam logic [OPW-1:0] OP_XOR = 4'b0010;
localparam logic [OPW-1:0] OP_NOT = 4'b0011;

localparam logic [OPW-1:0] OP_ADD = 4'b0100;
localparam logic [OPW-1:0] OP_SUB = 4'b0101;
localparam logic [OPW-1:0] OP_INC = 4'b0110;
localparam logic [OPW-1:0] OP_DEC = 4'b0111;

localparam logic [OPW-1:0] OP_MUL = 4'b1000;

localparam logic [OPW-1:0] OP_SLL = 4'b1001;
localparam logic [OPW-1:0] OP_SRL = 4'b1010;
localparam logic [OPW-1:0] OP_SRA = 4'b1011;

localparam logic [OPW-1:0] OP_EQ  = 4'b1100;
localparam logic [OPW-1:0] OP_GT  = 4'b1101;
localparam logic [OPW-1:0] OP_GE  = 4'b1110;
localparam logic [OPW-1:0] OP_SLT = 4'b1111;

endmodule
