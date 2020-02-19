#!/usr/bin/env python

import rospy, time
import RPi.GPIO as GPIO
from std_msgs.msg import Float32

servo = 17
GPIO.setmode(GPIO.BCM)
GPIO.setup(servo, GPIO.OUT)
p = GPIO.PWM(servo, 50)  #GPIO 17 for PWM with 50Hz
p.start(0)  #Initialization

def servo_callback(msg):
  rospy.loginfo("I heard %s", msg.data)
  p.ChangeDutyCycle(msg.data)

def servo_listener():
  rospy.init_node('servo_listener', anonymous=True)
  rospy.Subscriber('move_servo', Float32, servo_callback)
  rospy.spin()

if __name__=='__main__':
  try:
    servo_listener()
  except rospy.RosInterruptException:
    p.stop()
    GPIO.cleanup()
    pass
