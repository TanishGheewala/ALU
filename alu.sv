// alu.sv
// Tanish Gheewala - March 2026

// Module Header
module alu #(
    parameter int WIDTH = 8,         // Operand Width (Default: 8)
    parameter int OPW   = 4          // Opcode Width (Default: 4)
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

// Helper for Signed/Unsigned Views
logic signed [WIDTH-1:0] A_s;
logic signed [WIDTH-1:0] B_s;
logic [WIDTH-1:0]        A_u;
logic [WIDTH-1:0]        B_u;

// Shift Amount Width Calculation
localparam int SHAMT_W = (WIDTH <= 1) ? 1 : $clog2(WIDTH); // ceiling(log2(WIDTH))
logic [SHAMT_W-1:0] shamt;

// Treat as Signed/Unsigned
assign A_s  = A;
assign B_s  = B;
assign A_u  = A;
assign B_u  = B;
assign shamt = B[SHAMT_W-1:0];

// Combinational ALU Logic
always_comb begin
    // Default Outputs
    Y   = '0;
    OVF = 1'b0;

    unique case (op)

        // Logic Operations
        OP_AND: begin
        end
        OP_OR: begin
        end
        OP_XOR: begin
        end
        OP_NOT: begin
        end

        // Arithmetic Operations
        OP_ADD: begin
        end
        OP_SUB: begin
        end
        OP_INC: begin
        end
        OP_DEC: begin
        end
        OP_MUL: begin
        end

        // Shift Operations
        OP_SLL: begin
        end
        OP_SRL: begin
        end
        OP_SRA: begin
        end

        // Comparison Operations
        OP_EQ: begin
        end
        OP_GT: begin
        end
        OP_GE: begin
        end
        OP_SLT: begin
        end

    endcase
end

endmodule
