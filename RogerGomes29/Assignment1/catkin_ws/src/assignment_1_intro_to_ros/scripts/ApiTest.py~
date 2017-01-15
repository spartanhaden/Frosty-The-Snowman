#!/usr/bin/env python

import datetime
import json
from six.moves import urllib

def url_builder(city_id):
    user_api = '325a1b281050f91337e8e7e5b7fea181'  # Obtain yours form: http://openweathermap.org/
    unit = 'imperial'  # For Fahrenheit use imperial, for Celsius use metric, and the default is Kelvin.
    api = 'http://api.openweathermap.org/data/2.5/weather?id='
     # Search for your city ID here: http://bulk.openweathermap.org/sample/city.list.json.gz
    full_api_url = api + str(city_id) + '&mode=json&units=' + unit + '&APPID=' + user_api
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
    print('---------------------------------------')
    print('Current weather in: {}, {}'.format(data['city'], data['country']))
    print('Temperature: ' + str(data['temp']))
    print('Sky: {}'.format(data['sky']))
    print('')
    print('Last update from the server: {}'.format(datetime.datetime.fromtimestamp(int(data['dt'])).strftime('%I:%M %p')))
    print('---------------------------------------')
    weather_info_str = 'Current weather in: {}, {}'.format(data['city'], data['country']) + '\n' + 'Temperature: ' + str(data['temp']) + '\n' + 'Sky: {}'.format(data['sky']) + '\n' + 'Last update from the server: {}'.format(datetime.datetime.fromtimestamp(int(data['dt'])).strftime('%I:%M %p'))
    print(weather_info_str)


if __name__ == '__main__':
    try:
        data_output(data_organizer(data_fetch(url_builder(4996572))))
    except IOError:
        print('Cannot Connect')
