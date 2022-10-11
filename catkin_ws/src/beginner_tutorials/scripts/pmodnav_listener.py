#!/usr/bin/env python
import rospy
from beginner_tutorials.msg import PmodNav

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "   %s. The deviceID is %d. The accel data are: accel_x = %s, accel_y = %s, accel_z = %s. The gyro data are: gyro_x = %s, gyro_y = %s, gyro_z = %s.   %s. The deviceID is %d. The mag data are: mag_x = %s, mag_y = %s, mag_z = %s.   %s. The deviceID is %d. The alt data is %s. The temp data is %s.",data.name_accel_gyro,data.deviceID_accel_gyro,data.accel_x,data.accel_y,data.accel_z,data.gyro_x,data.gyro_y,data.gyro_z,data.name_mag,data.deviceID_mag,data.mag_x,data.mag_y,data.mag_z,data.name_alt_temp,data.deviceID_alt_temp,data.alt,data.temp)

def listener():
    rospy.init_node('pmodnav_listener', anonymous=True)
    rospy.Subscriber('pmodnav_chatter', PmodNav, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    listener()
