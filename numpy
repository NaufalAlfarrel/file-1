# ---------------------------------------------------------------------------------------------
import numpy as np
A = np.array([[4,3,-5],[-2,-4,5],[8,8,0]])
y = np.array([2,5,-3])

x = np.linalg.solve(A,y)
print(x)
""" outputnya [ 2.20833333 -2.58333333 -0.18333333] """
# ---------------------------------------------------------------------------------------------

# Matrix Inversion approach
# ---------------------------------------------------------------------------------------------
A_inv = np.linalg.inv(A)
x = np.dot(A_inv, y)
print(x)
""" output [ 2.20833333 -2.58333333 -0.18333333] """
# ---------------------------------------------------------------------------------------------
