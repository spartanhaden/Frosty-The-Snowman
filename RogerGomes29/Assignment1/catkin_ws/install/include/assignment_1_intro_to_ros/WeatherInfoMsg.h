// Generated by gencpp from file assignment_1_intro_to_ros/WeatherInfoMsg.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_1_INTRO_TO_ROS_MESSAGE_WEATHERINFOMSG_H
#define ASSIGNMENT_1_INTRO_TO_ROS_MESSAGE_WEATHERINFOMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment_1_intro_to_ros
{
template <class ContainerAllocator>
struct WeatherInfoMsg_
{
  typedef WeatherInfoMsg_<ContainerAllocator> Type;

  WeatherInfoMsg_()
    : temperature(0)
    , reaction()  {
    }
  WeatherInfoMsg_(const ContainerAllocator& _alloc)
    : temperature(0)
    , reaction(_alloc)  {
  (void)_alloc;
    }



   typedef int64_t _temperature_type;
  _temperature_type temperature;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _reaction_type;
  _reaction_type reaction;




  typedef boost::shared_ptr< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> const> ConstPtr;

}; // struct WeatherInfoMsg_

typedef ::assignment_1_intro_to_ros::WeatherInfoMsg_<std::allocator<void> > WeatherInfoMsg;

typedef boost::shared_ptr< ::assignment_1_intro_to_ros::WeatherInfoMsg > WeatherInfoMsgPtr;
typedef boost::shared_ptr< ::assignment_1_intro_to_ros::WeatherInfoMsg const> WeatherInfoMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace assignment_1_intro_to_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'assignment_1_intro_to_ros': ['/home/rogergomes/Frosty-The-Snowman/RogerGomes29/Assignment1/catkin_ws/src/assignment_1_intro_to_ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8229d44e93d381e63bfb1f0d4aa31049";
  }

  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8229d44e93d381e6ULL;
  static const uint64_t static_value2 = 0x3bfb1f0d4aa31049ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment_1_intro_to_ros/WeatherInfoMsg";
  }

  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 temperature\n\
string reaction\n\
";
  }

  static const char* value(const ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.temperature);
      stream.next(m.reaction);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WeatherInfoMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment_1_intro_to_ros::WeatherInfoMsg_<ContainerAllocator>& v)
  {
    s << indent << "temperature: ";
    Printer<int64_t>::stream(s, indent + "  ", v.temperature);
    s << indent << "reaction: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.reaction);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_1_INTRO_TO_ROS_MESSAGE_WEATHERINFOMSG_H
