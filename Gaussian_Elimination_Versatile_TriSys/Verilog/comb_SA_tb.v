`include "define.v"
`include "clog2.v"

`timescale 1ns / 1ps
module comb_SA_tb;

  //inputs
  reg clk = 0;
  reg rst_b = 0;
  reg mode = 0;
  reg start = 0;
  reg [`DAT_W-1:0] data, data2;

  reg [`CLOG2(`DAT_D)-1:0] addr, addr2;
  reg wren2;

  //outputs
  
  wire finish;
  wire full_rank;
  wire [`DAT_W-1:0] result; 

  wire [`DAT_W-1:0] q;
  

  integer f;

  comb_SA  DUT(
  .clk      (clk),
  .rst_b    (rst_b),
  .mode     (mode),
  .start    (start),
  .data     (data),
  .finish   (finish),
  .full_rank(full_rank),
  .result     (result)
);

  defparam DUT.DAT_W = `DAT_W;


  mem MEM(
  .clock        (clk),
  .data         (),
  .rdaddress    (addr),
  .rden         (1'b1),
  .wraddress    (),
  .wren         (1'b0),
  .q            (q)
);

  defparam MEM.WIDTH = `DAT_W;
  defparam MEM.DEPTH = `DAT_D;
  defparam MEM.FILE = "../../../../verilog/data.in";

  mem MEM2(
  .clock        (clk),
  .data         (data2),
  .rdaddress    (),
  .rden         (1'b0),
  .wraddress    (addr2),
  .wren         (wren2),
  .q            ()
);

  defparam MEM2.WIDTH = `DAT_W;
  defparam MEM2.DEPTH = `DAT_D;
  //defparam MEM.FILE = "../../../../verilog/data.out";

  // initial
  //   begin
  //      $dumpfile("systemize_tb.vcd");
  //      $dumpvars(0, systemize_tb);
  //   end
 
  integer i;

  integer start_time;

  initial
    begin
      rst_b = 1'b0;
      mode = 1'b0;
      start = 1'b0;
      addr = 0;
      data = 0;
      addr2 = 0;
      wren2 = 0;
      data2 = 0;

      # 50;
      rst_b = 1'b1;
      # 101;
      start = 1'b1;
      start_time <= $time;
      data = q;
      addr = 1;

      for (i = 0; i < `DAT_D/1-1; i = i+1) begin
        # 10;
        start = 1'b0;
        data = q;
        addr = addr + 1;
      end
      
      @(posedge finish); //triangularization finished, changed to systemization mode
      # 11;
      mode = 1'b1;
      start = 1'b1;

      # 10;
      start = 1'b0;
      @(posedge finish); //systemization finished, output to data.out
      # 1;
      //f = $fopen("../../../../verilog/data.out","w");
      for (i = 0; i<`DAT_D/1; i=i+1) begin
          $display("\nruntime: %0d cycles\n", ($time - start_time)/10);
          wren2 = 1;
          data2 = result;
          if (i == 0)
            addr2 = `DAT_D/1-1;
          else 
            addr2 = addr2-1;
          # 10;
      end
      wren2 = 0;
      //@(posedge done);
      //$display("\nruntime: %0d cycles\n", ($time - start_time)/10);

/*      # 500;
      mode = 1'b0;
      start = 1'b1;
      
      
      data = q;
      addr = addr + 1;

      for (i = 0; i < `DAT_D/2-1; i = i+1) begin
        # 10;
        start = 1'b0;
        data = q;
        addr = addr + 1;
      end

      @(posedge finish); //triangularization finished
      # 11;
      mode <= 1'b1;
      start <= 1'b1;

      # 10;
      start = 1'b0;

      @(posedge finish); //systemization finished
      # 1;
      for (i = 0; i<`DAT_D/2; i=i+1) begin
          $display("\nruntime: %0d cycles\n", $time/10);
          wren2 = 1;
          data2 = result;
          if (i == 0)
            addr2 = 2*`DAT_D/2-1;
          else 
            addr2 = addr2-1;
          # 10;
      end
      wren2 = 0;

      // # 100;
      // start = 1'b1;
      // data = q;
      // addr = addr + 1;

      // for (i = 0; i < `DAT_D/3-1; i = i+1) begin
      //   # 10;
      //   start = 1'b0;
      //   data = q;
      //   addr = addr + 1;
      // end
*/
      $writememb("../../../../verilog/data.out",MEM2.mem);

      //$finish;
    end

  always
    begin
      clk = 1'b1;
      #5;
      clk = 1'b0;
      #5;
    end
   
endmodule