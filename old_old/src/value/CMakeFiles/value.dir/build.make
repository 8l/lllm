# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fader/Desktop/lllm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fader/Desktop/lllm

# Include any dependencies generated for this target.
include src/value/CMakeFiles/value.dir/depend.make

# Include the progress variables for this target.
include src/value/CMakeFiles/value.dir/progress.make

# Include the compile flags for this target's objects.
include src/value/CMakeFiles/value.dir/flags.make

src/value/CMakeFiles/value.dir/Value.cpp.o: src/value/CMakeFiles/value.dir/flags.make
src/value/CMakeFiles/value.dir/Value.cpp.o: src/value/Value.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fader/Desktop/lllm/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/value/CMakeFiles/value.dir/Value.cpp.o"
	cd /home/fader/Desktop/lllm/src/value && clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/value.dir/Value.cpp.o -c /home/fader/Desktop/lllm/src/value/Value.cpp

src/value/CMakeFiles/value.dir/Value.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/value.dir/Value.cpp.i"
	cd /home/fader/Desktop/lllm/src/value && clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fader/Desktop/lllm/src/value/Value.cpp > CMakeFiles/value.dir/Value.cpp.i

src/value/CMakeFiles/value.dir/Value.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/value.dir/Value.cpp.s"
	cd /home/fader/Desktop/lllm/src/value && clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fader/Desktop/lllm/src/value/Value.cpp -o CMakeFiles/value.dir/Value.cpp.s

src/value/CMakeFiles/value.dir/Value.cpp.o.requires:
.PHONY : src/value/CMakeFiles/value.dir/Value.cpp.o.requires

src/value/CMakeFiles/value.dir/Value.cpp.o.provides: src/value/CMakeFiles/value.dir/Value.cpp.o.requires
	$(MAKE) -f src/value/CMakeFiles/value.dir/build.make src/value/CMakeFiles/value.dir/Value.cpp.o.provides.build
.PHONY : src/value/CMakeFiles/value.dir/Value.cpp.o.provides

src/value/CMakeFiles/value.dir/Value.cpp.o.provides.build: src/value/CMakeFiles/value.dir/Value.cpp.o

src/value/CMakeFiles/value.dir/builtins.cpp.o: src/value/CMakeFiles/value.dir/flags.make
src/value/CMakeFiles/value.dir/builtins.cpp.o: src/value/builtins.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fader/Desktop/lllm/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/value/CMakeFiles/value.dir/builtins.cpp.o"
	cd /home/fader/Desktop/lllm/src/value && clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/value.dir/builtins.cpp.o -c /home/fader/Desktop/lllm/src/value/builtins.cpp

src/value/CMakeFiles/value.dir/builtins.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/value.dir/builtins.cpp.i"
	cd /home/fader/Desktop/lllm/src/value && clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fader/Desktop/lllm/src/value/builtins.cpp > CMakeFiles/value.dir/builtins.cpp.i

src/value/CMakeFiles/value.dir/builtins.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/value.dir/builtins.cpp.s"
	cd /home/fader/Desktop/lllm/src/value && clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fader/Desktop/lllm/src/value/builtins.cpp -o CMakeFiles/value.dir/builtins.cpp.s

src/value/CMakeFiles/value.dir/builtins.cpp.o.requires:
.PHONY : src/value/CMakeFiles/value.dir/builtins.cpp.o.requires

src/value/CMakeFiles/value.dir/builtins.cpp.o.provides: src/value/CMakeFiles/value.dir/builtins.cpp.o.requires
	$(MAKE) -f src/value/CMakeFiles/value.dir/build.make src/value/CMakeFiles/value.dir/builtins.cpp.o.provides.build
.PHONY : src/value/CMakeFiles/value.dir/builtins.cpp.o.provides

src/value/CMakeFiles/value.dir/builtins.cpp.o.provides.build: src/value/CMakeFiles/value.dir/builtins.cpp.o

src/value/CMakeFiles/value.dir/ValueIO.cpp.o: src/value/CMakeFiles/value.dir/flags.make
src/value/CMakeFiles/value.dir/ValueIO.cpp.o: src/value/ValueIO.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fader/Desktop/lllm/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/value/CMakeFiles/value.dir/ValueIO.cpp.o"
	cd /home/fader/Desktop/lllm/src/value && clang++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/value.dir/ValueIO.cpp.o -c /home/fader/Desktop/lllm/src/value/ValueIO.cpp

src/value/CMakeFiles/value.dir/ValueIO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/value.dir/ValueIO.cpp.i"
	cd /home/fader/Desktop/lllm/src/value && clang++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fader/Desktop/lllm/src/value/ValueIO.cpp > CMakeFiles/value.dir/ValueIO.cpp.i

src/value/CMakeFiles/value.dir/ValueIO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/value.dir/ValueIO.cpp.s"
	cd /home/fader/Desktop/lllm/src/value && clang++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fader/Desktop/lllm/src/value/ValueIO.cpp -o CMakeFiles/value.dir/ValueIO.cpp.s

src/value/CMakeFiles/value.dir/ValueIO.cpp.o.requires:
.PHONY : src/value/CMakeFiles/value.dir/ValueIO.cpp.o.requires

src/value/CMakeFiles/value.dir/ValueIO.cpp.o.provides: src/value/CMakeFiles/value.dir/ValueIO.cpp.o.requires
	$(MAKE) -f src/value/CMakeFiles/value.dir/build.make src/value/CMakeFiles/value.dir/ValueIO.cpp.o.provides.build
.PHONY : src/value/CMakeFiles/value.dir/ValueIO.cpp.o.provides

src/value/CMakeFiles/value.dir/ValueIO.cpp.o.provides.build: src/value/CMakeFiles/value.dir/ValueIO.cpp.o

# Object files for target value
value_OBJECTS = \
"CMakeFiles/value.dir/Value.cpp.o" \
"CMakeFiles/value.dir/builtins.cpp.o" \
"CMakeFiles/value.dir/ValueIO.cpp.o"

# External object files for target value
value_EXTERNAL_OBJECTS =

src/value/libvalue.a: src/value/CMakeFiles/value.dir/Value.cpp.o
src/value/libvalue.a: src/value/CMakeFiles/value.dir/builtins.cpp.o
src/value/libvalue.a: src/value/CMakeFiles/value.dir/ValueIO.cpp.o
src/value/libvalue.a: src/value/CMakeFiles/value.dir/build.make
src/value/libvalue.a: src/value/CMakeFiles/value.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libvalue.a"
	cd /home/fader/Desktop/lllm/src/value && $(CMAKE_COMMAND) -P CMakeFiles/value.dir/cmake_clean_target.cmake
	cd /home/fader/Desktop/lllm/src/value && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/value.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/value/CMakeFiles/value.dir/build: src/value/libvalue.a
.PHONY : src/value/CMakeFiles/value.dir/build

src/value/CMakeFiles/value.dir/requires: src/value/CMakeFiles/value.dir/Value.cpp.o.requires
src/value/CMakeFiles/value.dir/requires: src/value/CMakeFiles/value.dir/builtins.cpp.o.requires
src/value/CMakeFiles/value.dir/requires: src/value/CMakeFiles/value.dir/ValueIO.cpp.o.requires
.PHONY : src/value/CMakeFiles/value.dir/requires

src/value/CMakeFiles/value.dir/clean:
	cd /home/fader/Desktop/lllm/src/value && $(CMAKE_COMMAND) -P CMakeFiles/value.dir/cmake_clean.cmake
.PHONY : src/value/CMakeFiles/value.dir/clean

src/value/CMakeFiles/value.dir/depend:
	cd /home/fader/Desktop/lllm && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fader/Desktop/lllm /home/fader/Desktop/lllm/src/value /home/fader/Desktop/lllm /home/fader/Desktop/lllm/src/value /home/fader/Desktop/lllm/src/value/CMakeFiles/value.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/value/CMakeFiles/value.dir/depend

