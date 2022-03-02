`include "define.v"
`include "clog2.v"

`timescale 1ns / 1ps
module comb_SA_tb;

  //inputs
  reg clk = 0;
  reg rst_b = 0;
  reg start = 0;
  reg [`DAT_W-1:0] data = 0;

  reg [`CLOG2(`DAT_D)-1:0] addr;

  reg [`DAT_W-1:0] result [0:`DAT_D-1];

  //outputs
  
  wire finish;
  wire full_rank;

  wire [`DAT_W-1:0] q;
  
  wire [`DAT_W-1:0] row0, row1, row2, row3, row4, row5, row6;

  integer f;

  comb_SA  DUT(
  .clk      (clk),
  .rst_b    (rst_b),
  .start    (start),
  .data     (data),
  .finish   (finish),
  .full_rank(full_rank),
  .row0     (row0),
  .row1     (row1),
  .row2     (row2),
  .row3     (row3),
  .row4     (row4),
  .row5     (row5),
  .row6     (row6)
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
      start = 1'b0;
      addr = 0;
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
      
      @(posedge finish);
       f = $fopen("../../../../verilog/data.out","w");
       result[0] = row0;
       result[1] = row1;
       result[2] = row2;
       result[3] = row3;
       result[4] = row4;
       result[5] = row5;
       result[6] = row6;
       for (i = 0; i<`DAT_D; i=i+1)
           $fwrite(f,"%b\n",result[i]);

       $fclose(f);
      //@(posedge done);
      //$display("\nruntime: %0d cycles\n", ($time - start_time)/10);

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

      //$writememb("./data.out",MEM.mem);

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