# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\nahod\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\nahod\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\201.7223.86\bin\cmake\win\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Task__from_Lecture_02_.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Task__from_Lecture_02_.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Task__from_Lecture_02_.dir/flags.make

CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.obj: CMakeFiles/Task__from_Lecture_02_.dir/flags.make
CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Task__from_Lecture_02_.dir\main.cpp.obj -c "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\main.cpp"

CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\main.cpp" > CMakeFiles\Task__from_Lecture_02_.dir\main.cpp.i

CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\main.cpp" -o CMakeFiles\Task__from_Lecture_02_.dir\main.cpp.s

# Object files for target Task__from_Lecture_02_
Task__from_Lecture_02__OBJECTS = \
"CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.obj"

# External object files for target Task__from_Lecture_02_
Task__from_Lecture_02__EXTERNAL_OBJECTS =

Task__from_Lecture_02_.exe: CMakeFiles/Task__from_Lecture_02_.dir/main.cpp.obj
Task__from_Lecture_02_.exe: CMakeFiles/Task__from_Lecture_02_.dir/build.make
Task__from_Lecture_02_.exe: CMakeFiles/Task__from_Lecture_02_.dir/linklibs.rsp
Task__from_Lecture_02_.exe: CMakeFiles/Task__from_Lecture_02_.dir/objects1.rsp
Task__from_Lecture_02_.exe: CMakeFiles/Task__from_Lecture_02_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Task__from_Lecture_02_.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Task__from_Lecture_02_.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Task__from_Lecture_02_.dir/build: Task__from_Lecture_02_.exe

.PHONY : CMakeFiles/Task__from_Lecture_02_.dir/build

CMakeFiles/Task__from_Lecture_02_.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Task__from_Lecture_02_.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Task__from_Lecture_02_.dir/clean

CMakeFiles/Task__from_Lecture_02_.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)" "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)" "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\cmake-build-debug" "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\cmake-build-debug" "C:\Users\nahod\Documents\CodeBlocks\MSU\9 semester\DesigningLargeSystemsInCPP\Task (from Lecture 02)\cmake-build-debug\CMakeFiles\Task__from_Lecture_02_.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Task__from_Lecture_02_.dir/depend
