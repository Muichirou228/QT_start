# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appFirstQTQuick_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appFirstQTQuick_autogen.dir\\ParseCache.txt"
  "appFirstQTQuick_autogen"
  )
endif()
