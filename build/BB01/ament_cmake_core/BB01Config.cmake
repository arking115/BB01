# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_BB01_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED BB01_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(BB01_FOUND FALSE)
  elseif(NOT BB01_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(BB01_FOUND FALSE)
  endif()
  return()
endif()
set(_BB01_CONFIG_INCLUDED TRUE)

# output package information
if(NOT BB01_FIND_QUIETLY)
  message(STATUS "Found BB01: 0.0.0 (${BB01_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'BB01' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${BB01_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(BB01_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${BB01_DIR}/${_extra}")
endforeach()
