// Generated by gencpp from file pad_msgs/ServerMenuRequest.msg
// DO NOT EDIT!


#ifndef PAD_MSGS_MESSAGE_SERVERMENUREQUEST_H
#define PAD_MSGS_MESSAGE_SERVERMENUREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pad_msgs
{
template <class ContainerAllocator>
struct ServerMenuRequest_
{
  typedef ServerMenuRequest_<ContainerAllocator> Type;

  ServerMenuRequest_()
    : clientReq(0)
    , nomeUtente()
    , destinatario()
    , x(0.0)
    , y(0.0)  {
    }
  ServerMenuRequest_(const ContainerAllocator& _alloc)
    : clientReq(0)
    , nomeUtente(_alloc)
    , destinatario(_alloc)
    , x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _clientReq_type;
  _clientReq_type clientReq;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _nomeUtente_type;
  _nomeUtente_type nomeUtente;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _destinatario_type;
  _destinatario_type destinatario;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ServerMenuRequest_

typedef ::pad_msgs::ServerMenuRequest_<std::allocator<void> > ServerMenuRequest;

typedef boost::shared_ptr< ::pad_msgs::ServerMenuRequest > ServerMenuRequestPtr;
typedef boost::shared_ptr< ::pad_msgs::ServerMenuRequest const> ServerMenuRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pad_msgs::ServerMenuRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pad_msgs::ServerMenuRequest_<ContainerAllocator1> & lhs, const ::pad_msgs::ServerMenuRequest_<ContainerAllocator2> & rhs)
{
  return lhs.clientReq == rhs.clientReq &&
    lhs.nomeUtente == rhs.nomeUtente &&
    lhs.destinatario == rhs.destinatario &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pad_msgs::ServerMenuRequest_<ContainerAllocator1> & lhs, const ::pad_msgs::ServerMenuRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pad_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8ce379ccd6e519c2634707048f9c62d9";
  }

  static const char* value(const ::pad_msgs::ServerMenuRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8ce379ccd6e519c2ULL;
  static const uint64_t static_value2 = 0x634707048f9c62d9ULL;
};

template<class ContainerAllocator>
struct DataType< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pad_msgs/ServerMenuRequest";
  }

  static const char* value(const ::pad_msgs::ServerMenuRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 clientReq\n"
"string nomeUtente\n"
"string destinatario\n"
"float64 x\n"
"float64 y\n"
;
  }

  static const char* value(const ::pad_msgs::ServerMenuRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.clientReq);
      stream.next(m.nomeUtente);
      stream.next(m.destinatario);
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ServerMenuRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pad_msgs::ServerMenuRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pad_msgs::ServerMenuRequest_<ContainerAllocator>& v)
  {
    s << indent << "clientReq: ";
    Printer<int32_t>::stream(s, indent + "  ", v.clientReq);
    s << indent << "nomeUtente: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.nomeUtente);
    s << indent << "destinatario: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.destinatario);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAD_MSGS_MESSAGE_SERVERMENUREQUEST_H
