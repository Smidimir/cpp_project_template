include(config)

set(SRC_ROOT root)

set(SRC_FILES)
file(GLOB_RECURSE SRC_FILES
    ${SRC_ROOT}/*.cpp
    ${SRC_ROOT}/*.h)

target_sources(${APP_NAME} PRIVATE ${SRC_FILES})

target_include_directories(${APP_NAME} PRIVATE ${SRC_ROOT})
