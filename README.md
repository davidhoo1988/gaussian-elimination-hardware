## Generic Gaussian Hardware Generator
This project implements a Gaussian elimination hardware for cryptographic purposes.
The distingushing feature making this work differ from other works in the literature is that this work not only
consider eliminating a non-singular matrix but also a singular matrix.


The Gaussian elimination haredware is divided into two categories, 
'Gaussian_Elimination_Versatile' performs the Gaussian elimination to triangularize the input matrix,
and 'Gaussian_Elimination_Versatile_TriSys' performs the Gaussian-Jordan elimination to first triangularize
and then systemize the input matrix.



### Gaussian_Elimination_Versatile
This folder includes the source codes for Gaussian-elimination hardware.
The source codes are configured by the pyhon file './Verilog/gen_comb_SA.py' to adapt to distinct matrix size.
The hardware testing and verification are automated by './Verilog/gen_test.sage' and './Verilog/verify_test.sage' under the directory 'Gaussian_Elimination_Versatile'.

See the README file under the directory 'Gaussian_Elimination_Versatile' for more insturctions. 



### Gaussian_Elimination_Versatile_TriSys
This folder includes the source codes for Gaussian-elimination hardware.
The source codes are configured by the pyhon file './Verilog/gen_comb_SA.py' to adapt to distinct matrix size.
The hardware testing and verification are automated by './Verilog/gen_test.sage' and './Verilog/verify_test.sage' under the directory 'Gaussian_Elimination_Versatile_TriSys'.

See the README file under the directory 'Gaussian_Elimination_Versatile_TriSys' for more insturctions. 
