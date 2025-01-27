# CXX-20 as default
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Build release by default (if not using presets)
if (NOT DEFINED CMAKE_BUILD_TYPE AND NOT GENERATOR_IS_MULTI_CONFIG)
  set(CMAKE_BUILD_TYPE Release)
  message(STATUS "Settings up default CMAKE_BUILD_TYPE to ${CMAKE_BUILD_TYPE}")
endif()

# Optional sanitizers
option(ENABLE_SANITIZER_ADDRESS "Enable address sanitizer" OFF)
option(ENABLE_SANITIZER_LEAK "Enable leak sanitizer" OFF)
option(ENABLE_SANITIZER_UNDEFINED "Enable undefined behavior sanitizer" OFF)
option(ENABLE_SANITIZER_THREAD "Enable thread sanitizer" OFF)
option(ENABLE_SANITIZER_MEMORY "Enable memory sanitizer" OFF)
