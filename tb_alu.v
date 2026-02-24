`timescale 1ns/1ps

module tb;
  reg clk;
  reg rst;
  reg toggle;
  reg [3:0] count;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    rst    = 1;
    toggle = 0;
    count  = 0;

    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    #12 rst = 0;

    #100 $finish;
  end

  always @(posedge clk) begin
    if (rst) begin
      count  <= 0;
      toggle <= 0;
    end else begin
      count  <= count + 1;
      toggle <= ~toggle;
    end
  end

endmodule