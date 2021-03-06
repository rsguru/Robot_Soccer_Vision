#!/usr/bin/env python
import rospy
import math
import time
from std_msgs.msg import String
from robot_soccer.msg import *
from robot_soccer.srv import *
import objectLocations
from collections import deque
from param import *
import cPickle as pickle
import copy
#import the message
from robot_soccer.msg import convertedCoordinates
PIXELS_PER_METER = 191.0
#pub = rospy.Publisher('coordinates', convertedCoordinates)

class RobotLocation:
  def __init__(self, x = 0.0, y = 0.0, theta = 0.0, magnitude = 0.0, angle = 0.0):
    self.x = x
    self.y = y
    self.theta = theta
    # self.magnitude = magnitude
    # self.angle = angle

class BallLocation:
  def __init__(self, timestamp = 0, x = 0.0, y = 0.0, magnitude = 0.0, angle = 0.0):
    self.x = x
    self.y = y
    # self.magnitude = magnitude
    # self.angle = angle

class FieldLocation:
  def __init__(self, timestamp = 0, width = 0.0, height = 0.0):
    self.width = width
    self.height = height
    # self.magnitude = magnitude
    # self.angle = angle

# Global Variables for initialization
class coordinatesConverter:
  def __init__(self):
    self.home1 = RobotLocation()
    self.home2 = RobotLocation()
    self.away1 = RobotLocation()
    self.away2 = RobotLocation()
    self.ball = BallLocation()
    self.field = FieldLocation()

  def callback(self, data):
      #adding home 2 --karla
    #rospy.loginfo("home2x: %d, home2Y: %d,home2theta: %d, home1x: %d, home1Y: %d, ballx: %d, bally: %d, home1theta: %d" % (data.home2_x, data.home2_y, data.home2_theta, data.home1_x, data.home1_y, data.ball_x, data.ball_y, data.home1_theta))
    #rospy.loginfo("field width: %d, field height: %d" % (data.field_width, data.field_height))
    #rospy.loginfo("away1_x: %d, away1_y: %d,away1_theta: %d, away2_x: %d, away2_y: %d, away2_theta: %d" % (data.away1_x, data.away1_y, data.away1_theta, data.away2_x, data.away2_y, data.away2_theta))
#HOME1
    self.home1.x = pixelToMeter(float(data.home1_x))#float(data.home1_x)/PIXELS_PER_METER
    self.home1.y = pixelToMeter(float(data.home1_y))#float(data.home1_y)/PIXELS_PER_METER
    self.home1.theta = degreeToRadian(float(data.home1_theta))
#HOME2
    self.home2.x = pixelToMeter(float(data.home2_x))#float(data.home2_x)/PIXELS_PER_METER
    self.home2.y = pixelToMeter(float(data.home2_y))#float(data.home2_y)/PIXELS_PER_METER
    self.home2.theta = degreeToRadian(float(data.home2_theta))
#AWAY1
    self.away1.x = pixelToMeter(float(data.away1_x))#float(data.home2_x)/PIXELS_PER_METER
    self.away1.y = pixelToMeter(float(data.away1_y))#float(data.home2_y)/PIXELS_PER_METER
    self.away1.theta = degreeToRadian(float(data.away1_theta))
#AWAY2
    self.away2.x = pixelToMeter(float(data.away2_x))#float(data.home2_x)/PIXELS_PER_METER
    self.away2.y = pixelToMeter(float(data.away2_y))#float(data.home2_y)/PIXELS_PER_METER
    self.away2.theta = degreeToRadian(float(data.away2_theta))
#BALL
    self.ball.x = pixelToMeter(float(data.ball_x))#float(data.ball_x)/PIXELS_PER_METER
    self.ball.y = pixelToMeter(float(data.ball_y))#float(data.ball_y)/PIXELS_PER_METER

#field
    self.field.width = pixelToMeter(float(data.field_width))#float(data.ball_x)/PIXELS_PER_METER
    self.field.height = pixelToMeter(float(data.field_height))#float(data.ball_y)/PIXELS_PER_METER
    #rospy.loginfo("home1x: %f, home1theta %f" % (self.home1.x, self.home1.theta))
    #creating the msg in order to pub as a whole
    msg = convertedCoordinates()
    msg.home1_x = self.home1.x
    msg.home1_y = self.home1.y
    msg.home1_theta = self.home1.theta
    msg.home2_x = self.home2.x
    msg.home2_y = self.home2.y
    msg.home2_theta = self.home2.theta
    msg.away1_x = self.away1.x
    msg.away1_y = self.away1.y
    msg.away1_theta = self.away1.theta
    msg.away2_x = self.away2.x
    msg.away2_y = self.away2.y
    msg.away2_theta = self.away2.theta
    msg.ball_x = self.ball.x
    msg.ball_y = self.ball.y
    msg.field_width = self.field.width
    msg.field_height = self.field.height
    #publish to the msg
    self.pub.publish(msg)
    rospy.loginfo(msg)


  def run(self):
    print "Welcome to the motion converter node:\nProgram starting"
    # self.listener()
    rospy.init_node('kalmanFilterNode', anonymous=True)
    # Create locTopic subscriber.
    rospy.Subscriber("locTopic", locations, self.callback)
    # create the publisher, save the handle
    self.pub = rospy.Publisher('coordinates', convertedCoordinates, queue_size=10)
    # We don't want ROS to quit
    rospy.spin()


if __name__ == '__main__':
  c = coordinatesConverter()
  c.run()
