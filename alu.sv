// alu.sv
// Tanish Gheewala - March 2026
// Parametric Arithmetic Logic Unit (ALU) at the RTL Level

`timescale 1ns/1ps

// Module Header
module alu #(
    parameter int WIDTH = 8,         // Operand Width (Default: 8)
    parameter int OPW   = 4          // Opcode Width (Default: 4)
) ( // Input & Output Ports
    input  logic [WIDTH-1:0]         A,
    input  logic [WIDTH-1:0]         B,
    input  logic [OPW-1:0]           op,
    input  logic                     signed_mode,

    output logic [(2*WIDTH)-1:0]     Y,
    output logic                     OVF
);

// 4-bit Opcode Table
// Logic Operations
localparam logic [OPW-1:0] OP_AND = 4'b0000;
localparam logic [OPW-1:0] OP_OR  = 4'b0001;
localparam logic [OPW-1:0] OP_XOR = 4'b0010;
localparam logic [OPW-1:0] OP_NOT = 4'b0011;
// Arithmetic Operations
localparam logic [OPW-1:0] OP_ADD = 4'b0100;
localparam logic [OPW-1:0] OP_SUB = 4'b0101;
localparam logic [OPW-1:0] OP_INC = 4'b0110;
localparam logic [OPW-1:0] OP_DEC = 4'b0111;
localparam logic [OPW-1:0] OP_MUL = 4'b1000;
// Shift Operations
localparam logic [OPW-1:0] OP_SLL = 4'b1001;
localparam logic [OPW-1:0] OP_SRL = 4'b1010;
localparam logic [OPW-1:0] OP_SRA = 4'b1011;
// Comparison Operations
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
    
    // Note: Upgrade to Case Statement instead of If

    // Logic Operations
    if (op == OP_AND) begin // AND: A & B
        Y = { {WIDTH{1'b0}}, (A & B) };

    end else if (op == OP_OR) begin // OR: A | B
        Y = { {WIDTH{1'b0}}, (A | B) };

    end else if (op == OP_XOR) begin // XOR: A ^ B
        Y = { {WIDTH{1'b0}}, (A ^ B) };

    end else if (op == OP_NOT) begin // NOT: ~A (B ignored)
        Y = { {WIDTH{1'b0}}, (~A) };

    // Arithmetic Operations
    end else if (op == OP_ADD) begin // ADD: A + B
        logic [WIDTH-1:0] r;
        logic [WIDTH:0]   ext;
        r   = A + B;
        ext = {1'b0, A} + {1'b0, B};
        if (signed_mode) begin
            Y   = { {WIDTH{r[WIDTH-1]}}, r };
            OVF = (A_s[WIDTH-1] == B_s[WIDTH-1]) && (r[WIDTH-1] != A_s[WIDTH-1]);
        end else begin
            Y   = { {WIDTH{1'b0}}, r };
            OVF = ext[WIDTH];
        end

    end else if (op == OP_SUB) begin // SUB: A - B
        logic [WIDTH-1:0] r;
        logic             borrow;
        r      = A - B;
        borrow = (A_u < B_u);
        if (signed_mode) begin
            Y   = { {WIDTH{r[WIDTH-1]}}, r };
            OVF = (A_s[WIDTH-1] != B_s[WIDTH-1]) && (r[WIDTH-1] != A_s[WIDTH-1]);
        end else begin
            Y   = { {WIDTH{1'b0}}, r };
            OVF = borrow;
        end

    end else if (op == OP_INC) begin // INC: A + 1
        logic [WIDTH-1:0] r;
        logic [WIDTH:0]   ext;
        r   = A + 1'b1;
        ext = {1'b0, A} + {{WIDTH{1'b0}}, 1'b1};
        if (signed_mode) begin
            Y   = { {WIDTH{r[WIDTH-1]}}, r };
            OVF = (A_s[WIDTH-1] == 1'b0) && (r[WIDTH-1] == 1'b1);
        end else begin
            Y   = { {WIDTH{1'b0}}, r };
            OVF = ext[WIDTH];
        end

    end else if (op == OP_DEC) begin // DEC: A - 1
        logic [WIDTH-1:0] r;
        logic             borrow;
        r      = A - 1'b1;
        borrow = (A_u < 1);
        if (signed_mode) begin
            Y   = { {WIDTH{r[WIDTH-1]}}, r };
            OVF = (A_s[WIDTH-1] == 1'b1) && (r[WIDTH-1] == 1'b0);
        end else begin
            Y   = { {WIDTH{1'b0}}, r };
            OVF = borrow;
        end

    end else if (op == OP_MUL) begin // MUL: A * B
        if (signed_mode) begin
            Y = $signed(A_s) * $signed(B_s);
        end else begin
            Y = A_u * B_u;
        end

    // Shift Operations
    // Shamt = Lower Bits of B
    end else if (op == OP_SLL) begin // SLL: A << shamt
        Y = { {WIDTH{1'b0}}, (A << shamt) };

    end else if (op == OP_SRL) begin // SRL: A >> shamt
        Y = { {WIDTH{1'b0}}, (A >> shamt) };

    end else if (op == OP_SRA) begin // SRA: A >>> shamt
        Y = { {WIDTH{1'b0}}, logic'(A_s >>> shamt) };

    // Comparison Operations
    // EQ = Equal, GT = Greater Than, GE = Greater or Equal, SLT = Set on Less Than
    end else if (op == OP_EQ) begin // EQ: A == B
        Y = (A == B) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;

    end else if (op == OP_GT) begin // GT: A > B
        if (signed_mode) Y = (A_s > B_s) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;
        else             Y = (A_u > B_u) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;

    end else if (op == OP_GE) begin // GE: A >= B
        if (signed_mode) Y = (A_s >= B_s) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;
        else             Y = (A_u >= B_u) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;

    end else if (op == OP_SLT) begin // SLT: A < B
        if (signed_mode) begin
            Y = (A_s < B_s) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;
        end else begin
            Y = (A_u < B_u) ? {{(2*WIDTH-1){1'b0}}, 1'b1} : '0;
        end

    end else begin // Default for Invalid Opcode
        Y   = '0;
        OVF = 1'b0;
    end

end
endmodule
