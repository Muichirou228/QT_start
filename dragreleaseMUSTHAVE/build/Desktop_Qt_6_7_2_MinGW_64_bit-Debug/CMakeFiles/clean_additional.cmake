# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appdragreleaseMUSTHAVE_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appdragreleaseMUSTHAVE_autogen.dir\\ParseCache.txt"
  "appdragreleaseMUSTHAVE_autogen"
  )
endif()
