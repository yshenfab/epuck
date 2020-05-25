import matplotlib.pyplot as plt
import math

fin = open("./epuck_form.txt")

dest_range = 10.0
dest_bearing_r = 0.785
dest_bearing_l = 5.495

dist_r = [18.818575, 18.259508, 16.501406, 14.387749, 11.507075, 11.079288, 11.938164, 11.811373, 11.697261, 11.001069, 11.735298, 11.722619, 11.722619, 11.722619, 11.722619, 11.722619, 11.722619, 11.722619, 11.722619]
angle_r = []
for i in range(len(dist_r)):
    angle_r.append(0.872665)
v_r_l = [-10159, -15737, 32256, 11165, -17579, -21847, -13277, -14542, -15681, -22628, -15301, -15428, -15428, -15428, -15428, -15428, -15428, -15428, -15428]
v_r_r = [-10064, -15646, 32339, 11237, -17521, -21792, -13218, -14483, -15623, -22573, -15243, -15369, -15369, -15369, -15369, -15369, -15369, -15369, -15369]

dist_l = [16.223558, 16.497082, 15.394510, 12.443394, 11.798694, 11.671903, 11.798694, 11.570471, 12.476285, 11.583150, 11.452999, 10.568402, 10.776348, 10.629562, 11.452999, 11.418236, 11.418236, 11.418236, 11.392162]

angle_l = []
for i in range(len(dist_l)):
    angle_l.append(5.410521)
angle_l[0] = 5.986479
angle_l[1] = 5.986479
v_l_l = [-22555, -18493, 21288, -8174, -14610, -15876, -14610, -16888, -7845, -16762, -18061, -26892, -24816, -26282, -18061, -18408, -18408, -18408, -18668]
v_l_r = [-22585, -18524, 21211, -8236, -14669, -15934, -14669,-16946, -7907, -16819, -18118, -26945, -24870, -26335, -18118, -18465, -18465, -18465, -18725]


ratio = 7763.66
length = 0.053
velo_right = []
w_right = []
velo_left = []
w_left = []
for i in range(len(dist_r)):
    v = (v_r_l[i] + v_r_r[i])/2/ratio
    velo_right.append(v)
    w = (v_r_l[i] - v_r_r[i])/length/ratio
    w_right.append(w)

for i in range(len(dist_l)):
    v = (v_l_l[i] + v_l_r[i])/2/ratio
    w = (v_l_r[i] - v_l_l[i])/length/ratio
    velo_left.append(v)
    w_left.append(w)


timestep_r = []
dist_error_r = []
angle_error_r = []
dist_error_l = []
angle_error_l = []

for i in range(len(dist_r)):
    derr = (dist_r[i] - dest_range)
    dist_error_r.append(derr)
    derr = dist_l[i] - dest_range
    dist_error_l.append(derr)
    aerr = (angle_r[i] - dest_bearing_r)
    angle_error_r.append(aerr)
    aerr = (angle_l[i] - dest_bearing_r)
    angle_error_l.append(aerr)
    timestep_r.append(i)

fin.close()
# plot data
plt.xlabel('Timesteps', fontsize=14)

# fig 1
plt.ylabel('Distance Error (cm)', fontsize=14)    
plt.plot(timestep_r, dist_error_r, label='right follower')
plt.plot(timestep_r, dist_error_l, label='left follower')

# fig 2
# plt.ylabel('Angle Error (rad)', fontsize=14)    
# plt.plot(timestep_r, angle_error_r, label='right follower')
# plt.plot(timestep_r, angle_error_l, label='left follower')
    
# fig 3
# plt.ylabel('Linear Velocity (m/s)', fontsize=14)    
# plt.plot(timestep_r, velo_right, label='right follower')
# plt.plot(timestep_r, velo_left, label='left follower')

# fig 4
# plt.ylabel('Angular Velocity (rad/s)', fontsize=14)    
# plt.plot(timestep_r, w_right, label='right follower')
# plt.plot(timestep_r, w_left, label='left follower')


plt.legend()            
plt.show()
