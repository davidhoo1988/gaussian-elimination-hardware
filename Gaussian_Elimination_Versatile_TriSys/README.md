## Gaussian Hardware Generator
Different from Gaussian_Elimination_Versatile whhich triangualrize only, Gaussian_Elimination_Versatile_TriSys first triangularizes and then systemizes a matrix s.t. the final output must be in reduced row echelon form.

### The project is conducted in Xilinx Vivado 2018.2
The project top file is Gaussian_Elimination_Versatile_TriSys.xpr


### Verilog source codes
The verilog source code files can be found under the folder ./Verilog/

Test data generation and verification are automated by ./Verilog/gen_test.sage and ./Verilog/verify_test.sage.

The systolic arrary (./Verilog/comb_SA.v) for Gaussian elimination is automated by ./Verilog/gen_comb_SA.py where users can configure the size of input matrix (say, a k \times l matrix)

The functionality of a single node in the systolic array is described in ./Verilog/node.v
