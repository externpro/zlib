# ZLIB_FOUND - zlib was found
# ZLIB_INCLUDE_DIR - the zlib include directory
# ZLIB_LIBRARIES - the zlib libraries
set(prj zlib)
# this file (-config) installed to share/cmake by default (see top-level CMakeLists.txt)
get_filename_component(SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(XP_ROOTDIR "${SELF_DIR}/../../" ABSOLUTE)
# targets file (-targets) installed to lib${NUMBITS}/cmake
include(${XP_ROOTDIR}/lib${NUMBITS}/cmake/${prj}-targets.cmake)
string(TOUPPER ${prj} PRJ)
find_path(${PRJ}_INCLUDE_DIR zlib.h PATHS ${XP_ROOTDIR}/include/${prj} NO_DEFAULT_PATH)
set(${PRJ}_LIBRARIES zlibstatic)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(${prj}
  REQUIRED_VARS
    ${PRJ}_INCLUDE_DIR
    ${PRJ}_LIBRARIES
  )
mark_as_advanced(${PRJ}_INCLUDE_DIR ${PRJ}_LIBRARIES)
