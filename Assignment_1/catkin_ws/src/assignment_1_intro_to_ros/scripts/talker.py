#!/usr/bin/env python
# Software License Agreement (BSD License)
#
# Copyright (c) 2008, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of Willow Garage, Inc. nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
# Revision $Id$

## Simple talker demo that published std_msgs/Strings messages
## to the 'chatter' topic

import rospy
from std_msgs.msg import String

import datetime
import json
from six.moves import urllib

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    while not rospy.is_shutdown():
        hello_str = "hello world %s" % rospy.get_time()  
        data = OrganizeData(FetchData(BuildUrl(4996572)))
        weather_info_str = '\n' + '---------------------------------------' + '\n' + 'Current weather in: {}, {}'.format(data['city'], data['country']) + '\n' + 'Temperature: ' + str(data['temp']) + '\n' + 'Sky: {}'.format(data['sky']) + '\n'   + 'Last update from the server: {}'.format(datetime.datetime.fromtimestamp(int(data['dt'])).strftime('%I:%M %p'))   +'\n'+ '---------------------------------------'+ '\n'
        #rospy.loginfo(hello_str)
        #pub.publish(hello_str)
        rospy.loginfo(weather_info_str)
        pub.publish(weather_info_str)
        rate.sleep()

def BuildUrl(city_id):
    user_api = '325a1b281050f91337e8e7e5b7fea181'  # API Id Obtained from: http://openweathermap.org/
    unit = 'imperial'  # imperial used for obtaining Farheniet
    api = 'http://api.openweathermap.org/data/2.5/weather?id='
     # City ID obtained from the following list: http://bulk.openweathermap.org/sample/city.list.json.gz
    full_api_url = api + str(city_id) + '&mode=json&units=' + unit + '&APPID=' + user_api
    return full_api_url

def FetchData(full_api_url):
    url = urllib.request.urlopen(full_api_url)
    output = url.read().decode('utf-8')
    raw_api_dict = json.loads(output)
    url.close()
    return raw_api_dict

def OrganizeData(raw_api_dict):
    data = dict(
        city=raw_api_dict.get('name'),
        country=raw_api_dict.get('sys').get('country'),
        temp=raw_api_dict.get('main').get('temp'),
        sky=raw_api_dict['weather'][0]['main'],
        dt= raw_api_dict.get('dt'),
        cloudiness=raw_api_dict.get('clouds').get('all')
    )
    return data
 
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
