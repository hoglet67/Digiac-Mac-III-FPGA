`timescale 1 ns / 1 ns

//  Digiac keypad implementation with interface to PS/2
//
//  Copyright (c) 2024 David Banks
//
//  All rights reserved
//
//  Redistribution and use in source and synthezised forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice,
//    this list of conditions and the following disclaimer.
//
//  * Redistributions in synthesized form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the
//    documentation and/or other materials provided with the distribution.
//
//  * Neither the name of the author nor the names of other contributors may
//    be used to endorse or promote products derived from this software without
//    specific prior written agreement from the author.
//
//  * License is granted for non-commercial use only.  A fee may not be charged
//    for redistributions as source code or in synthesized/hardware form without
//    specific prior written agreement from the author.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
//  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
//  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
//  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
//  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
//  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
//  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
//  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
//  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
//  POSSIBILITY OF SUCH DAMAGE.
//

module keypad
  (
   input        clk,
   input        reset,
   input        ps2_clk,
   input        ps2_data,
   input [7:0]  col,
   output [2:0] row
   );

   //  Interface to PS/2 block
   wire [7:0]   keyb_data;
   wire         keyb_valid;
   wire         keyb_error;

   //  Internal signals
   reg [23:0]   keys;
   reg          _release_;
   reg          extended;

   ps2_intf PS2
     (
      .CLK       ( clk        ),
      .RESET     ( reset       ),
      .PS2_CLK   ( ps2_clk      ),
      .PS2_DATA  ( ps2_data     ),
      .DATA      ( keyb_data    ),
      .VALID     ( keyb_valid   )
      );

   //  Decode PS/2 data

   always @(posedge clk) begin

      if (reset) begin

         _release_ <= 1'b 0;
         extended <= 1'b 0;
         keys <= 24'h000000;

      end else  begin

         if (keyb_valid === 1'b 1) begin

            //  Decode keyboard input
            if (keyb_data === 8'h e0) begin

               //  Extended key code follows
               extended <= 1'b 1;

            end else if (keyb_data === 8'h f0 ) begin

               //  Release code follows
               _release_ <= 1'b 1;

               //  Cancel extended/release flags for next time

            end else if (extended === 1'b1) begin // Extended keys.

               _release_ <= 1'b 0;
               extended <= 1'b 0;

            end else begin

               _release_ <= 1'b 0;
               extended <= 1'b 0;

               //  Decode scan codes
               case (keyb_data)

                 // Keymap table in Monitor:
                 // 0123456789ABCDEFMPLSGR+-
                 //
                 // Matrix:
                 //            Latch
                 //       7 6 5 4 3 2 1 0
                 //       ---------------
                 // IP2 | 7 6 5 4 3 2 1 0
                 // IP3 | F E D C B A 9 8
                 // IP4 | - + R G S L P M
                 //
                 // A latch bit of zero selects the corresponding
                 // column A high on IP2/3/4 indicates a key is
                 // pressed. Note: the UART IP inputs are then
                 // inverted UART, so a high on IP2/3/4 corresponds to
                 // a zero in the UART input register. This is handled
                 // in the monitor by EOR #&38 at CB2E.

                 8'h 45: keys[ 0] <= ~_release_;    //  0
                 8'h 16: keys[ 1] <= ~_release_;    //  1
                 8'h 1E: keys[ 2] <= ~_release_;    //  2
                 8'h 26: keys[ 3] <= ~_release_;    //  3
                 8'h 25: keys[ 4] <= ~_release_;    //  4
                 8'h 2E: keys[ 5] <= ~_release_;    //  5
                 8'h 36: keys[ 6] <= ~_release_;    //  6
                 8'h 3D: keys[ 7] <= ~_release_;    //  7
                 8'h 3E: keys[ 8] <= ~_release_;    //  8
                 8'h 46: keys[ 9] <= ~_release_;    //  9
                 8'h 1C: keys[10] <= ~_release_;    //  A
                 8'h 32: keys[11] <= ~_release_;    //  B
                 8'h 21: keys[12] <= ~_release_;    //  C
                 8'h 23: keys[13] <= ~_release_;    //  D
                 8'h 24: keys[14] <= ~_release_;    //  E
                 8'h 2B: keys[15] <= ~_release_;    //  F
                 8'h 3A: keys[16] <= ~_release_;    //  M
                 8'h 4D: keys[17] <= ~_release_;    //  P
                 8'h 4B: keys[18] <= ~_release_;    //  L
                 8'h 1B: keys[19] <= ~_release_;    //  S
                 8'h 34: keys[20] <= ~_release_;    //  G
                 8'h 2D: keys[21] <= ~_release_;    //  R
                 8'h 55: keys[22] <= ~_release_;    //  = (+)
                 8'h 4E: keys[23] <= ~_release_;    //  -

               endcase
            end
         end
      end
   end

   assign row = (col[0] ? 3'b000 : {keys[16], keys[ 8], keys [0]}) |
                (col[1] ? 3'b000 : {keys[17], keys[ 9], keys [1]}) |
                (col[2] ? 3'b000 : {keys[18], keys[10], keys [2]}) |
                (col[3] ? 3'b000 : {keys[19], keys[11], keys [3]}) |
                (col[4] ? 3'b000 : {keys[20], keys[12], keys [4]}) |
                (col[5] ? 3'b000 : {keys[21], keys[13], keys [5]}) |
                (col[6] ? 3'b000 : {keys[22], keys[14], keys [6]}) |
                (col[7] ? 3'b000 : {keys[23], keys[15], keys [7]}) ;


endmodule
