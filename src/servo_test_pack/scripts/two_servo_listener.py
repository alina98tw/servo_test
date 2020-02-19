#!/usr/bin/env python

import rospy, time
import RPi.GPIO as GPIO
from servo_test_pack.msg import two_servos

servo1 = 17
servo2 = 18
GPIO.setmode(GPIO.BCM)
GPIO.setup(servo1, GPIO.OUT)
GPIO.setup(servo2, GPIO.OUT)
p1 = GPIO.PWM(servo1, 50)  #GPIO 17 for PWM with 50Hz
p2 = GPIO.PWM(servo2, 50)  #GPIO 18 for PWM with 50Hz
p1.start(0)  #Initialization
p2.start(0)

def servo_callback(msg):
  rospy.loginfo("Servo 1 to: %s", msg.servo_1)
  rospy.loginfo("Servo 2 to:  %s", msg.servo_2)
  p1.ChangeDutyCycle(msg.servo_1)
  p2.ChangeDutyCycle(msg.servo_2)

def servo_listener():
  rospy.init_node('servo_listener', anonymous=True)
  rospy.Subscriber('move_servo', two_servos, servo_callback)
  rospy.spin()

if __name__=='__main__':
  try:
    servo_listener()
  except rospy.RosInterruptException:
    p1.stop()
    p2.stop()
    GPIO.cleanup()
    pass
