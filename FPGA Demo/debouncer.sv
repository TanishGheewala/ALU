// debouncer.sv
// Tanish Gheewala - Fall 2026
// Pushbutton Debouncer and Single-Pulse Edge Detector

`timescale 1ns/1ps

// Module Header
module debouncer #(
    parameter int COUNT_MAX = 1_000_000  // ~10ms at 100MHz (Override in TB)
  ) ( // Input & Output Ports
    input  logic clk,
    input  logic rst,
    input  logic btn_in,

    output logic btn_out,
    output logic btn_pulse
  );

  // Counter Width Calculation
  localparam int CNT_W = (COUNT_MAX <= 1) ? 1 : $clog2(COUNT_MAX + 1);

  // Internal Signals
  logic [CNT_W-1:0] count = '0;
  logic             sync_0 = 1'b0;
  logic             sync_1 = 1'b0;
  logic             stable = 1'b0;
  logic             stable_d = 1'b0;

  // 2-Stage Input Synchronizer
  always_ff @(posedge clk)
  begin
    if (rst) begin
      sync_0 <= 1'b0;
      sync_1 <= 1'b0;
    end else begin
      sync_0 <= btn_in;
      sync_1 <= sync_0;
    end
  end

  // Debounce Counter Logic
  always_ff @(posedge clk)
  begin
    if (rst) begin
      count  <= '0;
      stable <= 1'b0;
    end else if (sync_1 != stable) begin
      if (count == CNT_W'(COUNT_MAX)) begin
        stable <= sync_1;
        count  <= '0;
      end else begin
        count <= count + 1'b1;
      end
    end else begin
      count <= '0;
    end
  end

  // Rising Edge Detector
  always_ff @(posedge clk)
  begin
    if (rst) begin
      stable_d <= 1'b0;
    end else begin
      stable_d <= stable;
    end
  end

  // Output Assignments
  assign btn_out   = stable;
  assign btn_pulse = stable & ~stable_d;

endmodule
