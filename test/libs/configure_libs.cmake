find_package(GTest REQUIRED)

target_link_libraries(${CUR_TARGET} INTERFACE
    GTest::gtest
)
