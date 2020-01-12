# GTest
find_package(GTest REQUIRED)

# Qt5
find_package(Qt5 COMPONENTS Core REQUIRED)

include_directories(
    ${GTEST_INCLUDE_DIRS}
    ${Qt5Core_INCLUDE_DIRS}
    ${CMAKE_CURRENT_SOURCE_DIR}
)

configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake-definitions.h.in
    ${CMAKE_CURRENT_SOURCE_DIR}/cmake-definitions.h
)

# Add test cpp file
add_executable(test-hello
    main.cpp
    hello-test.cpp
)

# Link test hello against gtest & gtest_main
target_link_libraries(test-hello
    gtest
    gtest_main
    Qt5::Core
)

add_test(NAME test-hello COMMAND $<TARGET_FILE:test-hello>)
