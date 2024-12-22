cmake_minimum_required(VERSION 3.16)
project(safecrypt)

set(CMAKE_CXX_STANDARD 17)

# Include directories
include_directories(${PROJECT_SOURCE_DIR}/include)

# Source files
file(GLOB_RECURSE SOURCES "${PROJECT_SOURCE_DIR}/src/*.cpp")

# Library
add_library(safecrypt ${SOURCES})

# Tests
enable_testing()
add_subdirectory(tests)

