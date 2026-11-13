// driver.sv
// Tanish Gheewala - Fall 2026
// 4-Digit Seven-Segment Display Driver (Decimal & Hex Formatting)

`timescale 1ns/1ps

// Module Header
module driver #(
    parameter int REFRESH_BITS = 18  // ~380Hz Full-Display Refresh at 100MHz
  ) ( // Input & Output Ports
    input  logic        clk,
    input  logic        rst,
    input  logic [3:0]  op,
    input  logic [15:0] val,
    input  logic        dec_mode,

    output logic [6:0]  seg,
    output logic        dp,
    output logic [3:0]  an
  );

  // Refresh Counter & Active Digit Select
  logic [REFRESH_BITS-1:0] refresh_cnt = '0;
  logic [1:0]              digit_sel;

  // Digit Nibbles (d3 = Leftmost, d0 = Rightmost)
  logic [3:0] d3;
  logic [3:0] d2;
  logic [3:0] d1;
  logic [3:0] d0;
  logic [3:0] cur_nibble;

  // Binary-to-BCD Temporaries (Double Dabble)
  logic [15:0] bcd;

  // Refresh Counter Logic
  always_ff @(posedge clk)
  begin
    if (rst) begin
      refresh_cnt <= '0;
    end else begin
      refresh_cnt <= refresh_cnt + 1'b1;
    end
  end

  assign digit_sel = refresh_cnt[REFRESH_BITS-1 -: 2];

  // Binary-to-BCD Conversion (0 to 999)
  always_comb
  begin
    bcd = '0;
    for (int i = 9; i >= 0; i--) begin
      if (bcd[3:0] >= 4'd5)   bcd[3:0]   = bcd[3:0]   + 4'd3;
      if (bcd[7:4] >= 4'd5)   bcd[7:4]   = bcd[7:4]   + 4'd3;
      if (bcd[11:8] >= 4'd5)  bcd[11:8]  = bcd[11:8]  + 4'd3;
      bcd = {bcd[14:0], val[i]};
    end
  end

  // Digit Formatting Logic ([OP]. [Result] or Full 16-bit Hex if > 999)
  always_comb
  begin
    if (dec_mode && (val <= 16'd999)) begin
      d3 = op;
      d2 = bcd[11:8];
      d1 = bcd[7:4];
      d0 = bcd[3:0];
    end else if (!dec_mode && (val <= 16'h0FFF)) begin
      d3 = op;
      d2 = val[11:8];
      d1 = val[7:4];
      d0 = val[3:0];
    end else begin
      d3 = val[15:12];
      d2 = val[11:8];
      d1 = val[7:4];
      d0 = val[3:0];
    end
  end

  // Anode Multiplexer (Active Low)
  always_comb
  begin
    case (digit_sel)
      2'b00: begin
        an         = 4'b1110;
        cur_nibble = d0;
        dp         = 1'b1;
      end
      2'b01: begin
        an         = 4'b1101;
        cur_nibble = d1;
        dp         = 1'b1;
      end
      2'b10: begin
        an         = 4'b1011;
        cur_nibble = d2;
        dp         = 1'b1;
      end
      2'b11: begin
        an         = 4'b0111;
        cur_nibble = d3;
        dp         = 1'b0;
      end
      default: begin
        an         = 4'b1111;
        cur_nibble = 4'h0;
        dp         = 1'b1;
      end
    endcase
  end

  // 7-Segment Cathode Decoder (Active Low: {g, f, e, d, c, b, a})
  always_comb
  begin
    case (cur_nibble)
      4'h0: seg = 7'b100_0000;
      4'h1: seg = 7'b111_1001;
      4'h2: seg = 7'b010_0100;
      4'h3: seg = 7'b011_0000;
      4'h4: seg = 7'b001_1001;
      4'h5: seg = 7'b001_0010;
      4'h6: seg = 7'b000_0010;
      4'h7: seg = 7'b111_1000;
      4'h8: seg = 7'b000_0000;
      4'h9: seg = 7'b001_0000;
      4'hA: seg = 7'b000_1000;
      4'hB: seg = 7'b000_0011;
      4'hC: seg = 7'b100_0110;
      4'hD: seg = 7'b010_0001;
      4'hE: seg = 7'b000_0110;
      4'hF: seg = 7'b000_1110;
      default: seg = 7'b111_1111;
    endcase
  end

endmodule
