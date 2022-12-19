cmake_minimum_required(VERSION 3.0)
project(jane_street_puzzles)

set(CMAKE_CXX_STANDARD 20)

set(Boost_USE_STATIC_LIBS OFF) 
set(Boost_USE_MULTITHREADED ON)  
set(Boost_USE_STATIC_RUNTIME OFF) 
find_package(Boost 1.74 COMPONENTS system filesystem REQUIRED)

include_directories(${Boost_INCLUDE_DIRS})
add_executable(puzzle_solution $ENV{PUZZLE}.cpp) 
target_link_libraries(puzzle_solution ${Boost_LIBRARIES})
