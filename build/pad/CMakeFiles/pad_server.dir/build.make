# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/me/progetto_labiagi/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/me/progetto_labiagi/build

# Include any dependencies generated for this target.
include pad/CMakeFiles/pad_server.dir/depend.make

# Include the progress variables for this target.
include pad/CMakeFiles/pad_server.dir/progress.make

# Include the compile flags for this target's objects.
include pad/CMakeFiles/pad_server.dir/flags.make

pad/CMakeFiles/pad_server.dir/src/server.cpp.o: pad/CMakeFiles/pad_server.dir/flags.make
pad/CMakeFiles/pad_server.dir/src/server.cpp.o: /home/me/progetto_labiagi/src/pad/src/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/me/progetto_labiagi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object pad/CMakeFiles/pad_server.dir/src/server.cpp.o"
	cd /home/me/progetto_labiagi/build/pad && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pad_server.dir/src/server.cpp.o -c /home/me/progetto_labiagi/src/pad/src/server.cpp

pad/CMakeFiles/pad_server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pad_server.dir/src/server.cpp.i"
	cd /home/me/progetto_labiagi/build/pad && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/me/progetto_labiagi/src/pad/src/server.cpp > CMakeFiles/pad_server.dir/src/server.cpp.i

pad/CMakeFiles/pad_server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pad_server.dir/src/server.cpp.s"
	cd /home/me/progetto_labiagi/build/pad && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/me/progetto_labiagi/src/pad/src/server.cpp -o CMakeFiles/pad_server.dir/src/server.cpp.s

pad/CMakeFiles/pad_server.dir/src/server.cpp.o.requires:

.PHONY : pad/CMakeFiles/pad_server.dir/src/server.cpp.o.requires

pad/CMakeFiles/pad_server.dir/src/server.cpp.o.provides: pad/CMakeFiles/pad_server.dir/src/server.cpp.o.requires
	$(MAKE) -f pad/CMakeFiles/pad_server.dir/build.make pad/CMakeFiles/pad_server.dir/src/server.cpp.o.provides.build
.PHONY : pad/CMakeFiles/pad_server.dir/src/server.cpp.o.provides

pad/CMakeFiles/pad_server.dir/src/server.cpp.o.provides.build: pad/CMakeFiles/pad_server.dir/src/server.cpp.o


# Object files for target pad_server
pad_server_OBJECTS = \
"CMakeFiles/pad_server.dir/src/server.cpp.o"

# External object files for target pad_server
pad_server_EXTERNAL_OBJECTS =

/home/me/progetto_labiagi/devel/lib/pad/server: pad/CMakeFiles/pad_server.dir/src/server.cpp.o
/home/me/progetto_labiagi/devel/lib/pad/server: pad/CMakeFiles/pad_server.dir/build.make
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/libroscpp.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/librosconsole.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/librosconsole_log4cxx.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/librosconsole_backend_interface.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/libxmlrpcpp.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/libroscpp_serialization.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/librostime.so
/home/me/progetto_labiagi/devel/lib/pad/server: /opt/ros/melodic/lib/libcpp_common.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/me/progetto_labiagi/devel/lib/pad/server: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/me/progetto_labiagi/devel/lib/pad/server: pad/CMakeFiles/pad_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/me/progetto_labiagi/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/me/progetto_labiagi/devel/lib/pad/server"
	cd /home/me/progetto_labiagi/build/pad && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pad_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
pad/CMakeFiles/pad_server.dir/build: /home/me/progetto_labiagi/devel/lib/pad/server

.PHONY : pad/CMakeFiles/pad_server.dir/build

pad/CMakeFiles/pad_server.dir/requires: pad/CMakeFiles/pad_server.dir/src/server.cpp.o.requires

.PHONY : pad/CMakeFiles/pad_server.dir/requires

pad/CMakeFiles/pad_server.dir/clean:
	cd /home/me/progetto_labiagi/build/pad && $(CMAKE_COMMAND) -P CMakeFiles/pad_server.dir/cmake_clean.cmake
.PHONY : pad/CMakeFiles/pad_server.dir/clean

pad/CMakeFiles/pad_server.dir/depend:
	cd /home/me/progetto_labiagi/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/me/progetto_labiagi/src /home/me/progetto_labiagi/src/pad /home/me/progetto_labiagi/build /home/me/progetto_labiagi/build/pad /home/me/progetto_labiagi/build/pad/CMakeFiles/pad_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : pad/CMakeFiles/pad_server.dir/depend

