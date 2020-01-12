cmake_minimum_required(VERSION 3.1.0)

project(HelloTests)

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# Qt5
find_package(Qt5 COMPONENTS Core REQUIRED)

include_directories(
    ${Qt5Core_INCLUDE_DIRS}
)

add_executable(HelloTests
    main.cpp
)

target_link_libraries(HelloTests
    Qt5::Core
)

enable_testing()

add_subdirectory(test)
