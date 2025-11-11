cmake_minimum_required(VERSION 4.0.0)

project(cpp-cmake-template
        DESCRIPTION ""
        HOMEPAGE_URL ""
        LANGUAGES CXX C)

# Setup global project options and variables
include(cmake/ProjectDefaults.cmake)
include(cmake/ProjectOptions.cmake)

# Do not allow to build in root directory
include(cmake/PreventInSourceBuilds.cmake)

add_executable(${PROJECT_NAME} "src/main.cxx")
# add_library(${PROJECT_NAME} STATIC "src/main.cxx")

# Optional sanitizers
include(cmake/Sanitizers.cmake)
enable_sanitizers(${PROJECT_NAME}
                    ${ENABLE_SANITIZER_ADDRESS}
                    ${ENABLE_SANITIZER_LEAK}
                    ${ENABLE_SANITIZER_UNDEFINED}
                    ${ENABLE_SANITIZER_THREAD}
                    ${ENABLE_SANITIZER_MEMORY})

# Write .gitignore file ignoring all contents in the build dir
file (WRITE ${CMAKE_BINARY_DIR}/.gitignore "*")