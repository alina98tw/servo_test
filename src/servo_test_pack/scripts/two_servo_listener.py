#!/usr/bin/env python

import rospy, time
import RPi.GPIO as GPIO
from servo_test_pack import two_servos

servo = 17
GPIO.setmode(GPIO.BCM)
GPIO.setup(servo, GPIO.OUT)
p = GPIO.PWM(servo, 50)  #GPIO 17 for PWM with 50Hz
p.start(0)  #Initialization

def servo_callback(msg):
  rospy.loginfo("I heard %s", msg.servo_1)
  rospy.loginfo("Heard %s", msg.servo_2)
  p.ChangeDutyCycle(msg.data)

def servo_listener():
  rospy.init_node('servo_listener', anonymous=True)
  rospy.Subscriber('move_servo', two_servos, servo_callback)
  rospy.spin()

if __name__=='__main__':
  try:
    servo_listener()
  except rospy.RosInterruptException:
    p.stop()
    GPIO.cleanup()
    pass
