#!/usr/bin/env python

# Talker that reads current location temperature and  
# publishes std_msgs to the 'chatter' topic as Float32

# Intro to Robotics - EE5900 - Spring 2017
#          Assignment #1

#       Project #1 Group #1
#        Haden (Team Lead)
#          Roger Gomes
#          Akhil Kurup
#
# Revision: v1.3

# imports
import rospy
import datetime
import json

from std_msgs.msg import Int32
from six.moves import urllib



# Talker subroutine
def talker():

    # Define publisher with Int32 type for temperature
    pub = rospy.Publisher('chatter', Int32, queue_size=10)
    
    # Initialize rospy
    rospy.init_node('talker', anonymous=True)
    
    # Define ratw
    rate = rospy.Rate(1) # 1hz
    
    # Continue till kill sequence is sent
    while not rospy.is_shutdown():
        
        # Generate the URL for weather API call
        data = OrganizeData(FetchData(BuildUrl(4996572)))
        
        # Form the string from the received data
        # weather_info_str = '\n' + '---------------------------------------' + '\n' + 'Current weather in: {}, {}'.format(data['city'], data['country']) + '\n' + 'Temperature: ' + str(data['temp']) + '\n' + 'Sky: {}'.format(data['sky']) + '\n'   + 'Last update from the server: {}'.format(datetime.datetime.fromtimestamp(int(data['dt'])).strftime('%I:%M %p'))   +'\n'+ '---------------------------------------'+ '\n'
        weather_info_str = data['temp']

        # log weather data and publish it
        rospy.loginfo(weather_info_str)
        pub.publish(weather_info_str)

        # sleep publisher based on rate defined above
        rate.sleep()


# URL building subroutine
def BuildUrl(city_id):

    # API Id Obtained from: http://openweathermap.org/
    user_api = '325a1b281050f91337e8e7e5b7fea181'
    
    # imperial used for obtaining Farheniet
    unit = 'imperial'
    
    # actual API
    api = 'http://api.openweathermap.org/data/2.5/weather?id='
    # api = 'http://api.openweathermap.org/data/2.5/weather?zip=49931,us'
    
    # City ID obtained from: http://bulk.openweathermap.org/sample/city.list.json.gz
    full_api_url = api + str(city_id) + '&mode=json&units=' + unit + '&APPID=' + user_api
    # full_api_url = api + '&mode=json&units=' + unit + '&APPID=' + user_api
    
    return full_api_url


# Subroutine to fetch data from URL
def FetchData(full_api_url):

    # Visit API
    url = urllib.request.urlopen(full_api_url)
    
    # Fetch and decode data
    output = url.read().decode('utf-8')
    raw_api_dict = json.loads(output)
    
    # Close the URL
    url.close()

    return raw_api_dict


# Define data format
def OrganizeData(raw_api_dict):

    # form a dictionary
    data = dict(
        city       = raw_api_dict.get('name'),
        country    = raw_api_dict.get('sys').get('country'),
        temp       = raw_api_dict.get('main').get('temp'),
        sky        = raw_api_dict['weather'][0]['main'],
        dt         = raw_api_dict.get('dt'),
        cloudiness = raw_api_dict.get('clouds').get('all')
    )
    return data
 

# Standard ROS boilerplate
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass

