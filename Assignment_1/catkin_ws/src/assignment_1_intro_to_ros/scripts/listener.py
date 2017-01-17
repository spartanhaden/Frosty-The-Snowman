#!/usr/bin/env python

# Listener that subscribes to the 'chatter' topic 
# and accepts data as Int32

# Intro to Robotics - EE5900 - Spring 2017
#          Assignment #1

#       Project #1 Group #1
#        Haden (Team Lead)
#          Akhil Kurup
#          Roger Gomes


# imports
import rospy
import random

from std_msgs.msg import Int32


# define callback subroutine
def callback(data):

    # Display received data
    rospy.loginfo('Temperature is: ' + str(data.data))
    
    # Logic to display message
    if (data.data) > 30 : 
      rospy.loginfo('Golly! Its Warm Outside..')
    
    elif (data.data) > 15 : 
      rospy.loginfo('Get Outside!! Its Super pleasant..')
    
    elif (data.data) > 3 : 
      rospy.loginfo('Be on your toes.. Cold is coming!')
    
    else : 
      rospy.loginfo('Fetch your Jacket! Its nippy..')

# actual listener subroutine
def listener():
    
    # Initialize listener node
    rospy.init_node('listener', anonymous=True)

    # define subscriber
    rospy.Subscriber('chatter', Int32, callback)

    # spin() keeps python from exiting until this node is stopped
    rospy.spin()


# standard listener boilerplate
if __name__ == '__main__':
    listener()
