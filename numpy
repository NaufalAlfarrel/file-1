# ---------------------------------------------------------------------------------------------
import numpy as np
x = [[8, 3, -3],[-2, -8, 5], [3, 5, 10]]
diag = np.diag(np.abs(x))

off_diag = np.sum(np.abs(x), axis = 1) - diag

if np.all(diag > off_diag):
    print('matrix is diagonally dominant')
else:
    print('NOT diagonally dominant')
""" outputnya matrix is diagonally dominant """
# ---------------------------------------------------------------------------------------------
x1 = 0
x2 = 0
x3 = 0
epsilon = 0.01
converged = False

x_old = np.array([x1, x2, x3])
# ---------------------------------------------------------------------------------------------
print('Interation result')
print('k,    x1,    x2,    ,x3')
for k in range (1, 50):
  x1 = (14-3*x2+3*x3) /8
  x2 = (5+2*x1-5*x3) / (-8)
  x3 = (-8-3*x1-5*x2)/(10)
  x = np.array ([x1, x2, x3])

  #check if it is smaller than threshold
  dx = np.sqrt(np.dot(x-x_old, x-x_old))
  print("%d, %.4f, %.4f, %.4f"% (k, x1, x2, x3))
  if dx < epsilon:
    converged = True
    print('Converged!')
    break

  #assign the latest y value to the old value
  x_old = x

if not converged:
    print ('Not converge, increase the # of iterations')
""" outputnya
    Interation result
    k,    x1,    x2,    ,x3
    1, 1.7500, -1.0625, -0.7937
    2, 1.8508, -1.5838, -0.5633
    3, 2.1327, -1.5103, -0.6847
    4, 2.0596, -1.5678, -0.6340
    5, 2.1002, -1.5463, -0.6569
    6, 2.0835, -1.5565, -0.6468
    7, 2.0911, -1.5520, -0.6513
    Converged! """
# ---------------------------------------------------------------------------------------------
