# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/workspace/robotics_v1/build/robo_miner_common

# Include any dependencies generated for this target.
include CMakeFiles/robo_miner_common.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/robo_miner_common.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/robo_miner_common.dir/flags.make

CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.o: CMakeFiles/robo_miner_common.dir/flags.make
CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.o: /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common/src/message_helpers/RoboMinerMessageHelpers.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/workspace/robotics_v1/build/robo_miner_common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.o"
	/usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.o -c /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common/src/message_helpers/RoboMinerMessageHelpers.cpp

CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common/src/message_helpers/RoboMinerMessageHelpers.cpp > CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.i

CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common/src/message_helpers/RoboMinerMessageHelpers.cpp -o CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.s

# Object files for target robo_miner_common
robo_miner_common_OBJECTS = \
"CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.o"

# External object files for target robo_miner_common
robo_miner_common_EXTERNAL_OBJECTS =

librobo_miner_common.a: CMakeFiles/robo_miner_common.dir/src/message_helpers/RoboMinerMessageHelpers.cpp.o
librobo_miner_common.a: CMakeFiles/robo_miner_common.dir/build.make
librobo_miner_common.a: CMakeFiles/robo_miner_common.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/workspace/robotics_v1/build/robo_miner_common/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library librobo_miner_common.a"
	$(CMAKE_COMMAND) -P CMakeFiles/robo_miner_common.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/robo_miner_common.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/robo_miner_common.dir/build: librobo_miner_common.a

.PHONY : CMakeFiles/robo_miner_common.dir/build

CMakeFiles/robo_miner_common.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/robo_miner_common.dir/cmake_clean.cmake
.PHONY : CMakeFiles/robo_miner_common.dir/clean

CMakeFiles/robo_miner_common.dir/depend:
	cd /home/ubuntu/workspace/robotics_v1/build/robo_miner_common && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common /home/ubuntu/workspace/robotics_v1/src/robo_miner/robo_miner_common /home/ubuntu/workspace/robotics_v1/build/robo_miner_common /home/ubuntu/workspace/robotics_v1/build/robo_miner_common /home/ubuntu/workspace/robotics_v1/build/robo_miner_common/CMakeFiles/robo_miner_common.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/robo_miner_common.dir/depend

