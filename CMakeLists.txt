cmake_minimum_required(VERSION 3.16)
project(SafeCrypt)

# Set the C++ standard to C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add the source directory paths
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add source files using file(GLOB_RECURSE) for all cpp files in src/
file(GLOB_RECURSE SOURCES "${PROJECT_SOURCE_DIR}/src/*.cpp")

# Create the library target for safecrypt
add_library(SafeCrypt ${SOURCES})

# Set include directories specifically for the safecrypt target
target_include_directories(SafeCrypt PUBLIC
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/src
)

# Enable testing
enable_testing()

# Add subdirectory for tests
add_subdirectory(tests)
