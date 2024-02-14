// -----------------------------------------------------------------------------
// Copyright (c) 2024 David Banks
// -----------------------------------------------------------------------------
//   ____  ____
//  /   /\/   /
// /___/  \  /
// \   \   \/
//  \   \
//  /   /         Filename  : digiac.v
// /___/   /\     Timestamp : 12/02/2024
// \   \  /  \
//  \___\/\___\
//
// Design Name: digiac
// Device: XC6SLX9


module digiac
  (
   input         clk50,
   input         sw1,
   input         sw2,
   output [7:0]  led,
   input         uart_rx,
   output        uart_tx,
   output [10:0] trace
 );

   wire        cpu_clk = clk50;
   wire [15:0] cpu_AB_next;
   reg [15:0]  cpu_AB;
   wire [7:0]  cpu_DO_next;
   reg [7:0]   cpu_DO;
   wire        cpu_WE_next;
   reg         cpu_WE;
   wire        cpu_SYNC;


   wire [7:0]  via_do;
   reg [7:0]   via_do_r;
   wire        via_do_oe_n;
   wire        via_irq_n;
   wire        via_ca1_in;
   wire        via_ca2_in;
   wire        via_ca2_out;
   wire        via_ca2_oe_n;
   wire [7:0]  via_pa_in;
   wire [7:0]  via_pa_out;
   wire [7:0]  via_pa_oe_n;
   wire        via_cb1_in;
   wire        via_cb1_out;
   wire        via_cb1_oe_n;
   wire        via_cb2_in;
   wire        via_cb2_out;
   wire        via_cb2_oe_n;
   wire [7:0]  via_pb_in;
   wire [7:0]  via_pb_out;
   wire [7:0]  via_pb_oe_n;


   reg [5:0]   clken_counter = 6'b0;
   reg         cpu_clken = 1'b0;
   reg         cpu_clken1 = 1'b0;
   reg         via_clken = 1'b0;

   // ===============================================================
   // Reset generation
   // ===============================================================

   reg [9:0] pwr_up_reset_counter = 0; // hold reset low for ~1ms
   wire      pwr_up_reset_n = &pwr_up_reset_counter;
   reg       hard_reset_n;

   always @(posedge cpu_clk)
     begin
        if (!pwr_up_reset_n)
          pwr_up_reset_counter <= pwr_up_reset_counter + 1'b1;
        hard_reset_n <= !sw1 & pwr_up_reset_n;
     end

   wire cpu_reset = !hard_reset_n;

   // ===============================================================
   // RAM
   // ===============================================================

   reg [7:0]   ram[0:8191];
   reg [7:0]   ram_DO;
   wire        ram_sel   = (cpu_AB[15:13] == 3'b000);

   initial
     $readmemh("../mem/ram.mem", ram);

   always @(posedge cpu_clk)
     if (cpu_clken1) begin
        if (cpu_WE && ram_sel)
          ram[cpu_AB[12:0]] <= cpu_DO;
        ram_DO <= ram[cpu_AB[12:0]];
     end

   // ===============================================================
   // ROM
   // ===============================================================

   reg [7:0]   rom[0:16383];
   wire        rom_sel   = (cpu_AB[15:14] == 2'b11);
   reg [7:0]   rom_DO;

   initial
     $readmemh("../mem/rom.mem", rom);

   always @(posedge cpu_clk)
     if (cpu_clken1) begin
        rom_DO <= rom[cpu_AB[13:0]];
     end

   // ===============================================================
   // Latch
   // ===============================================================

   reg [7:0]   latch;
   wire        latch_sel = (cpu_AB[15:12] == 4'b0111);

   always @(posedge cpu_clk)
     if (cpu_clken1 && latch_sel && cpu_WE)
       latch <= cpu_DO;

   // ===============================================================
   // UART
   // ===============================================================

   wire [7:0]  uart_DO;
   wire        uart_sel  = (cpu_AB[15:12] == 4'b1000);
   wire [6:0]  uart_ip = {4'b1111, cpu_clken, 2'b11};
   wire [7:0]  uart_op;
   wire        uart_intr_n;

   d2681 uart
     (
      .clk(cpu_clk),
      .reset(cpu_reset),
      .clken(cpu_clken1),
      .enable(uart_sel),
      .we(cpu_WE),
      .addr(cpu_AB[3:0]),
      .di(cpu_DO),
      .do(uart_DO),
      .ip_n(uart_ip),
      .op_n(uart_op),
      .txa(uart_tx),
      .rxa(uart_rx),
      .txb(),
      .rxb(1'b1),
      .intr_n(uart_intr_n)
      );

   assign led = uart_op;

   // ===============================================================
   // VIA
   // ===============================================================

   wire [7:0]  via_DO;
   wire        via_sel   = (cpu_AB[15:12] == 4'b1001);

m6522 VIA (
     //  System VIA is reset by power on reset only
    .ENA_4(via_clken), // TODO
    .CLK(cpu_clk),
    .I_RS(cpu_AB[3:0]),
    .I_DATA(cpu_DO),
    .O_DATA(via_DO),
    .O_DATA_OE_L(),
    .I_RW_L(!cpu_WE),
    .I_CS1(via_sel),
    .I_CS2_L(1'b0), // nCS2(1'b 0),
    .O_IRQ_L(via_irq_n),
    .I_P2_H(cpu_clken),
    .RESET_L(hard_reset_n),
    .I_CA1(via_ca1_in),
    .I_CA2(via_ca2_in),
    .O_CA2(via_ca2_out),
    .O_CA2_OE_L(via_ca2_oe_n),
    .I_PA(via_pa_in),
    .O_PA(via_pa_out),
    .O_PA_OE_L(via_pa_oe_n),
    .I_CB1(via_cb1_in),
    .O_CB1(via_cb1_out),
    .O_CB1_OE_L(via_cb1_oe_n),
    .I_CB2(via_cb2_in),
    .O_CB2(via_cb2_out),
    .O_CB2_OE_L(via_cb2_oe_n),
    .I_PB(via_pb_in),
    .O_PB(via_pb_out),
    .O_PB_OE_L(via_pb_oe_n)
);

   // ===============================================================
   // CPU
   // ===============================================================

   wire [7:0]  cpu_DI = ram_sel ? ram_DO :
               rom_sel ? rom_DO :
               uart_sel ? uart_DO :
               via_sel ? via_DO :
               8'hFF;

   wire        cpu_IRQ = !via_irq_n;
   wire        cpu_NMI = !uart_intr_n;

   // Arlet's 65C02 Core
   cpu_65c02 cpu
     (
      .clk(cpu_clk),
      .reset(cpu_reset),
      .AB(cpu_AB_next),
      .DI(cpu_DI),
      .DO(cpu_DO_next),
      .WE(cpu_WE_next),
      .IRQ(cpu_IRQ),
      .NMI(cpu_NMI),
      .RDY(cpu_clken),
      .SYNC(cpu_SYNC)
      );

   reg         trace_phi2;
   reg         trace_rnw;
   reg         trace_sync;
   reg [7:0]   trace_data;

   always @(posedge cpu_clk) begin
      if (clken_counter == 49) begin
         clken_counter <= 0;
         cpu_clken <= 1'b1;
      end else begin
         clken_counter <= clken_counter + 1'b1;
         cpu_clken <= 1'b0;
      end
      cpu_clken1 <= cpu_clken;
      if (clken_counter == 8 || clken_counter == 16 || clken_counter == 24 || clken_counter == 32)
        via_clken <= 1'b1;
      else
        via_clken <= 1'b0;
      if (cpu_clken) begin
         cpu_AB <= cpu_AB_next;
         cpu_WE <= cpu_WE_next;
         cpu_DO <= cpu_DO_next;
      end
      if (cpu_clken) begin
         trace_phi2 <= 1'b1;
         trace_sync <= cpu_SYNC;
         if (cpu_WE) begin
            trace_rnw <= 1'b0;
            trace_data <= cpu_DO;
         end else begin
            trace_rnw <= 1'b1;
            trace_data <= cpu_DI;
         end
      end else if (clken_counter == 24) begin
         trace_phi2 <= 1'b0;
      end
   end

   assign trace = {trace_phi2, trace_sync, trace_rnw, trace_data};

endmodule
