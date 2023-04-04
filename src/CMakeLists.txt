include(config)

set(CUR_TARGET ${APP_NAME}_src)

add_library(${CUR_TARGET} INTERFACE)

set(SRC_ROOT root)

set(SRC_FILES)
file(GLOB_RECURSE SRC_FILES
    ${SRC_ROOT}/*.cpp
    ${SRC_ROOT}/*.h)

target_sources(${CUR_TARGET} INTERFACE ${SRC_FILES})

set(${APP_NAME}_SRC_FILES ${SRC_FILES} PARENT_SCOPE)

# export information for source_group(TREE ...) in module with add_executable
set_target_properties(${CUR_TARGET} PROPERTIES 
    SOURCE_GROUP_TREE_ROOT "${CMAKE_CURRENT_SOURCE_DIR}/${SRC_ROOT}"
    SOURCE_GROUP_TREE_FILES "${SRC_FILES}"
)

target_include_directories(${CUR_TARGET} INTERFACE ${SRC_ROOT})
