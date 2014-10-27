# ZLIB_FOUND - zlib was found
# ZLIB_INCLUDE_DIR - the zlib include directory
# ZLIB_LIBRARIES - the zlib libraries
set(prj zlib)
# this file (-config) installed to share/cmake by default (see top-level CMakeLists.txt)
get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
# targets file (-targets) installed to lib${NUMBITS}/cmake
include(${SELF_DIR}/../../lib${NUMBITS}/cmake/${prj}-targets.cmake)
string(TOUPPER ${prj} PRJ)
get_filename_component(${PRJ}_INCLUDE_DIR "${SELF_DIR}/../../include" ABSOLUTE)
set(${PRJ}_LIBRARIES zlib)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(${prj}
  REQUIRED_VARS
    ${PRJ}_INCLUDE_DIR
    ${PRJ}_LIBRARIES
  )
mark_as_advanced(${PRJ}_INCLUDE_DIR ${PRJ}_LIBRARIES)
