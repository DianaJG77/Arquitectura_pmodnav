// Generated by gencpp from file beginner_tutorials/Alt.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_ALT_H
#define BEGINNER_TUTORIALS_MESSAGE_ALT_H


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
struct Alt_
{
  typedef Alt_<ContainerAllocator> Type;

  Alt_()
    : name()
    , deviceID(0)
    , alt(0.0)  {
    }
  Alt_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , deviceID(0)
    , alt(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef int32_t _deviceID_type;
  _deviceID_type deviceID;

   typedef float _alt_type;
  _alt_type alt;





  typedef boost::shared_ptr< ::beginner_tutorials::Alt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::Alt_<ContainerAllocator> const> ConstPtr;

}; // struct Alt_

typedef ::beginner_tutorials::Alt_<std::allocator<void> > Alt;

typedef boost::shared_ptr< ::beginner_tutorials::Alt > AltPtr;
typedef boost::shared_ptr< ::beginner_tutorials::Alt const> AltConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::Alt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::Alt_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::Alt_<ContainerAllocator1> & lhs, const ::beginner_tutorials::Alt_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.deviceID == rhs.deviceID &&
    lhs.alt == rhs.alt;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::Alt_<ContainerAllocator1> & lhs, const ::beginner_tutorials::Alt_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Alt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::Alt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Alt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::Alt_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Alt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::Alt_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::Alt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "52be1a4c5564c1815f865d5839c779ee";
  }

  static const char* value(const ::beginner_tutorials::Alt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x52be1a4c5564c181ULL;
  static const uint64_t static_value2 = 0x5f865d5839c779eeULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::Alt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/Alt";
  }

  static const char* value(const ::beginner_tutorials::Alt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::Alt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"int32 deviceID\n"
"float32 alt\n"
;
  }

  static const char* value(const ::beginner_tutorials::Alt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::Alt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.deviceID);
      stream.next(m.alt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Alt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::Alt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::Alt_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "deviceID: ";
    Printer<int32_t>::stream(s, indent + "  ", v.deviceID);
    s << indent << "alt: ";
    Printer<float>::stream(s, indent + "  ", v.alt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_ALT_H
