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
CMAKE_SOURCE_DIR = /home/user1/CS481/hw3/hw3-rick6w

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user1/CS481/hw3/hw3-rick6w/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_queue_lock.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_queue_lock.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_queue_lock.dir/flags.make

tests/CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.o: tests/CMakeFiles/test_queue_lock.dir/flags.make
tests/CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.o: ../tests/test_queue_lock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user1/CS481/hw3/hw3-rick6w/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.o"
	cd /home/user1/CS481/hw3/hw3-rick6w/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.o -c /home/user1/CS481/hw3/hw3-rick6w/tests/test_queue_lock.cpp

tests/CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.i"
	cd /home/user1/CS481/hw3/hw3-rick6w/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user1/CS481/hw3/hw3-rick6w/tests/test_queue_lock.cpp > CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.i

tests/CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.s"
	cd /home/user1/CS481/hw3/hw3-rick6w/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user1/CS481/hw3/hw3-rick6w/tests/test_queue_lock.cpp -o CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.s

# Object files for target test_queue_lock
test_queue_lock_OBJECTS = \
"CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.o"

# External object files for target test_queue_lock
test_queue_lock_EXTERNAL_OBJECTS =

tests/test_queue_lock: tests/CMakeFiles/test_queue_lock.dir/test_queue_lock.cpp.o
tests/test_queue_lock: tests/CMakeFiles/test_queue_lock.dir/build.make
tests/test_queue_lock: libhw3_queue.a
tests/test_queue_lock: libgoogletest.a
tests/test_queue_lock: tests/CMakeFiles/test_queue_lock.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user1/CS481/hw3/hw3-rick6w/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_queue_lock"
	cd /home/user1/CS481/hw3/hw3-rick6w/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_queue_lock.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test_queue_lock.dir/build: tests/test_queue_lock

.PHONY : tests/CMakeFiles/test_queue_lock.dir/build

tests/CMakeFiles/test_queue_lock.dir/clean:
	cd /home/user1/CS481/hw3/hw3-rick6w/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_queue_lock.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_queue_lock.dir/clean

tests/CMakeFiles/test_queue_lock.dir/depend:
	cd /home/user1/CS481/hw3/hw3-rick6w/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user1/CS481/hw3/hw3-rick6w /home/user1/CS481/hw3/hw3-rick6w/tests /home/user1/CS481/hw3/hw3-rick6w/build /home/user1/CS481/hw3/hw3-rick6w/build/tests /home/user1/CS481/hw3/hw3-rick6w/build/tests/CMakeFiles/test_queue_lock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test_queue_lock.dir/depend

