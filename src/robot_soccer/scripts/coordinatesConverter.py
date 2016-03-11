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

# Global Variables for initialization
class coordinatesConverter:
  def __init__(self):
    self.home1 = RobotLocation()
    # self.home2 = RobotLocation()
    #self.away1 = RobotLocation()
    # self.away2 = RobotLocation()
    self.ball = BallLocation()

  def callback(self, data):
    #rospy.loginfo("home1x: %d, home1Y: %d, ballx: %d, bally: %d, home1theta: %d" % (data.home1_x, data.home1_y, data.ball_x, data.ball_y, data.home1_theta))
    #rospy.loginfo("field width: %d, field height: %d" % (data.field_width, data.field_height))
    self.home1.x = float(data.home1_x)/PIXELS_PER_METER
    self.home1.y = float(data.home1_y)/PIXELS_PER_METER
    self.home1.theta = degreeToRadian(float(data.home1_theta))
    self.ball.x = float(data.ball_x)/PIXELS_PER_METER
    self.ball.y = float(data.ball_y)/PIXELS_PER_METER
    #rospy.loginfo("home1x: %f, home1theta %f" % (self.home1.x, self.home1.theta))
    #creating the msg in order to pub as a whole
    msg = convertedCoordinates()
    msg.home1_x = self.home1.x
    msg.home1_y = self.home1.y
    msg.home1_theta = self.home1.theta
    msg.ball_x = self.ball.x
    msg.ball_y = self.ball.y
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
