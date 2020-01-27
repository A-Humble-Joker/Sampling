import random, math
import matplotlib.pyplot as plt
z = []

size = int(1e5)
for i in range(size):
	z.append(random.random())

lamb = 1
y = []
for i in range(len(z)):
	y.append(-math.pow(lamb, -1) * math.log(z[i]))
	
plt.hist(y, 64, normed = 1)
plt.show()
