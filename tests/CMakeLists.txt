file(GLOB TEST_SOURCES "${PROJECT_SOURCE_DIR}/tests/*.cpp")
add_executable(crypto-library_tests ${TEST_SOURCES})
target_link_libraries(crypto-library_tests crypto-library)
add_test(NAME crypto-library_tests COMMAND crypto-library_tests)

