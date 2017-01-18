#!/usr/bin/env python

# Listener that subscribes to the 'chatter' topic 
# and accepts data as Float32

# Intro to Robotics - EE5900 - Spring 2017
#          Assignment #1

#       Project #1 Group #1
#        Haden (Team Lead)
#          Akhil Kurup
#          Roger Gomes
#
# Revision: v1.3


# imports
import rospy
import random
from std_msgs.msg import Float32
from beginner_tutorials.msg import weather_msgs

# messages to display
warm_msgs     = [' carry water', 
                 ' sweating like a pig ', 
                 ' wow  ', 
                 ' get some tan  ', 
                 ' burn! ']

pleasant_msgs = [' beautiful weather ', 
                 ' wow ', 
                 '  yay! ', 
                 ' gloomy ', 
                 ' clear blue skies ']

cold_msgs     = ['   much cold  ', 
                 ' foggy ', 
                 ' wow ', 
                 '   chilly ', 
                 ' get me coffee',
                 '  love the cold ',
                 ' frigid']

icy_msgs      = ['  shivering cold!  ', 
                 ' frosty snow-man ', 
                 '  igloo anyone? ', 
                 ' Ho-Ho-Ho ', 
                 ' wow ']


# define callback subroutine
def callback(data):

    # Display received data
    #rospy.loginfo('Temperature is: %.2f F'%data.data)
    rospy.loginfo('zip:%s  location:%s  temperature:%.2f  '%(data.zip, data.location, data.temperature))
    
    # Logic to display message
    if (data.temperature) > 70 : 
      rospy.loginfo('Golly! Its Warm Outside..')
      rospy.loginfo(warm_msgs[random.randrange(len(warm_msgs))] + '\n')
    
    elif (data.temperature) > 35 : 
      rospy.loginfo('Get Outside!! Its Super pleasant..')
      rospy.loginfo(pleasant_msgs[random.randrange(len(pleasant_msgs))] + '\n')
    
    elif (data.temperature) > 15 : 
      rospy.loginfo('Be on your toes.. Cold is coming!')
      rospy.loginfo(cold_msgs[random.randrange(len(cold_msgs))] + '\n')
    
    else : 
      rospy.loginfo('Fetch your Jacket! Its nippy..')
      rospy.loginfo(icy_msgs[random.randrange(len(icy_msgs))] + '\n')


# actual listener subroutine
def listener():
    
    # Initialize listener node
    rospy.init_node('listener', anonymous=True)

    # define subscriber
    # rospy.Subscriber('chatter', Float32, callback)
    rospy.Subscriber('chatter', weather_msgs, callback)

    # spin() keeps python from exiting until this node is stopped
    rospy.spin()


# standard listener boilerplate
if __name__ == '__main__':
    listener()
