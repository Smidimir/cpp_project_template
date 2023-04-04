include(config)

set(CUR_TARGET ${APP_NAME}_platform)

add_library(${CUR_TARGET} INTERFACE)

add_subdirectory(compiler)
target_link_libraries(${CUR_TARGET} INTERFACE ${APP_NAME}_compiler)
