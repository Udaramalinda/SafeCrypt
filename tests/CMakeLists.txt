# Add the path for Google Test
find_package(GTest REQUIRED)

# Collect all test source files
file(GLOB TEST_SOURCES "${PROJECT_SOURCE_DIR}/tests/*.cpp")

# Create the test executable
add_executable(SafeCrypt_tests ${TEST_SOURCES})

# Link the SafeCrypt library and Google Test to the test executable
target_link_libraries(SafeCrypt_tests SafeCrypt GTest::GTest GTest::Main)

# Add a test to CTest (optional but useful for integration with continuous integration systems)
add_test(NAME SafeCrypt_tests COMMAND SafeCrypt_tests)
