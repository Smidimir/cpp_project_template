include(all)

# Variables for this file
set(CUR_TARGET_INTERFACE ${COMMON_INTERFACE_TARGET_NAME})
set(CUR_TARGET ${COMMON_TARGET_NAME})

# Targets
add_library(${CUR_TARGET_INTERFACE} INTERFACE)
add_library(${CUR_TARGET} STATIC)

# Configure platform
add_subdirectory(platform)

# Configure sources
add_subdirectory(src)

source_group_from_target(${APP_NAME}_src ${CUR_TARGET})

# Configure libs
add_subdirectory(libs)

# Interface
target_compile_features(${CUR_TARGET_INTERFACE}
    INTERFACE
        cxx_std_20)

target_link_libraries(${CUR_TARGET_INTERFACE} INTERFACE
    ${APP_NAME}_src_inteface
    ${APP_NAME}_platform
    ${APP_NAME}_libs)

# Private
target_link_libraries(${CUR_TARGET} PRIVATE
    ${APP_NAME}_src)

# Public
target_link_libraries(${CUR_TARGET} PUBLIC
    ${CUR_TARGET_INTERFACE})
