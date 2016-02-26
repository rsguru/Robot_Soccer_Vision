// Generated by gencpp from file robot_soccer/commcenterResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_SOCCER_MESSAGE_COMMCENTERRESPONSE_H
#define ROBOT_SOCCER_MESSAGE_COMMCENTERRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_soccer
{
template <class ContainerAllocator>
struct commcenterResponse_
{
  typedef commcenterResponse_<ContainerAllocator> Type;

  commcenterResponse_()
    {
    }
  commcenterResponse_(const ContainerAllocator& _alloc)
    {
    }






  typedef boost::shared_ptr< ::robot_soccer::commcenterResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_soccer::commcenterResponse_<ContainerAllocator> const> ConstPtr;

}; // struct commcenterResponse_

typedef ::robot_soccer::commcenterResponse_<std::allocator<void> > commcenterResponse;

typedef boost::shared_ptr< ::robot_soccer::commcenterResponse > commcenterResponsePtr;
typedef boost::shared_ptr< ::robot_soccer::commcenterResponse const> commcenterResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_soccer::commcenterResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_soccer::commcenterResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_soccer

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'robot_soccer': ['/home/ecestudent/catkin_ws/src/robot_soccer/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_soccer::commcenterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_soccer::commcenterResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_soccer::commcenterResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::robot_soccer::commcenterResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_soccer/commcenterResponse";
  }

  static const char* value(const ::robot_soccer::commcenterResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::robot_soccer::commcenterResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct commcenterResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_soccer::commcenterResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::robot_soccer::commcenterResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_SOCCER_MESSAGE_COMMCENTERRESPONSE_H