include(all)

# Variables for this file
set(CUR_TARGET_INTERFACE ${APP_NAME}_src_inteface)
set(CUR_TARGET ${APP_NAME}_src)

set(SRC_ROOT root)

# Targets
add_library(${CUR_TARGET_INTERFACE} INTERFACE)
add_library(${CUR_TARGET} INTERFACE)

set_source_root(${CUR_TARGET} ${SRC_ROOT})

# Collect all source files
file(GLOB_RECURSE SRC_FILES
    ${SRC_ROOT}/*.cpp
    ${SRC_ROOT}/*.h)

# Interface
target_link_libraries(${CUR_TARGET} INTERFACE ${CUR_TARGET_INTERFACE})

# Private
target_sources(${CUR_TARGET} INTERFACE ${SRC_FILES})

target_include_directories(${CUR_TARGET_INTERFACE} INTERFACE ${SRC_ROOT})
