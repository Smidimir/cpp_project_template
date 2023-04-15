include(all)

# Variables for this file
set(CUR_TARGET ${APP_NAME}_libs)

# Targets
add_library(${CUR_TARGET} INTERFACE)

# Configure your libs here
include(configure_libs.cmake)
