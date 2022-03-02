module comb_SA #(parameter DAT_W = 4)(
  input wire clk,
  input wire rst_b,
  input wire mode,
  input wire start,
  input wire [DAT_W-1:0] data,
  output reg finish,
  output wire full_rank,
  output wire [DAT_W-1:0] result
);

  reg [3 : 1] start_tmp;
  reg [3 : 1] start_row;

  always @(posedge clk) begin
    start_tmp[1] <= start;
    start_row[1] <= start_tmp[1];
    start_tmp[2] <= start_row[1];
    start_row[2] <= start_tmp[2];
    start_tmp[3] <= start_row[2];
    start_row[3] <= start_tmp[3];
  end

 //input skewed form
 wire data_col0;
 reg [1:1] data_col1;
 reg [2:1] data_col2;
 reg [3:1] data_col3;

 assign data_col0 = data[3];

  always @(posedge clk) begin
   data_col1[1] <= data[2];

   data_col2[1] <= data[1];
   data_col2[2] <= data_col2[1];

   data_col3[1] <= data[0];
   data_col3[2] <= data_col3[1];
   data_col3[3] <= data_col3[2];
 end

 wire [DAT_W-1:0] data_in;
 assign data_in = {data_col0, data_col1[1], data_col2[2], data_col3[3]};

  /////////////////////////////////////
  // row 0
  // row 0, col 0

     wire start_in_0_0;
     wire start_out_0_0;

     wire [1:0] op_in_0_0;
     wire [1:0] op_out_0_0;

     wire r_0_0;

     wire data_in_0_0;
     wire data_out_0_0;

     wire pivot_in_0_0;
     wire pivot_out_0_0;

     assign data_in_0_0 = data_in[DAT_W-1];
     assign op_in_0_0 = mode & start ? 2'b01 : 2'b00;
     assign pivot_in_0_0 = 0;

     assign start_in_0_0 = start;

     processor_AB AB_0_0 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_0_0),
       .start_in   (start_in_0_0),
       .op_in      (op_in_0_0),
       .pivot_in   (pivot_in_0_0),
       .start_out  (start_out_0_0),
       .data_out   (data_out_0_0),
       .op_out     (op_out_0_0),
       .pivot_out  (pivot_out_0_0),
       .r          (r_0_0)
     );

  // row 0, col 1

     reg start_in_0_1;
     wire start_out_0_1;

     reg [1:0] op_in_0_1;
     wire [1:0] op_out_0_1;

     wire r_0_1;

     wire data_in_0_1;
     wire data_out_0_1;

     reg pivot_in_0_1;
     wire pivot_out_0_1;

     assign data_in_0_1 = data_in[DAT_W-2];

     always @(posedge clk) begin
        op_in_0_1 <= op_out_0_0;
        pivot_in_0_1 <= pivot_out_0_0;
        start_in_0_1 <= start_out_0_0;
     end
  
     processor_AB AB_0_1 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_0_1),
       .start_in   (start_in_0_1),
       .op_in      (op_in_0_1),
       .pivot_in   (pivot_in_0_1),
       .start_out  (start_out_0_1),
       .data_out   (data_out_0_1),
       .op_out     (op_out_0_1),
       .pivot_out  (pivot_out_0_1),
       .r          (r_0_1)
     );

  // row 0, col 2

     reg start_in_0_2;
     wire start_out_0_2;

     reg [1:0] op_in_0_2;
     wire [1:0] op_out_0_2;

     wire r_0_2;

     wire data_in_0_2;
     wire data_out_0_2;

     reg pivot_in_0_2;
     wire pivot_out_0_2;

     assign data_in_0_2 = data_in[DAT_W-3];

     always @(posedge clk) begin
        op_in_0_2 <= op_out_0_1;
        pivot_in_0_2 <= pivot_out_0_1;
        start_in_0_2 <= start_out_0_1;
     end
  
     processor_AB AB_0_2 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_0_2),
       .start_in   (start_in_0_2),
       .op_in      (op_in_0_2),
       .pivot_in   (pivot_in_0_2),
       .start_out  (start_out_0_2),
       .data_out   (data_out_0_2),
       .op_out     (op_out_0_2),
       .pivot_out  (pivot_out_0_2),
       .r          (r_0_2)
     );

  // row 0, col 3

     reg start_in_0_3;
     wire start_out_0_3;

     reg [1:0] op_in_0_3;
     wire [1:0] op_out_0_3;

     wire r_0_3;

     wire data_in_0_3;
     wire data_out_0_3;

     reg pivot_in_0_3;
     wire pivot_out_0_3;

     assign data_in_0_3 = data_in[DAT_W-4];

     always @(posedge clk) begin
        op_in_0_3 <= op_out_0_2;
        pivot_in_0_3 <= pivot_out_0_2;
        start_in_0_3 <= start_out_0_2;
     end
  
     processor_AB AB_0_3 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_0_3),
       .start_in   (start_in_0_3),
       .op_in      (op_in_0_3),
       .pivot_in   (pivot_in_0_3),
       .start_out  (start_out_0_3),
       .data_out   (data_out_0_3),
       .op_out     (op_out_0_3),
       .pivot_out  (pivot_out_0_3),
       .r          (r_0_3)
     );

  /////////////////////////////////////
  // row 1
  // row 1, col 0

     wire start_in_1_0;
     wire start_out_1_0;

     wire [1:0] op_in_1_0;
     wire [1:0] op_out_1_0;

     wire r_1_0;

     reg data_in_1_0;
     wire data_out_1_0;

     wire pivot_in_1_0;
     wire pivout_out_1_0;

     assign op_in_1_0 = mode & start ? 2'b01 : 2'b00;
     assign pivot_in_1_0 = 0;

     assign start_in_1_0 = start_row[1]; 

     always @(posedge clk) begin
         data_in_1_0 <= data_out_0_0;
     end

     processor_AB AB_1_0 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_1_0),
       .start_in   (start_in_1_0),
       .op_in      (op_in_1_0),
       .pivot_in   (pivot_in_1_0),
       .start_out  (start_out_1_0),
       .data_out   (data_out_1_0),
       .op_out     (op_out_1_0),
       .pivot_out  (pivot_out_1_0),
       .r          (r_1_0)
     );

  // row 1, col 1

     reg start_in_1_1;
     wire start_out_1_1;

     reg [1:0] op_in_1_1;
     wire [1:0] op_out_1_1;

     wire r_1_1;

     reg data_in_1_1;
     wire data_out_1_1;

     reg pivot_in_1_1;
     wire pivot_out_1_1;

     always @(posedge clk) begin
         op_in_1_1 <= op_out_1_0;
         pivot_in_1_1 <= pivot_out_1_0;
         start_in_1_1 <= start_out_1_0;
     end

     always @(posedge clk) begin
         data_in_1_1 <= data_out_0_1;
     end
  
     processor_AB AB_1_1 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_1_1),
       .start_in   (start_in_1_1),
       .op_in      (op_in_1_1),
       .pivot_in   (pivot_in_1_1),
       .start_out  (start_out_1_1),
       .data_out   (data_out_1_1),
       .op_out     (op_out_1_1),
       .pivot_out  (pivot_out_1_1),
       .r          (r_1_1)
     );

  // row 1, col 2

     reg start_in_1_2;
     wire start_out_1_2;

     reg [1:0] op_in_1_2;
     wire [1:0] op_out_1_2;

     wire r_1_2;

     reg data_in_1_2;
     wire data_out_1_2;

     reg pivot_in_1_2;
     wire pivot_out_1_2;

     always @(posedge clk) begin
         op_in_1_2 <= op_out_1_1;
         pivot_in_1_2 <= pivot_out_1_1;
         start_in_1_2 <= start_out_1_1;
     end

     always @(posedge clk) begin
         data_in_1_2 <= data_out_0_2;
     end
  
     processor_AB AB_1_2 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_1_2),
       .start_in   (start_in_1_2),
       .op_in      (op_in_1_2),
       .pivot_in   (pivot_in_1_2),
       .start_out  (start_out_1_2),
       .data_out   (data_out_1_2),
       .op_out     (op_out_1_2),
       .pivot_out  (pivot_out_1_2),
       .r          (r_1_2)
     );

  // row 1, col 3

     reg start_in_1_3;
     wire start_out_1_3;

     reg [1:0] op_in_1_3;
     wire [1:0] op_out_1_3;

     wire r_1_3;

     reg data_in_1_3;
     wire data_out_1_3;

     reg pivot_in_1_3;
     wire pivot_out_1_3;

     always @(posedge clk) begin
         op_in_1_3 <= op_out_1_2;
         pivot_in_1_3 <= pivot_out_1_2;
         start_in_1_3 <= start_out_1_2;
     end

     always @(posedge clk) begin
         data_in_1_3 <= data_out_0_3;
     end
  
     processor_AB AB_1_3 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_1_3),
       .start_in   (start_in_1_3),
       .op_in      (op_in_1_3),
       .pivot_in   (pivot_in_1_3),
       .start_out  (start_out_1_3),
       .data_out   (data_out_1_3),
       .op_out     (op_out_1_3),
       .pivot_out  (pivot_out_1_3),
       .r          (r_1_3)
     );

  /////////////////////////////////////
  // row 2
  // row 2, col 0

     wire start_in_2_0;
     wire start_out_2_0;

     wire [1:0] op_in_2_0;
     wire [1:0] op_out_2_0;

     wire r_2_0;

     reg data_in_2_0;
     wire data_out_2_0;

     wire pivot_in_2_0;
     wire pivout_out_2_0;

     assign op_in_2_0 = mode & start ? 2'b01 : 2'b00;
     assign pivot_in_2_0 = 0;

     assign start_in_2_0 = start_row[2]; 

     always @(posedge clk) begin
         data_in_2_0 <= data_out_1_0;
     end

     processor_AB AB_2_0 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_2_0),
       .start_in   (start_in_2_0),
       .op_in      (op_in_2_0),
       .pivot_in   (pivot_in_2_0),
       .start_out  (start_out_2_0),
       .data_out   (data_out_2_0),
       .op_out     (op_out_2_0),
       .pivot_out  (pivot_out_2_0),
       .r          (r_2_0)
     );

  // row 2, col 1

     reg start_in_2_1;
     wire start_out_2_1;

     reg [1:0] op_in_2_1;
     wire [1:0] op_out_2_1;

     wire r_2_1;

     reg data_in_2_1;
     wire data_out_2_1;

     reg pivot_in_2_1;
     wire pivot_out_2_1;

     always @(posedge clk) begin
         op_in_2_1 <= op_out_2_0;
         pivot_in_2_1 <= pivot_out_2_0;
         start_in_2_1 <= start_out_2_0;
     end

     always @(posedge clk) begin
         data_in_2_1 <= data_out_1_1;
     end
  
     processor_AB AB_2_1 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_2_1),
       .start_in   (start_in_2_1),
       .op_in      (op_in_2_1),
       .pivot_in   (pivot_in_2_1),
       .start_out  (start_out_2_1),
       .data_out   (data_out_2_1),
       .op_out     (op_out_2_1),
       .pivot_out  (pivot_out_2_1),
       .r          (r_2_1)
     );

  // row 2, col 2

     reg start_in_2_2;
     wire start_out_2_2;

     reg [1:0] op_in_2_2;
     wire [1:0] op_out_2_2;

     wire r_2_2;

     reg data_in_2_2;
     wire data_out_2_2;

     reg pivot_in_2_2;
     wire pivot_out_2_2;

     always @(posedge clk) begin
         op_in_2_2 <= op_out_2_1;
         pivot_in_2_2 <= pivot_out_2_1;
         start_in_2_2 <= start_out_2_1;
     end

     always @(posedge clk) begin
         data_in_2_2 <= data_out_1_2;
     end
  
     processor_AB AB_2_2 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_2_2),
       .start_in   (start_in_2_2),
       .op_in      (op_in_2_2),
       .pivot_in   (pivot_in_2_2),
       .start_out  (start_out_2_2),
       .data_out   (data_out_2_2),
       .op_out     (op_out_2_2),
       .pivot_out  (pivot_out_2_2),
       .r          (r_2_2)
     );

  // row 2, col 3

     reg start_in_2_3;
     wire start_out_2_3;

     reg [1:0] op_in_2_3;
     wire [1:0] op_out_2_3;

     wire r_2_3;

     reg data_in_2_3;
     wire data_out_2_3;

     reg pivot_in_2_3;
     wire pivot_out_2_3;

     always @(posedge clk) begin
         op_in_2_3 <= op_out_2_2;
         pivot_in_2_3 <= pivot_out_2_2;
         start_in_2_3 <= start_out_2_2;
     end

     always @(posedge clk) begin
         data_in_2_3 <= data_out_1_3;
     end
  
     processor_AB AB_2_3 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_2_3),
       .start_in   (start_in_2_3),
       .op_in      (op_in_2_3),
       .pivot_in   (pivot_in_2_3),
       .start_out  (start_out_2_3),
       .data_out   (data_out_2_3),
       .op_out     (op_out_2_3),
       .pivot_out  (pivot_out_2_3),
       .r          (r_2_3)
     );

  /////////////////////////////////////
  // row 3
  // row 3, col 0

     wire start_in_3_0;
     wire start_out_3_0;

     wire [1:0] op_in_3_0;
     wire [1:0] op_out_3_0;

     wire r_3_0;

     reg data_in_3_0;
     wire data_out_3_0;

     wire pivot_in_3_0;
     wire pivout_out_3_0;

     assign op_in_3_0 = mode & start ? 2'b01 : 2'b00;
     assign pivot_in_3_0 = 0;

     assign start_in_3_0 = start_row[3]; 

     always @(posedge clk) begin
         data_in_3_0 <= data_out_2_0;
     end

     processor_AB AB_3_0 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_3_0),
       .start_in   (start_in_3_0),
       .op_in      (op_in_3_0),
       .pivot_in   (pivot_in_3_0),
       .start_out  (start_out_3_0),
       .data_out   (data_out_3_0),
       .op_out     (op_out_3_0),
       .pivot_out  (pivot_out_3_0),
       .r          (r_3_0)
     );

  // row 3, col 1

     reg start_in_3_1;
     wire start_out_3_1;

     reg [1:0] op_in_3_1;
     wire [1:0] op_out_3_1;

     wire r_3_1;

     reg data_in_3_1;
     wire data_out_3_1;

     reg pivot_in_3_1;
     wire pivot_out_3_1;

     always @(posedge clk) begin
         op_in_3_1 <= op_out_3_0;
         pivot_in_3_1 <= pivot_out_3_0;
         start_in_3_1 <= start_out_3_0;
     end

     always @(posedge clk) begin
         data_in_3_1 <= data_out_2_1;
     end
  
     processor_AB AB_3_1 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_3_1),
       .start_in   (start_in_3_1),
       .op_in      (op_in_3_1),
       .pivot_in   (pivot_in_3_1),
       .start_out  (start_out_3_1),
       .data_out   (data_out_3_1),
       .op_out     (op_out_3_1),
       .pivot_out  (pivot_out_3_1),
       .r          (r_3_1)
     );

  // row 3, col 2

     reg start_in_3_2;
     wire start_out_3_2;

     reg [1:0] op_in_3_2;
     wire [1:0] op_out_3_2;

     wire r_3_2;

     reg data_in_3_2;
     wire data_out_3_2;

     reg pivot_in_3_2;
     wire pivot_out_3_2;

     always @(posedge clk) begin
         op_in_3_2 <= op_out_3_1;
         pivot_in_3_2 <= pivot_out_3_1;
         start_in_3_2 <= start_out_3_1;
     end

     always @(posedge clk) begin
         data_in_3_2 <= data_out_2_2;
     end
  
     processor_AB AB_3_2 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_3_2),
       .start_in   (start_in_3_2),
       .op_in      (op_in_3_2),
       .pivot_in   (pivot_in_3_2),
       .start_out  (start_out_3_2),
       .data_out   (data_out_3_2),
       .op_out     (op_out_3_2),
       .pivot_out  (pivot_out_3_2),
       .r          (r_3_2)
     );

  // row 3, col 3

     reg start_in_3_3;
     wire start_out_3_3;

     reg [1:0] op_in_3_3;
     wire [1:0] op_out_3_3;

     wire r_3_3;

     reg data_in_3_3;
     wire data_out_3_3;

     reg pivot_in_3_3;
     wire pivot_out_3_3;

     always @(posedge clk) begin
         op_in_3_3 <= op_out_3_2;
         pivot_in_3_3 <= pivot_out_3_2;
         start_in_3_3 <= start_out_3_2;
     end

     always @(posedge clk) begin
         data_in_3_3 <= data_out_2_3;
     end
  
     processor_AB AB_3_3 (
       .clk        (clk),
       .rst_b      (rst_b),
       .mode       (mode),
       .data_in    (data_in_3_3),
       .start_in   (start_in_3_3),
       .op_in      (op_in_3_3),
       .pivot_in   (pivot_in_3_3),
       .start_out  (start_out_3_3),
       .data_out   (data_out_3_3),
       .op_out     (op_out_3_3),
       .pivot_out  (pivot_out_3_3),
       .r          (r_3_3)
     );

  /////////////////////////////////////
  // outputs 

  wire [3:0] pivot_found;
  wire [3:0] row0, row1, row2, row3;

  assign pivot_found = {r_0_0 | r_0_1 | r_0_2 | r_0_3, r_1_0 | r_1_1 | r_1_2 | r_1_3, r_2_0 | r_2_1 | r_2_2 | r_2_3, r_3_0 | r_3_1 | r_3_2 | r_3_3};
  assign full_rank =  pivot_found == 4'b1111 ? 1'b1 : 1'b0;

  assign row0 = {r_0_0, r_0_1, r_0_2, r_0_3};
  assign row1 = {r_1_0, r_1_1, r_1_2, r_1_3};
  assign row2 = {r_2_0, r_2_1, r_2_2, r_2_3};
  assign row3 = {r_3_0, r_3_1, r_3_2, r_3_3};

  always @(posedge clk) begin
      finish <= ~mode ? start_out_3_3 : start_out_0_2;
  end

   //output regular form from skewed form via pipelining
   reg [3:1] result_col0;
   reg [2:1] result_col1;
   reg [1:1] result_col2;
   wire result_col3;

  assign result_col3 = data_out_3_3;

  always @(posedge clk) begin
   result_col0[1] <= data_out_3_0;
   result_col0[2] <= result_col0[1];
   result_col0[3] <= result_col0[2];

   result_col1[1] <= data_out_3_1;
   result_col1[2] <= result_col1[1];  

   result_col2[1] <= data_out_3_2;
  end

  assign result = {result_col0[3], result_col1[2], result_col2[1], result_col3};

endmodule

