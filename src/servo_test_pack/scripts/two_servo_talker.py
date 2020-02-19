#!/usr/bin/env python

import rospy, time
from servo_test_pack.msg import two_servos
import RPi.GPIO as GPIO

def servo_position():
   pub=rospy.Publisher('move_servo', two_servos, queue_size=10)
   rospy.init_node('servo_talker', anonymous=True)
   rate =  rospy.Rate(5)
   while not rospy.is_shutdown():
     rospy.loginfo("move servos to position 0")
     msg_send=two_servos()
     msg_send.servo_1=1.8
     msg_send.servo_2=2.5
     pub.publish(msg_send)
     time.sleep(5)
     rospy.loginfo("move servos to position 90")
     msg_send=two_servos()
     msg_send.servo_1=5.3
     msg_send.servo_2=6
     pub.publish(msg_send)
     time.sleep(5)
     rospy.loginfo("move servos to position 180")
     msg_send=two_servos()
     msg_send.servo_1=8.5
     msg_send.servo_2=10.5
     pub.publish(msg_send)
     time.sleep(10)

if __name__=='__main__':
   try:
     servo_position()
   except rospy.ROSInterruptException:
     pass
