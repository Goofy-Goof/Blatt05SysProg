# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/src.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/src.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/src.dir/flags.make

CMakeFiles/src.dir/bakery.c.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/bakery.c.o: ../bakery.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/src.dir/bakery.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/src.dir/bakery.c.o   -c "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/bakery.c"

CMakeFiles/src.dir/bakery.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/src.dir/bakery.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/bakery.c" > CMakeFiles/src.dir/bakery.c.i

CMakeFiles/src.dir/bakery.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/src.dir/bakery.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/bakery.c" -o CMakeFiles/src.dir/bakery.c.s

CMakeFiles/src.dir/management.c.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/management.c.o: ../management.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/src.dir/management.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/src.dir/management.c.o   -c "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/management.c"

CMakeFiles/src.dir/management.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/src.dir/management.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/management.c" > CMakeFiles/src.dir/management.c.i

CMakeFiles/src.dir/management.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/src.dir/management.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/management.c" -o CMakeFiles/src.dir/management.c.s

CMakeFiles/src.dir/order.c.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/order.c.o: ../order.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/src.dir/order.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/src.dir/order.c.o   -c "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/order.c"

CMakeFiles/src.dir/order.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/src.dir/order.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/order.c" > CMakeFiles/src.dir/order.c.i

CMakeFiles/src.dir/order.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/src.dir/order.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/order.c" -o CMakeFiles/src.dir/order.c.s

CMakeFiles/src.dir/supplier.c.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/supplier.c.o: ../supplier.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/src.dir/supplier.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/src.dir/supplier.c.o   -c "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/supplier.c"

CMakeFiles/src.dir/supplier.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/src.dir/supplier.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/supplier.c" > CMakeFiles/src.dir/supplier.c.i

CMakeFiles/src.dir/supplier.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/src.dir/supplier.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/supplier.c" -o CMakeFiles/src.dir/supplier.c.s

CMakeFiles/src.dir/warehouse.c.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/warehouse.c.o: ../warehouse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/src.dir/warehouse.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/src.dir/warehouse.c.o   -c "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/warehouse.c"

CMakeFiles/src.dir/warehouse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/src.dir/warehouse.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/warehouse.c" > CMakeFiles/src.dir/warehouse.c.i

CMakeFiles/src.dir/warehouse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/src.dir/warehouse.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/warehouse.c" -o CMakeFiles/src.dir/warehouse.c.s

CMakeFiles/src.dir/worker.c.o: CMakeFiles/src.dir/flags.make
CMakeFiles/src.dir/worker.c.o: ../worker.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/src.dir/worker.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/src.dir/worker.c.o   -c "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/worker.c"

CMakeFiles/src.dir/worker.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/src.dir/worker.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/worker.c" > CMakeFiles/src.dir/worker.c.i

CMakeFiles/src.dir/worker.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/src.dir/worker.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/worker.c" -o CMakeFiles/src.dir/worker.c.s

# Object files for target src
src_OBJECTS = \
"CMakeFiles/src.dir/bakery.c.o" \
"CMakeFiles/src.dir/management.c.o" \
"CMakeFiles/src.dir/order.c.o" \
"CMakeFiles/src.dir/supplier.c.o" \
"CMakeFiles/src.dir/warehouse.c.o" \
"CMakeFiles/src.dir/worker.c.o"

# External object files for target src
src_EXTERNAL_OBJECTS =

src: CMakeFiles/src.dir/bakery.c.o
src: CMakeFiles/src.dir/management.c.o
src: CMakeFiles/src.dir/order.c.o
src: CMakeFiles/src.dir/supplier.c.o
src: CMakeFiles/src.dir/warehouse.c.o
src: CMakeFiles/src.dir/worker.c.o
src: CMakeFiles/src.dir/build.make
src: CMakeFiles/src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Linking C executable src"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/src.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/src.dir/build: src

.PHONY : CMakeFiles/src.dir/build

CMakeFiles/src.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/src.dir/cmake_clean.cmake
.PHONY : CMakeFiles/src.dir/clean

CMakeFiles/src.dir/depend:
	cd "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src" "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src" "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug" "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug" "/Users/artemsereda/Documents/TI/2.Sem/SysProg/Blatt04/Vorgabe (1)/src/cmake-build-debug/CMakeFiles/src.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/src.dir/depend

