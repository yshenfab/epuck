import re
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt
import numpy as np

fin = open("./large.txt")

# fout1 = open("distance.txt", 'w')
# fout2 = open("direction.txt", 'w')
# fout3 = open("sensorId.txt", 'w')

distance = []
direction = []
sensorId = []

find_re = re.compile('successful :.+?distance=(.+?) \t direction=(.+?) \t receivingSensor=(.+?)', re.DOTALL)

for line in fin:
    line = line.strip()
    if 'successful' in line:
        for x in find_re.findall(line):
            if x[2] == str(0) or x[2] == str(7): # assume sensor 0 and 7 are not in visual range
                distance.append(-2)
                direction.append(-2)
                sensorId.append(-2)
            else: # regular detection
                distance.append(x[0])
                direction.append(x[1])
                sensorId.append(x[2])
    elif 'failed' in line: # transmission error
        distance.append(-1)
        direction.append(-1)
        sensorId.append(-1)

fin.close()

# for x in distance:
#     fout1.write(str(x) + '\n')

# for x in direction:
#     fout2.write(str(x) + '\n')

# for x in sensorId:
#     fout3.write(str(x) + '\n')

# fout1.close()
# fout2.close()
# fout3.close()

# plot data
fig = plt.figure()
ax = plt.axes(projection='3d')
# ax = fig.add_subplot(111, projection='3d')

i=0
for c, z in zip(['r', 'g', 'b', 'y'], sensorId):
    xs = distance[i]
    ys = direction[i]

    cs = [c] * len(xs)
    cs[0] = 'c'
    ax.bar(xs, ys, zs=z, zdir='y', color=cs, alpha=0.8)
    i+=1

plt.show()
print("Done!")
    
