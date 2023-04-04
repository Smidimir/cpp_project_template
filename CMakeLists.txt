cmake_minimum_required(VERSION 3.22.1)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(config)

project(${APP_NAME})

add_executable(${APP_NAME})

# Add source files
add_subdirectory(src)

get_target_property(SOURCE_GROUP_TREE_ROOT ${APP_NAME}_src SOURCE_GROUP_TREE_ROOT)
get_target_property(SOURCE_GROUP_TREE_FILES ${APP_NAME}_src SOURCE_GROUP_TREE_FILES)
source_group(TREE ${SOURCE_GROUP_TREE_ROOT} PREFIX ${APP_NAME} FILES ${SOURCE_GROUP_TREE_FILES})

# Configre platform
add_subdirectory(platform)

# Configure target
target_link_libraries(${APP_NAME} PRIVATE
    ${APP_NAME}_src
    ${APP_NAME}_platform)

# Configure compiler
target_compile_features(${APP_NAME}
    PRIVATE
        cxx_std_20)

# Configure libraries

find_package(GLEW REQUIRED)
find_package(GLUT REQUIRED)
find_package(glm REQUIRED)

target_link_libraries(${APP_NAME} PRIVATE
    GLEW::GLEW
    GLUT::GLUT
    glm::glm
)
