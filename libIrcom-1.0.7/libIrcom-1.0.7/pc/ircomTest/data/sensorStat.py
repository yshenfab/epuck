import re

fin = open("./data1.txt")
fout = open("sensor_stat.txt",'w')

distance = []
direction = []
sensorId = []
num_fail = 0

find_re = re.compile('successful :.+?distance=(.+?) \t direction=(.+?) \t receivingSensor=(.+?)', re.DOTALL)

for line in fin:
    line = line.strip()
    if 'successful' in line:
        for x in find_re.findall(line):
            distance.append(x[0])
            direction.append(x[1])
            sensorId.append(x[2])
    elif 'failed' in line: # transmission error
        num_fail += 1

# stat for sensor 0-7
s0 = []
s1 = []
s2 = []
s3 = []
s4 = []
s5 = []
s6 = []
s7 = []

for i in range(len(sensorId)):
    if sensorId[i] == str(0):
        s0.append(float(distance[i]))
    elif sensorId[i] == str(1):
        s1.append(float(distance[i]))
    elif sensorId[i] == str(2):
        s2.append(float(distance[i]))
    elif sensorId[i] == str(3):
        s3.append(float(distance[i]))
    elif sensorId[i] == str(4):
        s4.append(float(distance[i]))
    elif sensorId[i] == str(5):
        s5.append(float(distance[i]))
    elif sensorId[i] == str(6):
        s6.append(float(distance[i]))
    elif sensorId[i] == str(7):
        s7.append(float(distance[i]))

# print(s0)
# print(s1)
# print(s2)
# print(s3)
# print(s4)
# print(s5)
# print(s6)
# print(s7)
sensor_min = []
sensor_max = []
sensor_avg = []
sensor_min.append(min(s0))
sensor_min.append(min(s1))
sensor_min.append(min(s2))
sensor_min.append(min(s3))
sensor_min.append(min(s4))
sensor_min.append(min(s5))
sensor_min.append(min(s6))
sensor_min.append(min(s7))

sensor_max.append(max(s0))
sensor_max.append(max(s1))
sensor_max.append(max(s2))
sensor_max.append(max(s3))
sensor_max.append(max(s4))
sensor_max.append(max(s5))
sensor_max.append(max(s6))
sensor_max.append(max(s7))

sensor_avg.append(sum(s0) / len(s0))
sensor_avg.append(sum(s1) / len(s1))
sensor_avg.append(sum(s2) / len(s2))
sensor_avg.append(sum(s3) / len(s3))
sensor_avg.append(sum(s4) / len(s4))
sensor_avg.append(sum(s5) / len(s5))
sensor_avg.append(sum(s6) / len(s6))
sensor_avg.append(sum(s7) / len(s7))

# write data for sensor 0,1,2,5,6,7
for i in range(8):
    if i != 3 and i != 4:
        tmp = str(sensor_min[i]) + '\t' + str(sensor_max[i]) + '\t' + str(sensor_avg[i]) + '\n'
        fout.write(tmp)

print("failed: " + str(num_fail) + "/200 = " + str(num_fail/200))
        
fin.close()
fout.close()
print("Done!")
    
