module icm7228
  (
   input       clk,
   input       clken,      // should be 1MHz
   input       reset,

   input       wr,
   input       mode,
   input [7:0] data,

   output reg  tm1638_clk = 1,
   output reg  tm1638_stb = 1,
   inout       tm1638_dio
   );

`define ST_IDLE 5'b00000
`define ST_DM   5'b00001
`define ST_DI   5'b00010
`define ST_DA   5'b00011
`define ST_D0   5'b10000
`define ST_Z0   5'b10001
`define ST_D1   5'b10010
`define ST_Z1   5'b10011
`define ST_D2   5'b10100
`define ST_Z2   5'b10101
`define ST_D3   5'b10110
`define ST_Z3   5'b10111
`define ST_D4   5'b11000
`define ST_Z4   5'b11001
`define ST_D5   5'b11010
`define ST_Z5   5'b11011
`define ST_D6   5'b11100
`define ST_Z6   5'b11101
`define ST_D7   5'b11110
`define ST_Z7   5'b11111

   reg [3:0] control = 0; // Ignored for now
   reg [7:0] display[0:7];
   reg [2:0] dcount = 0;
   reg       wr_last = 0;
   reg [4:0] state = 0;
   reg [4:0] bitcount = 0;
   reg [7:0] dout = 0;
   reg       send = 0;
   reg       tm1638_do = 1;

   always @(posedge clk) begin
      if (clken) begin
         send <= 1'b0;
         wr_last <= wr;
         if (wr & !wr_last) begin
            if (mode) begin
               dcount <= 3'b000;
               control <= data[7:4];
            end else begin
               display[dcount] <= data;
               dcount <= dcount + 1'b1;
               if (dcount == 3'b111)
                 send <= 1'b1;
            end
         end
      end
   end

   // Usage pattern of ICM7228 by Digiac
   //
   // Write 0xF0 with Mode=1 (Write Control Register)
   //
   // D7 = 1 means "data coming"
   // D6 = 1 means "hex decode"
   // D5 = 1 means "no decode"
   // D4 = 1 means "normal operation"
   //
   // Should be followed by 8 data writes, which is handled by ca47
   //
   // D7 DP
   // D6 a         6666
   // D5 b        1    5
   // D4 c        1    5
   // D3 e         2222
   // D2 g        3    4
   // D1 f        3    4
   // D0 d         0000  7


   // TB1638
   //
   // Idle: STB = 1; CLK = 1
   //
   // Data bit clocked on trailing (rising) edge
   //
   // STB  1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1
   // CLK  1 1 1 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 0 1 1 1 1 1
   // DIO  - - - - |D0 |D1 |D2 |D3 |D4 |D5 |D6 |D7|- - - -
   //
   // STB=0
   // Send 0x8F (Display Mode)
   // STB=1
   // STB=0
   // Send 0x40 (Data Instruction)
   // STB=1
   // STB=0
   // Send 0xC0 (Display Address)
   // Send mangled display[0]
   // Send 0x00
   // Send mangled display[1]
   // Send 0x00
   // Send mangled display[2]
   // Send 0x00
   // Send mangled display[3]
   // Send 0x00
   // Send mangled display[4]
   // Send 0x00
   // Send mangled display[5]
   // Send 0x00
   // Send mangled display[6]
   // Send 0x00
   // Send mangled display[7]

   //

   always @(posedge clk or posedge reset) begin
      if (reset) begin
         state      <= `ST_IDLE;
         bitcount   <= 5'b00000;
         dout       <= 8'h00;
         tm1638_stb <= 1'b1;
         tm1638_clk <= 1'b1;
         tm1638_do  <= 1'b1;

      end else if (clken) begin

         if (state == `ST_IDLE || bitcount == 19)
           bitcount <= 0;
         else
           bitcount <= bitcount + 1'b1;

         if (bitcount == 1 && (state == `ST_DM || state == `ST_DI || state == `ST_DA))
           tm1638_stb <= 1'b0;
         else if (bitcount == 19 && (state == `ST_DM || state == `ST_DI || state == `ST_D7))
           tm1638_stb <= 1'b1;

         if (bitcount == 0) begin
            case (state)
              `ST_DM: dout <= 8'h8F;
              `ST_DI: dout <= 8'h40;
              `ST_DA: dout <= 8'hC0;
              `ST_D0: dout <= display[0];
              `ST_D1: dout <= display[1];
              `ST_D2: dout <= display[2];
              `ST_D3: dout <= display[3];
              `ST_D4: dout <= display[4];
              `ST_D5: dout <= display[5];
              `ST_D6: dout <= display[6];
              `ST_D7: dout <= display[7];
              default:
                dout <= 8'h00;
            endcase
         end else if (bitcount == 2 || bitcount == 4 || bitcount == 6 || bitcount == 8 || bitcount == 10 || bitcount == 12 || bitcount == 14 || bitcount == 16) begin
            tm1638_clk <= 1'b0;
            tm1638_do <= dout[0];
            dout <= {1'b1, dout[7:1]};
         end else begin
           tm1638_clk <= 1'b1;
         end

         case (state)
           `ST_IDLE: if (send) state <= `ST_DM;
           `ST_DM: if (bitcount == 19) state <= `ST_DI;
           `ST_DI: if (bitcount == 19) state <= `ST_DA;
           `ST_DA: if (bitcount == 19) state <= `ST_D0;
           `ST_D0: if (bitcount == 19) state <= `ST_Z0;
           `ST_Z0: if (bitcount == 19) state <= `ST_D1;
           `ST_D1: if (bitcount == 19) state <= `ST_Z1;
           `ST_Z1: if (bitcount == 19) state <= `ST_D2;
           `ST_D2: if (bitcount == 19) state <= `ST_Z2;
           `ST_Z2: if (bitcount == 19) state <= `ST_D3;
           `ST_D3: if (bitcount == 19) state <= `ST_Z3;
           `ST_Z3: if (bitcount == 19) state <= `ST_D4;
           `ST_D4: if (bitcount == 19) state <= `ST_Z4;
           `ST_Z4: if (bitcount == 19) state <= `ST_D5;
           `ST_D5: if (bitcount == 19) state <= `ST_Z5;
           `ST_Z5: if (bitcount == 19) state <= `ST_D6;
           `ST_D6: if (bitcount == 19) state <= `ST_Z6;
           `ST_Z6: if (bitcount == 19) state <= `ST_D7;
           `ST_D7: if (bitcount == 19) state <= `ST_Z7;
           `ST_Z7: if (bitcount == 19) state <= `ST_IDLE;
           default: state <= `ST_IDLE;
         endcase
      end
   end

   assign tm1638_dio = (state != `ST_IDLE) ? tm1638_do : 1'bZ;

endmodule
