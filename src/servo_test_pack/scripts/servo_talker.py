#!/usr/bin/env python

import rospy, time
from std_msgs.msg import Float32
import RPi.GPIO as GPIO

def servo_position():
   pub=rospy.Publisher('move_servo', Float32, queue_size=10)
   rospy.init_node('servo_talker', anonymous=True)
   rate =  rospy.Rate(5)
   while not rospy.is_shutdown():
     rospy.loginfo("move to position 0: 1.8")
     pub.publish(1.8)
     time.sleep(5)
     rospy.loginfo("move to position 90: 6.0")
     pub.publish(6.0)
     time.sleep(5)
     rospy.loginfo("move to position 180: 10.0")
     pub.publish(10.5)
     time.sleep(10)



if __name__=='__main__':
   try:
     servo_position()
   except rospy.ROSInterruptException:
     pass
