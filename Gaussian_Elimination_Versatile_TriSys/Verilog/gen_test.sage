#example sage gen_test.sage 7 127
import sys


k = int(sys.argv[1])
l = int(sys.argv[2])


MS = MatrixSpace(GF(2), k, l)

M = MS.random_element()
#M_rref = M.echelon_form()

#write data_in file - row wise
with open("data.in", "w") as f:
  for r in M.rows():
    for i in r:
      f.write("{0}".format(i))
    f.write("\n")

f.close()

print ("Input matrix:")
print (M)
print ("")
