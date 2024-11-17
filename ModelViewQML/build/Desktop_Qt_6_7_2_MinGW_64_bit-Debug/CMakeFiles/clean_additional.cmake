# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appModelViewQML_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appModelViewQML_autogen.dir\\ParseCache.txt"
  "appModelViewQML_autogen"
  )
endif()
