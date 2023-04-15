include(all)

set(CUR_TARGET ${APP_NAME}_compiler)

add_library(${CUR_TARGET} INTERFACE)

if(MSVC)
    add_subdirectory(msvc)
    target_link_libraries(${CUR_TARGET} INTERFACE ${APP_NAME}_msvc)
endif()
