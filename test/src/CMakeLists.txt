include(all)

# Variables for this file
set(CUR_TARGET ${APP_NAME}_test_src)

set(SRC_ROOT root)

# Targets
add_library(${CUR_TARGET} INTERFACE)

set_source_root(${CUR_TARGET} ${SRC_ROOT})

# Collect all source files
file(GLOB_RECURSE SRC_FILES
    ${SRC_ROOT}/*.cpp
    ${SRC_ROOT}/*.h)

target_sources(${CUR_TARGET} INTERFACE ${SRC_FILES})

target_include_directories(${CUR_TARGET} INTERFACE ${SRC_ROOT})
