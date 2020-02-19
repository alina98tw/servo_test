#!/usr/bin/env python

import rospy, time
from servo_test_pack import two_servos
import RPi.GPIO as GPIO

def servo_position():
   pub=rospy.Publisher('move_servo', two_servos, queue_size=10)
   rospy.init_node('servo_talker', anonymous=True)
   rate =  rospy.Rate(5)
   while not rospy.is_shutdown():
     rospy.loginfo("move servo 1 to position 0: 1.8")
     msg_send=two_servos()
     msg_send.servo_1=1.8
     msg_send.servo_2=2.5
     pub.publish(msg_send)
     time.sleep(5)
     rospy.loginfo("move to position 90: 5.3")
     pub.publish(5.3)
     time.sleep(5)
     rospy.loginfo("move to position 180: 8.5")
     pub.publish(8.5)
     time.sleep(10)

if __name__=='__main__':
   try:
     servo_position()
   except rospy.ROSInterruptException:
     pass
