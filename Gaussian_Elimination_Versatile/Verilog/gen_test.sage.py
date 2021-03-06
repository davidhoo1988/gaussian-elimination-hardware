
# This file was *autogenerated* from the file gen_test.sage
from sage.all_cmdline import *   # import sage library

_sage_const_2 = Integer(2); _sage_const_1 = Integer(1)#example sage gen_test.sage 7 127
import sys


k = int(sys.argv[_sage_const_1 ])
l = int(sys.argv[_sage_const_2 ])


MS = MatrixSpace(GF(_sage_const_2 ), k, l)

M = MS.random_element()
#M_rref = M.echelon_form()

#write data_in file - row wise
with open("data.in", "w") as f:
  for r in M.rows():
    for i in r:
      f.write("{0}".format(i))
    f.write("\n")

f.close()

print "Input matrix:"
print M
print ""

