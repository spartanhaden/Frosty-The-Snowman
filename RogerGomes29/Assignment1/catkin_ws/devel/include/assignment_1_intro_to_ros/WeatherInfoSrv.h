// Generated by gencpp from file assignment_1_intro_to_ros/WeatherInfoSrv.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_1_INTRO_TO_ROS_MESSAGE_WEATHERINFOSRV_H
#define ASSIGNMENT_1_INTRO_TO_ROS_MESSAGE_WEATHERINFOSRV_H

#include <ros/service_traits.h>


#include <assignment_1_intro_to_ros/WeatherInfoSrvRequest.h>
#include <assignment_1_intro_to_ros/WeatherInfoSrvResponse.h>


namespace assignment_1_intro_to_ros
{

struct WeatherInfoSrv
{

typedef WeatherInfoSrvRequest Request;
typedef WeatherInfoSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WeatherInfoSrv
} // namespace assignment_1_intro_to_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrv > {
  static const char* value()
  {
    return "41a2765bbfb2d838f288a4a9bc7620e5";
  }

  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoSrv&) { return value(); }
};

template<>
struct DataType< ::assignment_1_intro_to_ros::WeatherInfoSrv > {
  static const char* value()
  {
    return "assignment_1_intro_to_ros/WeatherInfoSrv";
  }

  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoSrv&) { return value(); }
};


// service_traits::MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrvRequest> should match 
// service_traits::MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrv > 
template<>
struct MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrv >::value();
  }
  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_1_intro_to_ros::WeatherInfoSrvRequest> should match 
// service_traits::DataType< ::assignment_1_intro_to_ros::WeatherInfoSrv > 
template<>
struct DataType< ::assignment_1_intro_to_ros::WeatherInfoSrvRequest>
{
  static const char* value()
  {
    return DataType< ::assignment_1_intro_to_ros::WeatherInfoSrv >::value();
  }
  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrvResponse> should match 
// service_traits::MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrv > 
template<>
struct MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoSrv >::value();
  }
  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::assignment_1_intro_to_ros::WeatherInfoSrvResponse> should match 
// service_traits::DataType< ::assignment_1_intro_to_ros::WeatherInfoSrv > 
template<>
struct DataType< ::assignment_1_intro_to_ros::WeatherInfoSrvResponse>
{
  static const char* value()
  {
    return DataType< ::assignment_1_intro_to_ros::WeatherInfoSrv >::value();
  }
  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ASSIGNMENT_1_INTRO_TO_ROS_MESSAGE_WEATHERINFOSRV_H
