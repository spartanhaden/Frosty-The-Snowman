#!/usr/bin/env python

import sys
import datetime
import json
from six.moves import urllib

def url_builder(zip_code):
    user_api = '325a1b281050f91337e8e7e5b7fea181' 
    unit = 'imperial'  
    api = 'http://api.openweathermap.org/data/2.5/weather?zip='
    full_api_url = api + str(zip_code) + ',us' + '&mode=json&units=' + unit + '&APPID=' + user_api
    print(full_api_url)
    return full_api_url

def data_fetch(full_api_url):
    url = urllib.request.urlopen(full_api_url)
    output = url.read().decode('utf-8')
    raw_api_dict = json.loads(output)
    url.close()
    return raw_api_dict

def data_organizer(raw_api_dict):
    data = dict(
        city=raw_api_dict.get('name'),
        country=raw_api_dict.get('sys').get('country'),
        temp=raw_api_dict.get('main').get('temp'),
        sky=raw_api_dict['weather'][0]['main'],
        dt= raw_api_dict.get('dt'),
        cloudiness=raw_api_dict.get('clouds').get('all')
    )
    return data


def data_output(data):
    weather_info_str = '---------------------------------------' + '\n'+'Current weather in: {}, {}'.format(data['city'], data['country']) + '\n' + 'Temperature: ' + str(data['temp']) + '\n' + 'Sky: {}'.format(data['sky']) + '\n' + 'Last update from the server: {}'.format(datetime.datetime.fromtimestamp(int(data['dt'])).strftime('%I:%M %p')) + '\n' '---------------------------------------'
    print(weather_info_str)

def usage():
    return "%s [zip_code]"%sys.argv[0]

if __name__ == '__main__':
     if len(sys.argv) == 2:
     	zip_code = int(sys.argv[1])
     else:
        print(len(sys.argv))
        print usage()
        sys.exit(1)
     try:
        data_output(data_organizer(data_fetch(url_builder(zip_code))))
     except IOError:
        print('Cannot Connect to OpenWeatherMapAPi')
