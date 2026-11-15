// alu_top.sv
// Tanish Gheewala - Fall 2026
// Top-Level Basys 3 Interactive ALU with Registered Execution & History

`timescale 1ns/1ps

// Module Header
module alu_top #(
    parameter int WIDTH        = 8,
    parameter int OPW          = 4,
    parameter int DEBOUNCE_MAX = 1_000_000,
    parameter int REFRESH_BITS = 18
  ) ( // Input & Output Ports
    input  logic        clk,
    input  logic [15:0] sw,
    input  logic        btnC,
    input  logic        btnU,
    input  logic        btnD,
    input  logic        btnL,
    input  logic        btnR,

    output logic [15:0] led,
    output logic [6:0]  seg,
    output logic        dp,
    output logic [3:0]  an
  );

  // Switch Assignments (SW[15:8] = A, SW[7:0] = B)
  logic [WIDTH-1:0] A;
  logic [WIDTH-1:0] B;
  assign A = sw[15:8];
  assign B = sw[7:0];

  // Debounced Button Pulses
  logic pulse_c;
  logic pulse_u;
  logic pulse_d;
  logic pulse_l;
  logic pulse_r;

  // ALU Signals
  logic [OPW-1:0]       op_reg = 4'b0100; // Default to ADD (0100)
  logic [(2*WIDTH)-1:0] alu_y;
  logic                 alu_ovf;
  logic                 alu_zero;

  // Registered Execution & 4-Entry History Buffer
  logic [(2*WIDTH)-1:0] reg_val  = '0;
  logic                 reg_ovf  = 1'b0;
  logic                 reg_zero = 1'b1;

  logic [(2*WIDTH)-1:0] hist_val [0:3] = '{default: '0};
  logic [OPW-1:0]       hist_op  [0:3] = '{default: 4'b0100};
  logic                 hist_mode      = 1'b0;
  logic [1:0]           hist_idx       = 2'd0;

  // Active Display Signals
  logic [OPW-1:0]       disp_op;
  logic [(2*WIDTH)-1:0] disp_val;
  logic                 dec_mode;

  // Button Debouncers
  debouncer #(.COUNT_MAX(DEBOUNCE_MAX)) db_c (
    .clk(clk), .rst(1'b0), .btn_in(btnC), .btn_out(), .btn_pulse(pulse_c)
  );
  debouncer #(.COUNT_MAX(DEBOUNCE_MAX)) db_u (
    .clk(clk), .rst(1'b0), .btn_in(btnU), .btn_out(), .btn_pulse(pulse_u)
  );
  debouncer #(.COUNT_MAX(DEBOUNCE_MAX)) db_d (
    .clk(clk), .rst(1'b0), .btn_in(btnD), .btn_out(), .btn_pulse(pulse_d)
  );
  debouncer #(.COUNT_MAX(DEBOUNCE_MAX)) db_l (
    .clk(clk), .rst(1'b0), .btn_in(btnL), .btn_out(), .btn_pulse(pulse_l)
  );
  debouncer #(.COUNT_MAX(DEBOUNCE_MAX)) db_r (
    .clk(clk), .rst(1'b0), .btn_in(btnR), .btn_out(), .btn_pulse(pulse_r)
  );

  // ALU Core Instantiation (Unsigned Mode)
  alu #(
    .WIDTH(WIDTH),
    .OPW(OPW)
  ) u_alu (
    .A(A),
    .B(B),
    .op(op_reg),
    .signed_mode(1'b0),
    .Y(alu_y),
    .OVF(alu_ovf),
    .ZERO(alu_zero)
  );

  // Control & History State Machine
  always_ff @(posedge clk)
  begin
    // Cycle Opcode Left / Right
    if (pulse_l) begin
      op_reg    <= op_reg - 1'b1;
      hist_mode <= 1'b0;
    end else if (pulse_r) begin
      op_reg    <= op_reg + 1'b1;
      hist_mode <= 1'b0;
    end

    // Execute & Push Result to History (BTNC)
    if (pulse_c) begin
      reg_val     <= alu_y;
      reg_ovf     <= alu_ovf;
      reg_zero    <= alu_zero;
      hist_mode   <= 1'b0;
      hist_idx    <= 2'd0;

      hist_val[0] <= alu_y;
      hist_val[1] <= hist_val[0];
      hist_val[2] <= hist_val[1];
      hist_val[3] <= hist_val[2];

      hist_op[0]  <= op_reg;
      hist_op[1]  <= hist_op[0];
      hist_op[2]  <= hist_op[1];
      hist_op[3]  <= hist_op[2];
    end

    // History Navigation (BTNU = Older, BTND = Newer / Exit History)
    if (pulse_u) begin
      if (!hist_mode) begin
        hist_mode <= 1'b1;
        hist_idx  <= 2'd0;
      end else if (hist_idx < 2'd3) begin
        hist_idx  <= hist_idx + 1'b1;
      end
    end else if (pulse_d) begin
      if (hist_mode) begin
        if (hist_idx > 2'd0) begin
          hist_idx <= hist_idx - 1'b1;
        end else begin
          hist_mode <= 1'b0;
        end
      end
    end
  end

  // Display Selection & Auto Decimal/Hex Mode
  always_comb
  begin
    if (hist_mode) begin
      disp_op  = hist_op[hist_idx];
      disp_val = hist_val[hist_idx];
    end else begin
      disp_op  = op_reg;
      disp_val = reg_val;
    end

    // Decimal for Arithmetic (0100..1000) & Comparisons (1100..1111), Hex for Logic/Shifts
    if ((disp_op >= 4'b0100 && disp_op <= 4'b1000) || (disp_op >= 4'b1100)) begin
      dec_mode = 1'b1;
    end else begin
      dec_mode = 1'b0;
    end
  end

  // 7-Segment Display Driver Instantiation
  driver #(
    .REFRESH_BITS(REFRESH_BITS)
  ) u_driver (
    .clk(clk),
    .rst(1'b0),
    .op(disp_op),
    .val(disp_val),
    .dec_mode(dec_mode),
    .seg(seg),
    .dp(dp),
    .an(an)
  );

  // Status LED Mapping
  assign led[7:0]   = disp_val[7:0];  // Lower 8-bit Binary Result
  assign led[11:8]  = disp_op;        // Active 4-bit Opcode
  assign led[13:12] = hist_idx;       // Current History Slot (0..3)
  assign led[14]    = reg_zero;       // Zero Flag
  assign led[15]    = reg_ovf;        // Overflow / Borrow Flag

endmodule
