// generated from rosidl_typesupport_fastrtps_cpp/resource/idl__rosidl_typesupport_fastrtps_cpp.hpp.em
// with input from robo_collector_interfaces:msg/RobotMoveType.idl
// generated code does not contain a copyright notice

#ifndef ROBO_COLLECTOR_INTERFACES__MSG__DETAIL__ROBOT_MOVE_TYPE__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_
#define ROBO_COLLECTOR_INTERFACES__MSG__DETAIL__ROBOT_MOVE_TYPE__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_

#include "rosidl_runtime_c/message_type_support_struct.h"
#include "rosidl_typesupport_interface/macros.h"
#include "robo_collector_interfaces/msg/rosidl_typesupport_fastrtps_cpp__visibility_control.h"
#include "robo_collector_interfaces/msg/detail/robot_move_type__struct.hpp"

#ifndef _WIN32
# pragma GCC diagnostic push
# pragma GCC diagnostic ignored "-Wunused-parameter"
# ifdef __clang__
#  pragma clang diagnostic ignored "-Wdeprecated-register"
#  pragma clang diagnostic ignored "-Wreturn-type-c-linkage"
# endif
#endif
#ifndef _WIN32
# pragma GCC diagnostic pop
#endif

#include "fastcdr/Cdr.h"

namespace robo_collector_interfaces
{

namespace msg
{

namespace typesupport_fastrtps_cpp
{

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_robo_collector_interfaces
cdr_serialize(
  const robo_collector_interfaces::msg::RobotMoveType & ros_message,
  eprosima::fastcdr::Cdr & cdr);

bool
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_robo_collector_interfaces
cdr_deserialize(
  eprosima::fastcdr::Cdr & cdr,
  robo_collector_interfaces::msg::RobotMoveType & ros_message);

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_robo_collector_interfaces
get_serialized_size(
  const robo_collector_interfaces::msg::RobotMoveType & ros_message,
  size_t current_alignment);

size_t
ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_robo_collector_interfaces
max_serialized_size_RobotMoveType(
  bool & full_bounded,
  size_t current_alignment);

}  // namespace typesupport_fastrtps_cpp

}  // namespace msg

}  // namespace robo_collector_interfaces

#ifdef __cplusplus
extern "C"
{
#endif

ROSIDL_TYPESUPPORT_FASTRTPS_CPP_PUBLIC_robo_collector_interfaces
const rosidl_message_type_support_t *
  ROSIDL_TYPESUPPORT_INTERFACE__MESSAGE_SYMBOL_NAME(rosidl_typesupport_fastrtps_cpp, robo_collector_interfaces, msg, RobotMoveType)();

#ifdef __cplusplus
}
#endif

#endif  // ROBO_COLLECTOR_INTERFACES__MSG__DETAIL__ROBOT_MOVE_TYPE__ROSIDL_TYPESUPPORT_FASTRTPS_CPP_HPP_
