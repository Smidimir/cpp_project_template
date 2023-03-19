cmake_minimum_required(VERSION 3.22.1)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(config)

project(${APP_NAME})

add_executable(${APP_NAME})

add_subdirectory(src)

add_subdirectory(platform)

target_compile_features(${APP_NAME}
    PRIVATE
        cxx_std_20)
