cmake_minimum_required(VERSION 4.0)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(all)

project(${APP_NAME})

# Targets
add_subdirectory(common)
add_subdirectory(app)
add_subdirectory(test)

