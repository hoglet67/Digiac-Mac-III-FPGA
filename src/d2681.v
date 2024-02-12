module d2681
  (
   input            clk,
   input            reset,
   input            clken,
   input            enable,
   input            we,
   input [3:0]      addr,
   input [7:0]      di,
   output [7:0]     do,
   input [6:0]      ip,
   output reg [7:0] op,
   output           txa,
   input            rxa,
   output           txb,
   input            rxb,
   output           irq
   );

   wire [7:0]       rxa_data;
   reg [7:0]        rxa_buffer;
   reg              rxa_rdy = 1'b1;
   reg              rxa_ful = 1'b0;
   wire             rxa_strb;
   wire [7:0]       txa_data;
   wire             txa_strb;
   wire             txa_active;
   wire             txa_done;
   wire             txa_rdy;
   wire             txa_emt;

   uart_rx #(.CLKS_PER_BIT(434)) uart_rxa
     (
      .i_Clock(clk),
      .i_Rx_Serial(rxa),
      .o_Rx_DV(rxa_strb),
      .o_Rx_Byte(rxa_data)
    );

   always @(posedge clk)
      if (rxa_strb) begin
         rxa_buffer <= rxa_data;
         rxa_rdy <= 1'b1;
         rxa_ful <= 1'b1;
      end else if (clken & enable & !we & addr == 4'h3) begin
         rxa_rdy <= 1'b0;
         rxa_ful <= 1'b0;
      end

   uart_tx #(.CLKS_PER_BIT(434)) uart_txa
     (
      .i_Clock(clk),
      .i_Tx_DV(txa_strb),
      .i_Tx_Byte(txa_data),
      .o_Tx_Active(txa_active),
      .o_Tx_Serial(txa),
      .o_Tx_Done(txa_done)
      );

   assign txa_data = di;
   assign txa_strb = clken & we & enable & addr == 4'h3;
   assign txa_rdy  = !txa_active;
   assign txa_emt  = !txa_active;

   always @(posedge clk) begin

      if (clken) begin
         if (enable & we) begin
            if (addr == 4'hE)
              op <= op | di;
            else if (addr == 4'hF)
              op <= op & ~di;
         end
      end
   end

   assign do = (addr == 4'b1) ? { 4'b0000, txa_emt, txa_rdy, rxa_ful, rxa_rdy} :
               (addr == 4'h3) ? rxa_buffer :
               (addr == 4'hd) ? ip :
               8'hFF;

endmodule
