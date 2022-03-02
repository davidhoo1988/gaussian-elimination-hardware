//define the unified node for Gaussian Elimination
module processor_AB (
  input  wire       clk,
  input  wire       rst_b,
  input  wire       start_in,
  input  wire       data_in,
  input  wire [1:0] op_in,
  input  wire       pivot_in,
  output wire       start_out,
  output wire       data_out,
  output wire [1:0] op_out,
  output wire       pivot_out,
  output reg        r
);

  reg r_reg;
  reg data_out_reg;
  reg [1:0] op_out_reg;
  reg pivot_out_reg;

 
  always @(posedge clk) begin
    if(~rst_b) begin
      r <= 0;
    end
    else begin
      r <= r_reg;
    end
  end


  // 00 --- pass  01 --- swap  10 --- add  11 --- nop
  always @(*) begin
    // init phase
    if (start_in) begin
      r_reg = data_in;
      data_out_reg = 1'b0; //default behavior
      op_out_reg = 2'b01; //default behavior
      pivot_out_reg = pivot_in ? 1'b1 : 
                      data_in ? 1'b1: 1'b0;
    end
    //normal phase
    else  begin
      if ({r, pivot_in} == 2'b10) begin //pivot node, work as active node
        r_reg = r;
        data_out_reg = data_in ? data_in ^ r : data_in;
        op_out_reg = data_in ? 2'b10 : 2'b00;
        pivot_out_reg = 1'b1;
      end
      else begin //non-pivot node
        //if pivot still not found, perform SWAP and try to find the pivot
        if ({r, pivot_in} == 2'b00) begin
          r_reg = data_in;
          data_out_reg = r;
          op_out_reg = 2'b01;
          pivot_out_reg = data_in;
        end
        //if pivot found, performs as a passive node instructed by op_in
        else begin
          r_reg = op_in == 2'b01 ? data_in : r;
          data_out_reg = op_in == 2'b00 ? data_in :
                         op_in == 2'b01 ? r :
                         op_in == 2'b10 ? data_in ^ r : 1'bx;
          op_out_reg = op_in;
          pivot_out_reg = pivot_in;
        end
      end
    end
  end

  assign start_out  = start_in;
  assign data_out = data_out_reg;
  assign op_out = op_out_reg;
  assign pivot_out = pivot_out_reg;
 
endmodule

