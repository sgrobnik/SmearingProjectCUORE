# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /vast/palmer/apps/avx.grace/software/CMake/3.20.1-GCCcore-10.2.0/bin/cmake

# The command to remove a file.
RM = /vast/palmer/apps/avx.grace/software/CMake/3.20.1-GCCcore-10.2.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dt592/Geant4Work/gamma_sim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dt592/Geant4Work/gamma_sim/gamma_sim-build

# Include any dependencies generated for this target.
include CMakeFiles/gamma_sim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/gamma_sim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/gamma_sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gamma_sim.dir/flags.make

CMakeFiles/gamma_sim.dir/gamma_sim.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/gamma_sim.cc.o: ../gamma_sim.cc
CMakeFiles/gamma_sim.dir/gamma_sim.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gamma_sim.dir/gamma_sim.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/gamma_sim.cc.o -MF CMakeFiles/gamma_sim.dir/gamma_sim.cc.o.d -o CMakeFiles/gamma_sim.dir/gamma_sim.cc.o -c /home/dt592/Geant4Work/gamma_sim/gamma_sim.cc

CMakeFiles/gamma_sim.dir/gamma_sim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/gamma_sim.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/gamma_sim.cc > CMakeFiles/gamma_sim.dir/gamma_sim.cc.i

CMakeFiles/gamma_sim.dir/gamma_sim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/gamma_sim.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/gamma_sim.cc -o CMakeFiles/gamma_sim.dir/gamma_sim.cc.s

CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o: ../ActionInitialization.cc
CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o -MF CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o.d -o CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o -c /home/dt592/Geant4Work/gamma_sim/ActionInitialization.cc

CMakeFiles/gamma_sim.dir/ActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/ActionInitialization.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/ActionInitialization.cc > CMakeFiles/gamma_sim.dir/ActionInitialization.cc.i

CMakeFiles/gamma_sim.dir/ActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/ActionInitialization.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/ActionInitialization.cc -o CMakeFiles/gamma_sim.dir/ActionInitialization.cc.s

CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o: ../DetectorConstruction.cc
CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o -MF CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o.d -o CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o -c /home/dt592/Geant4Work/gamma_sim/DetectorConstruction.cc

CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/DetectorConstruction.cc > CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.i

CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/DetectorConstruction.cc -o CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.s

CMakeFiles/gamma_sim.dir/EventAction.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/EventAction.cc.o: ../EventAction.cc
CMakeFiles/gamma_sim.dir/EventAction.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/gamma_sim.dir/EventAction.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/EventAction.cc.o -MF CMakeFiles/gamma_sim.dir/EventAction.cc.o.d -o CMakeFiles/gamma_sim.dir/EventAction.cc.o -c /home/dt592/Geant4Work/gamma_sim/EventAction.cc

CMakeFiles/gamma_sim.dir/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/EventAction.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/EventAction.cc > CMakeFiles/gamma_sim.dir/EventAction.cc.i

CMakeFiles/gamma_sim.dir/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/EventAction.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/EventAction.cc -o CMakeFiles/gamma_sim.dir/EventAction.cc.s

CMakeFiles/gamma_sim.dir/PhysicsList.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/PhysicsList.cc.o: ../PhysicsList.cc
CMakeFiles/gamma_sim.dir/PhysicsList.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/gamma_sim.dir/PhysicsList.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/PhysicsList.cc.o -MF CMakeFiles/gamma_sim.dir/PhysicsList.cc.o.d -o CMakeFiles/gamma_sim.dir/PhysicsList.cc.o -c /home/dt592/Geant4Work/gamma_sim/PhysicsList.cc

CMakeFiles/gamma_sim.dir/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/PhysicsList.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/PhysicsList.cc > CMakeFiles/gamma_sim.dir/PhysicsList.cc.i

CMakeFiles/gamma_sim.dir/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/PhysicsList.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/PhysicsList.cc -o CMakeFiles/gamma_sim.dir/PhysicsList.cc.s

CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o: ../PrimaryGeneratorAction.cc
CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o -MF CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o -c /home/dt592/Geant4Work/gamma_sim/PrimaryGeneratorAction.cc

CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/PrimaryGeneratorAction.cc > CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.i

CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/PrimaryGeneratorAction.cc -o CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.s

CMakeFiles/gamma_sim.dir/RunAction.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/RunAction.cc.o: ../RunAction.cc
CMakeFiles/gamma_sim.dir/RunAction.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/gamma_sim.dir/RunAction.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/RunAction.cc.o -MF CMakeFiles/gamma_sim.dir/RunAction.cc.o.d -o CMakeFiles/gamma_sim.dir/RunAction.cc.o -c /home/dt592/Geant4Work/gamma_sim/RunAction.cc

CMakeFiles/gamma_sim.dir/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/RunAction.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/RunAction.cc > CMakeFiles/gamma_sim.dir/RunAction.cc.i

CMakeFiles/gamma_sim.dir/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/RunAction.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/RunAction.cc -o CMakeFiles/gamma_sim.dir/RunAction.cc.s

CMakeFiles/gamma_sim.dir/SteppingAction.cc.o: CMakeFiles/gamma_sim.dir/flags.make
CMakeFiles/gamma_sim.dir/SteppingAction.cc.o: ../SteppingAction.cc
CMakeFiles/gamma_sim.dir/SteppingAction.cc.o: CMakeFiles/gamma_sim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/gamma_sim.dir/SteppingAction.cc.o"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/gamma_sim.dir/SteppingAction.cc.o -MF CMakeFiles/gamma_sim.dir/SteppingAction.cc.o.d -o CMakeFiles/gamma_sim.dir/SteppingAction.cc.o -c /home/dt592/Geant4Work/gamma_sim/SteppingAction.cc

CMakeFiles/gamma_sim.dir/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gamma_sim.dir/SteppingAction.cc.i"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dt592/Geant4Work/gamma_sim/SteppingAction.cc > CMakeFiles/gamma_sim.dir/SteppingAction.cc.i

CMakeFiles/gamma_sim.dir/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gamma_sim.dir/SteppingAction.cc.s"
	/gpfs/loomis/apps/avx/software/GCCcore/10.2.0/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dt592/Geant4Work/gamma_sim/SteppingAction.cc -o CMakeFiles/gamma_sim.dir/SteppingAction.cc.s

# Object files for target gamma_sim
gamma_sim_OBJECTS = \
"CMakeFiles/gamma_sim.dir/gamma_sim.cc.o" \
"CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o" \
"CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o" \
"CMakeFiles/gamma_sim.dir/EventAction.cc.o" \
"CMakeFiles/gamma_sim.dir/PhysicsList.cc.o" \
"CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/gamma_sim.dir/RunAction.cc.o" \
"CMakeFiles/gamma_sim.dir/SteppingAction.cc.o"

# External object files for target gamma_sim
gamma_sim_EXTERNAL_OBJECTS =

gamma_sim: CMakeFiles/gamma_sim.dir/gamma_sim.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/ActionInitialization.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/DetectorConstruction.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/EventAction.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/PhysicsList.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/PrimaryGeneratorAction.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/RunAction.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/SteppingAction.cc.o
gamma_sim: CMakeFiles/gamma_sim.dir/build.make
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4Tree.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4FR.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4GMocren.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4visHepRep.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4RayTracer.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4VRML.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4vis_management.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4modeling.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4interfaces.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4persistency.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4error_propagation.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4readout.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4physicslists.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4tasking.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4parmodels.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4run.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4event.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4tracking.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4processes.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4analysis.so
gamma_sim: /gpfs/loomis/apps/avx/software/expat/2.2.9-GCCcore-10.2.0/lib/libexpat.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4digits_hits.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4track.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4particles.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4geometry.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4materials.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4zlib.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4graphics_reps.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4intercoms.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4global.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4clhep.so
gamma_sim: /gpfs/loomis/apps/avx/software/Geant4/10.7-GCCcore-10.2.0/lib64/libG4ptl.so.0.0.2
gamma_sim: CMakeFiles/gamma_sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable gamma_sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gamma_sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gamma_sim.dir/build: gamma_sim
.PHONY : CMakeFiles/gamma_sim.dir/build

CMakeFiles/gamma_sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gamma_sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gamma_sim.dir/clean

CMakeFiles/gamma_sim.dir/depend:
	cd /home/dt592/Geant4Work/gamma_sim/gamma_sim-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dt592/Geant4Work/gamma_sim /home/dt592/Geant4Work/gamma_sim /home/dt592/Geant4Work/gamma_sim/gamma_sim-build /home/dt592/Geant4Work/gamma_sim/gamma_sim-build /home/dt592/Geant4Work/gamma_sim/gamma_sim-build/CMakeFiles/gamma_sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gamma_sim.dir/depend

