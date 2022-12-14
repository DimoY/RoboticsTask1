#author Zhivko Petrov

cmake_minimum_required(VERSION 3.10.2)

project(
    manager_utils
    LANGUAGES CXX
    VERSION 1.0.0
)

find_package(cmake_helpers REQUIRED)
find_package(sdl_utils REQUIRED)

set(_INC_FOLDER_NAME include)
set(_INC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${_INC_FOLDER_NAME}/${PROJECT_NAME})       
set(_SRC_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_library(
    ${PROJECT_NAME} 
    STATIC
        ${_INC_DIR}/drawing/NumberCounter.h
        ${_INC_DIR}/drawing/DynamicImage.h
        ${_INC_DIR}/drawing/Image.h
        ${_INC_DIR}/drawing/Sprite.h
        ${_INC_DIR}/drawing/Fbo.h
        ${_INC_DIR}/drawing/Text.h
        ${_INC_DIR}/drawing/Widget.h
        ${_INC_DIR}/drawing/animation/AnimationBase.h
        ${_INC_DIR}/drawing/animation/AnimationEndCb.h
        ${_INC_DIR}/drawing/animation/FrameAnimation.h
        ${_INC_DIR}/drawing/animation/PositionAnimation.h
        ${_INC_DIR}/drawing/animation/PulseAnimation.h
        ${_INC_DIR}/drawing/animation/RotationAnimation.h
        ${_INC_DIR}/drawing/animation/defines/AnimationDefines.h
        ${_INC_DIR}/drawing/animation/defines/CommonAnimationStructs.h
        ${_INC_DIR}/input/ButtonBase.h
        ${_INC_DIR}/input/Scroller.h
        ${_INC_DIR}/managers/config/ManagerHandlerConfig.h
        ${_INC_DIR}/managers/config/DrawMgrConfig.h
        ${_INC_DIR}/managers/ManagerHandler.h
        ${_INC_DIR}/managers/MgrBase.h
        ${_INC_DIR}/managers/DrawMgr.h
        ${_INC_DIR}/managers/RsrcMgr.h
        ${_INC_DIR}/managers/SoundMgr.h
        ${_INC_DIR}/managers/TimerMgr.h
        ${_INC_DIR}/sound/Music.h
        ${_INC_DIR}/sound/Sound.h
        ${_INC_DIR}/sound/SoundWidget.h
        ${_INC_DIR}/sound/SoundWidgetEndCb.h
        ${_INC_DIR}/time/TimerClient.h
        ${_INC_DIR}/time/TimerClientSpeedAdjustable.h
        ${_INC_DIR}/time/UserTimerClient.h
        ${_INC_DIR}/time/UserTimerClient.h
        ${_INC_DIR}/time/defines/TimerClientDefines.h
    
        ${_SRC_DIR}/drawing/NumberCounter.cpp
        ${_SRC_DIR}/drawing/DynamicImage.cpp
        ${_SRC_DIR}/drawing/Image.cpp
        ${_SRC_DIR}/drawing/Sprite.cpp
        ${_SRC_DIR}/drawing/Fbo.cpp
        ${_SRC_DIR}/drawing/Text.cpp
        ${_SRC_DIR}/drawing/Widget.cpp
        ${_SRC_DIR}/drawing/animation/AnimationBase.cpp
        ${_SRC_DIR}/drawing/animation/FrameAnimation.cpp
        ${_SRC_DIR}/drawing/animation/PositionAnimation.cpp
        ${_SRC_DIR}/drawing/animation/PulseAnimation.cpp
        ${_SRC_DIR}/drawing/animation/RotationAnimation.cpp
        ${_SRC_DIR}/drawing/animation/defines/CommonAnimationStructs.cpp
        ${_SRC_DIR}/input/ButtonBase.cpp
        ${_SRC_DIR}/input/Scroller.cpp
        ${_SRC_DIR}/managers/ManagerHandler.cpp
        ${_SRC_DIR}/managers/DrawMgr.cpp
        ${_SRC_DIR}/managers/RsrcMgr.cpp
        ${_SRC_DIR}/managers/SoundMgr.cpp
        ${_SRC_DIR}/managers/TimerMgr.cpp
        ${_SRC_DIR}/sound/Music.cpp
        ${_SRC_DIR}/sound/Sound.cpp
        ${_SRC_DIR}/sound/SoundWidget.cpp
        ${_SRC_DIR}/time/TimerClient.cpp
        ${_SRC_DIR}/time/TimerClientSpeedAdjustable.cpp
        ${_SRC_DIR}/time/UserTimerClient.cpp
)

add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

target_include_directories(
    ${PROJECT_NAME} 
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/${_INC_FOLDER_NAME}>
        $<INSTALL_INTERFACE:${_INC_FOLDER_NAME}>
)

target_link_libraries(
    ${PROJECT_NAME}
    PUBLIC
        sdl_utils::sdl_utils
)

if(NOT DISABLE_ROS_TOOLING)
    # Ament uses non-monolith build (separate build and install steps).
    # The helpers.cmake has to be included manually.
    # This allows access to the helpers.cmake user defined macros
    # In the case of monolith build - the file is automatically included
    # from the cmake_helpersConfig.cmake when the package is consumed by find_package()
	include(${cmake_helpers_DIR}/helpers.cmake)
	
    enable_ros_tooling_for_target(
        ${PROJECT_NAME}
        ${CMAKE_CURRENT_SOURCE_DIR}/package.xml
    )
endif()

set_target_cpp_standard(${PROJECT_NAME} 20)
enable_target_warnings(${PROJECT_NAME})
set_target_visibility(${PROJECT_NAME})
install_and_export_target(${PROJECT_NAME} ${_INC_FOLDER_NAME})

#invoke include-what-you-use (if it's enabled) for the current project
if(USE_IWYU)
    enable_target_include_what_you_use(${PROJECT_NAME})
endif(USE_IWYU)

if(BUILD_LIKE_POSITION_INDEPENDANT_CODE)
    enable_target_position_independent_code(${PROJECT_NAME})
endif()  




          



