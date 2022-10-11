#!/usr/bin/env python
import rospy
from beginner_tutorials.msg import PmodNav
from pynq.overlays.base import BaseOverlay
from pynq.lib import Pmod_NAV


def talker():
    base = BaseOverlay("base.bit")   # <<<<<<<<
    pmod_nav = Pmod_NAV(base.PMODA)  # <<<<<<<<
    pub = rospy.Publisher('pmodnav_chatter',PmodNav,queue_size=10)
    rospy.init_node('pmodnav_talker', anonymous=True)
    rate = rospy.Rate(10) #10hz

    while not rospy.is_shutdown():
        msg = PmodNav()
        msg.name_accel_gyro = "ACCEL AND GYRO DATA"
        msg.deviceID_accel_gyro = pmod_nav.get_ag_id()
        accel = pmod_nav.read_accel()
        msg.accel_x = accel[0]
        msg.accel_y = accel[1]
        msg.accel_z = accel[2]
        gyro = pmod_nav.read_gyro()
        msg.gyro_x = gyro[0]
        msg.gyro_y = gyro[1]
        msg.gyro_z = gyro[2]
        msg.name_mag = "MAG DATA"
        msg.deviceID_mag = pmod_nav.get_mag_id()
        mag = pmod_nav.read_mag()
        msg.mag_x = mag[0]
        msg.mag_y = mag[1]
        msg.mag_z = mag[2]
        msg.name_alt_temp = "ALT AND TEMP DATA"
        msg.deviceID_alt_temp = pmod_nav.get_alt_id()
        msg.alt = pmod_nav.read_alt()
        msg.temp = pmod_nav.read_temp()
        rospy.loginfo(msg)
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass

