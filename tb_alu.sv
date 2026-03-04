// tb_alu.sv
// Tanish Gheewala - March 2026
// Testbench for the Parametric Arithmetic Logic Unit (ALU) at the RTL Level

`timescale 1ns/1ps

// Module Header
module tb_alu;
    // Must match alu.sv parameters
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

    // Waveform Dump (for GTKWave)
    initial begin
        $dumpfile("tb_alu.vcd");
        $dumpvars(0, tb_alu);
    end

    // 4-bit Opcode Table (must match alu.sv)
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

    // Test
    int tests  = 0;
    int errors = 0;

    // Outputs a pass/fail message and increments test/error counters
    task automatic check(
        input logic [WIDTH-1:0]         tA,
        input logic [WIDTH-1:0]         tB,
        input logic [OPW-1:0]           tOP,
        input logic                     tSM,
        input logic [(2*WIDTH)-1:0]     expY,
        input logic                     expOVF,
        input string                    name
    );
    begin
        A = tA;
        B = tB;
        op = tOP;
        signed_mode = tSM;
        #1;
        tests++;
        if ((Y !== expY) || (OVF !== expOVF)) begin
            errors++;
            $display("FAIL: %s | A=%h B=%h op=%b sm=%0d | Y=%h (exp %h) OVF=%0d (exp %0d)",
                     name, A, B, op, signed_mode, Y, expY, OVF, expOVF);
        end else begin
            $display("PASS: %s", name);
        end
    end
    endtask

    initial begin
        A = '0;
        B = '0;
        op = '0;
        signed_mode = 1'b0;
        #1;

        $display("tb_alu start");

        // Required Tests
        check(8'h0F, 8'hF0, OP_AND, 1'b0, 16'h0000, 1'b0, "AND: 0F & F0");
        check(8'h0F, 8'hF0, OP_OR , 1'b0, 16'h00FF, 1'b0, "OR : 0F | F0");
        check(8'hAA, 8'h0F, OP_XOR, 1'b0, 16'h00A5, 1'b0, "XOR: AA ^ 0F");
        check(8'h00, 8'h00, OP_NOT, 1'b0, 16'h00FF, 1'b0, "NOT: ~00");
        check(8'h7F, 8'h01, OP_ADD, 1'b1, 16'hFF80, 1'b1, "ADD signed ovf: 7F + 01");
        check(8'h80, 8'h01, OP_SUB, 1'b1, 16'h007F, 1'b1, "SUB signed ovf: 80 - 01");
        check(8'hFF, 8'h01, OP_ADD, 1'b0, 16'h0000, 1'b1, "ADD unsigned wrap: FF + 01");
        check(8'hFF, 8'h01, OP_SLT, 1'b1, 16'h0001, 1'b0, "SLT signed: FF < 01");
        check(8'hFF, 8'h01, OP_SLT, 1'b0, 16'h0000, 1'b0, "SLT unsigned: FF < 01");
        check(8'hFF, 8'h02, OP_MUL, 1'b1, 16'hFFFE, 1'b0, "MUL signed: FF * 02");
        check(8'hFF, 8'h02, OP_MUL, 1'b0, 16'h01FE, 1'b0, "MUL unsigned: FF * 02");
        check(8'hF0, 8'h02, OP_SRA, 1'b0, 16'h00FC, 1'b0, "SRA: F0 >>> 2");
        check(8'h01, 8'h07, OP_SLL, 1'b0, 16'h0080, 1'b0, "SLL max: 01 << 7");
        check(8'h80, 8'h07, OP_SRL, 1'b0, 16'h0001, 1'b0, "SRL max: 80 >> 7");
        check(8'h80, 8'h07, OP_SRA, 1'b0, 16'h00FF, 1'b0, "SRA max: 80 >>> 7");

        $display("tb_alu done | tests=%0d errors=%0d", tests, errors);
        $finish;
    end

endmodule
