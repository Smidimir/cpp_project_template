include(all)

# Variables for this file
set(CUR_TARGET ${APP_TARGET_NAME})

# Targets
add_executable(${CUR_TARGET})

# Configure sources
add_subdirectory(src)

source_group_from_target(${APP_NAME}_app_src ${CUR_TARGET})

# Configure libs
add_subdirectory(libs)

# Private
target_link_libraries(${CUR_TARGET} PRIVATE
        ${COMMON_TARGET_NAME}
        ${APP_NAME}_app_src
        ${APP_NAME}_app_libs)
