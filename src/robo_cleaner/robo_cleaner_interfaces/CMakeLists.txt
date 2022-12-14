# Author Zhivko Petrov

cmake_minimum_required(VERSION 3.10)

project(robo_cleaner_interfaces)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/BatteryStatus.msg"
  "msg/InitialRobotState.msg"
  "msg/RobotMoveType.msg"
  "msg/UserAuthenticate.msg"
  
  "srv/ChargeBattery.srv"
  "srv/QueryBatteryStatus.srv"
  "srv/QueryInitialRobotState.srv"
   
  "action/RobotMove.action"
)

set_target_properties(
    ${PROJECT_NAME}
    PROPERTIES
        CXX_STANDARD 20
        CXX_STANDARD_REQUIRED YES
        CXX_EXTENSIONS NO
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
