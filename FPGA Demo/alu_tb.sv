// alu_tb.sv
// Tanish Gheewala - Fall 2026
// ALU Testbench

`timescale 1ns/1ps

// Module Header
module alu_tb;
  // Shortened Timing for Simulation
  localparam int DEBOUNCE_MAX = 4;
  localparam int REFRESH_BITS = 4;
  localparam int HOLD         = DEBOUNCE_MAX + 10;

  // DUT Inputs
  logic        clk  = 1'b0;
  logic [15:0] sw   = '0;
  logic        btnC = 1'b0;
  logic        btnU = 1'b0;
  logic        btnD = 1'b0;
  logic        btnL = 1'b0;
  logic        btnR = 1'b0;

  // DUT Outputs
  logic [15:0] led;
  logic [6:0]  seg;
  logic        dp;
  logic [3:0]  an;

  // DUT Instantiation
  alu_top #(
    .DEBOUNCE_MAX(DEBOUNCE_MAX),
    .REFRESH_BITS(REFRESH_BITS)
  ) dut (
    .clk(clk),
    .sw(sw),
    .btnC(btnC),
    .btnU(btnU),
    .btnD(btnD),
    .btnL(btnL),
    .btnR(btnR),
    .led(led),
    .seg(seg),
    .dp(dp),
    .an(an)
  );

  // 100MHz Clock
  always #5 clk = ~clk;

  // Waveform Dump (for GTKWave)
  initial begin
    $dumpfile("alu_tb.vcd");
    $dumpvars(0, alu_tb);
  end

  // Test
  int tests  = 0;
  int errors = 0;

  // Button Select Codes
  localparam int BTN_C = 0;
  localparam int BTN_U = 1;
  localparam int BTN_D = 2;
  localparam int BTN_L = 3;
  localparam int BTN_R = 4;

  // Press & Release a Button (Held Longer than Debounce Window)
  task automatic press(input int b);
  begin
    @(negedge clk);
    case (b)
      BTN_C: btnC = 1'b1;
      BTN_U: btnU = 1'b1;
      BTN_D: btnD = 1'b1;
      BTN_L: btnL = 1'b1;
      BTN_R: btnR = 1'b1;
    endcase
    repeat (HOLD) @(posedge clk);
    @(negedge clk);
    btnC = 1'b0;
    btnU = 1'b0;
    btnD = 1'b0;
    btnL = 1'b0;
    btnR = 1'b0;
    repeat (HOLD) @(posedge clk);
  end
  endtask

  // Press a Button N Times
  task automatic press_n(input int b, input int n);
  begin
    repeat (n) press(b);
  end
  endtask

  // Set Switches & Execute (BTNC)
  task automatic execute(input logic [7:0] tA, input logic [7:0] tB);
  begin
    sw = {tA, tB};
    press(BTN_C);
  end
  endtask

  // Outputs a pass/fail message and increments test/error counters
  task automatic check(
    input logic [15:0] got,
    input logic [15:0] exp,
    input string       name
  );
  begin
    tests++;
    if (got !== exp) begin
      errors++;
      $display("FAIL: %s | got=%h (exp %h)", name, got, exp);
    end else begin
      $display("PASS: %s", name);
    end
  end
  endtask

  // Checks Displayed Result, OVF LED, and ZERO LED
  task automatic check_result(
    input logic [15:0] expVal,
    input logic        expOVF,
    input logic        expZERO,
    input string       name
  );
  begin
    check(dut.disp_val, expVal, {name, " (val)"});
    check(led[15],      expOVF, {name, " (OVF)"});
    check(led[14],      expZERO, {name, " (ZERO)"});
  end
  endtask

  // Checks the Four 7-Segment Digit Nibbles (d3 = Leftmost)
  task automatic check_digits(
    input logic [15:0] expDigits,
    input string       name
  );
  begin
    check({dut.u_driver.d3, dut.u_driver.d2, dut.u_driver.d1, dut.u_driver.d0},
          expDigits, {name, " (7-seg)"});
  end
  endtask

  // Anode Scan Tracker
  logic [3:0] an_seen;

  initial begin
    repeat (5) @(posedge clk);

    $display("alu_tb start");

    // Power-On Default
    check(led[11:8], 16'h4, "Default op = ADD");

    // ADD (op 4)
    execute(8'd25, 8'd17);
    check_result(16'd42, 1'b0, 1'b0, "ADD: 25 + 17");
    check_digits(16'h4042, "ADD: 25 + 17 decimal");
    execute(8'd200, 8'd100);
    check_result(16'd44, 1'b1, 1'b0, "ADD unsigned wrap: 200 + 100");

    // SUB (op 5)
    press(BTN_R);
    check(led[11:8], 16'h5, "BTNR -> SUB");
    execute(8'd50, 8'd20);
    check_result(16'd30, 1'b0, 1'b0, "SUB: 50 - 20");
    execute(8'd5, 8'd5);
    check_result(16'd0, 1'b0, 1'b1, "SUB zero: 5 - 5");
    execute(8'd20, 8'd50);
    check_result(16'd226, 1'b1, 1'b0, "SUB borrow: 20 - 50");

    // MUL (op 8)
    press_n(BTN_R, 3);
    check(led[11:8], 16'h8, "BTNR x3 -> MUL");
    execute(8'd255, 8'd255);
    check_result(16'hFE01, 1'b0, 1'b0, "MUL: 255 * 255");
    check_digits(16'hFE01, "MUL: 255 * 255 hex fallback");
    execute(8'd12, 8'd10);
    check_result(16'd120, 1'b0, 1'b0, "MUL: 12 * 10");
    check_digits(16'h8120, "MUL: 12 * 10 decimal");

    // SLL (op 9)
    press(BTN_R);
    execute(8'h01, 8'd7);
    check_result(16'h0080, 1'b0, 1'b0, "SLL: 01 << 7");
    check_digits(16'h9080, "SLL: 01 << 7 hex");

    // AND (op 0, Wrap Up from 9)
    press_n(BTN_R, 7);
    check(led[11:8], 16'h0, "BTNR wrap F -> AND");
    execute(8'h0F, 8'hF0);
    check_result(16'h0000, 1'b0, 1'b1, "AND: 0F & F0");

    // SLT (op F, Wrap Down from 0)
    press(BTN_L);
    check(led[11:8], 16'hF, "BTNL wrap 0 -> SLT");
    execute(8'd3, 8'd7);
    check_result(16'd1, 1'b0, 1'b0, "SLT: 3 < 7");

    // Debounce Glitch Rejection (Shorter than Debounce Window)
    @(negedge clk);
    btnR = 1'b1;
    repeat (2) @(posedge clk);
    @(negedge clk);
    btnR = 1'b0;
    repeat (HOLD) @(posedge clk);
    check(led[11:8], 16'hF, "Debounce rejects 2-cycle glitch");

    // History Navigation
    press(BTN_U);
    check(dut.disp_val, 16'd1,    "HIST[0] = SLT 1");
    check(led[13:12],   16'd0,    "HIST[0] LED index");
    press(BTN_U);
    check(dut.disp_val, 16'h0000, "HIST[1] = AND 0");
    check(led[11:8],    16'h0,    "HIST[1] op");
    press(BTN_U);
    check(dut.disp_val, 16'h0080, "HIST[2] = SLL 80");
    press(BTN_U);
    check(dut.disp_val, 16'd120,  "HIST[3] = MUL 120");
    check(led[13:12],   16'd3,    "HIST[3] LED index");
    press(BTN_U);
    check(led[13:12],   16'd3,    "HIST saturates at oldest");
    press(BTN_D);
    check(dut.disp_val, 16'h0080, "BTND -> HIST[2]");
    press_n(BTN_D, 3);
    check(dut.hist_mode, 16'd0,   "BTND exits history");
    check(dut.disp_val, 16'd1,    "Live result restored");

    // 7-Segment Anode Scan (All 4 Digits Driven)
    an_seen = '0;
    repeat (2**REFRESH_BITS) begin
      @(posedge clk);
      an_seen = an_seen | ~an;
    end
    check(an_seen, 16'hF, "All 4 anodes scanned");

    $display("alu_tb done | tests=%0d errors=%0d", tests, errors);
    $finish;
  end

endmodule
