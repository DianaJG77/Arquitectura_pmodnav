// Generated by gencpp from file beginner_tutorials/Gyro.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_GYRO_H
#define BEGINNER_TUTORIALS_MESSAGE_GYRO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct Gyro_
{
  typedef Gyro_<ContainerAllocator> Type;

  Gyro_()
    : name()
    , deviceID(0)
    , gyro_x(0.0)
    , gyro_y(0.0)
    , gyro_z(0.0)  {
    }
  Gyro_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , deviceID(0)
    , gyro_x(0.0)
    , gyro_y(0.0)
    , gyro_z(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int32_t _deviceID_type;
  _deviceID_type deviceID;

   typedef float _gyro_x_type;
  _gyro_x_type gyro_x;

   typedef float _gyro_y_type;
  _gyro_y_type gyro_y;

   typedef float _gyro_z_type;
  _gyro_z_type gyro_z;





  typedef boost::shared_ptr< ::beginner_tutorials::Gyro_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Gyro_<ContainerAllocator> const> ConstPtr;

}; // struct Gyro_

typedef ::beginner_tutorials::Gyro_<std::allocator<void> > Gyro;

typedef boost::shared_ptr< ::beginner_tutorials::Gyro > GyroPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Gyro const> GyroConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Gyro_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Gyro_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::Gyro_<ContainerAllocator1> & lhs, const ::beginner_tutorials::Gyro_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.deviceID == rhs.deviceID &&
    lhs.gyro_x == rhs.gyro_x &&
    lhs.gyro_y == rhs.gyro_y &&
    lhs.gyro_z == rhs.gyro_z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::Gyro_<ContainerAllocator1> & lhs, const ::beginner_tutorials::Gyro_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Gyro_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Gyro_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Gyro_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Gyro_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Gyro_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Gyro_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Gyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7dc4253aea9867744d89668dafe87380";
  }

  static const char* value(const ::beginner_tutorials::Gyro_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7dc4253aea986774ULL;
  static const uint64_t static_value2 = 0x4d89668dafe87380ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Gyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Gyro";
  }

  static const char* value(const ::beginner_tutorials::Gyro_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Gyro_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"int32 deviceID\n"
"float32 gyro_x\n"
"float32 gyro_y\n"
"float32 gyro_z\n"
;
  }

  static const char* value(const ::beginner_tutorials::Gyro_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Gyro_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.deviceID);
      stream.next(m.gyro_x);
      stream.next(m.gyro_y);
      stream.next(m.gyro_z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Gyro_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Gyro_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Gyro_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "deviceID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.deviceID);
    s << indent << "gyro_x: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_x);
    s << indent << "gyro_y: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_y);
    s << indent << "gyro_z: ";
    Printer<float>::stream(s, indent + "  ", v.gyro_z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_GYRO_H
