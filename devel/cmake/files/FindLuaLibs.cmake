# Locate Lua library
# This module defines
#  LUALIBS_FOUND
#  LUA_LIBRARIES
#  LUA_INCLUDE_DIR
#

#=============================================================================
# Copyright 2007-2009 Kitware, Inc.
# Copyright 2011 Peter Colberg
#
# Distributed under the OSI-approved BSD License (the "License");
# see accompanying file Copyright.txt for details.
#
# This software is distributed WITHOUT ANY WARRANTY; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the License for more information.
#=============================================================================
# (To distribute this file outside of CMake, substitute the full
#  License text for the above reference.)

SET(MODLUA_VERSION $ENV{MODLUA_VERSION})

IF(MODLUA_VERSION)
  IF(MODLUA_VERSION MATCHES "^5\\.2$")
    find_path(LUA_INCLUDE_DIR lua.h
      HINTS
      $ENV{LUA_DIR}
      PATH_SUFFIXES include/lua-5.2
      PATHS
      ${LOCALBASE}
    )
    find_library(LUA_LIBRARY
      NAMES lua5.2
      HINTS
      $ENV{LUA_DIR}
      PATH_SUFFIXES lib
      PATHS
      ${LOCALBASE}
    )
  ELSE(MODLUA_VERSION MATCHES "^5\\.2$")
    find_path(LUA_INCLUDE_DIR lua.h
      HINTS
      $ENV{LUA_DIR}
      PATH_SUFFIXES include/lua-5.1
      PATHS
      ${LOCALBASE}
    )
    find_library(LUA_LIBRARY
      NAMES lua5.1
      HINTS
      $ENV{LUA_DIR}
      PATH_SUFFIXES lib
      PATHS
      ${LOCALBASE}
    )
  ENDIF(MODLUA_VERSION MATCHES "^5\\.2$")
ELSE(MODLUA_VERSION)
  find_path(LUA_INCLUDE_DIR lua.h
    HINTS
    $ENV{LUA_DIR}
    PATH_SUFFIXES include/lua-5.1 include/lua51 include/lua5.1 include/lua-5.2 include/lua52 include/lua5.2 include/lua include
    PATHS
    ~/Library/Frameworks
    /Library/Frameworks
    /usr/local
    /usr
    /sw # Fink
    /opt/local # DarwinPorts
    /opt/csw # Blastwave
    /opt
  )
  find_library(LUA_LIBRARY
    NAMES lua5.1 lua51 lua-5.1 lua5.2 lua52 lua-5.2 lua
    HINTS
    $ENV{LUA_DIR}
    PATH_SUFFIXES lib64 lib
    PATHS
    ~/Library/Frameworks
    /Library/Frameworks
    /usr/local
    /usr
    /sw
    /opt/local
    /opt/csw
    /opt
  )
ENDIF(MODLUA_VERSION)

if(LUA_LIBRARY)
  # include the math library for Unix
  if(UNIX AND NOT APPLE)
    find_library(LUA_MATH_LIBRARY m)
    set( LUA_LIBRARIES "${LUA_LIBRARY};${LUA_MATH_LIBRARY}" CACHE STRING "Lua Libraries")
  # For Windows and Mac, don't need to explicitly include the math library
  else(UNIX AND NOT APPLE)
    set( LUA_LIBRARIES "${LUA_LIBRARY}" CACHE STRING "Lua Libraries")
  endif(UNIX AND NOT APPLE)
endif(LUA_LIBRARY)

include(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LUALIBS_FOUND to TRUE if
# all listed variables are TRUE
find_package_handle_standard_args(LuaLibs DEFAULT_MSG LUA_LIBRARIES LUA_INCLUDE_DIR)

mark_as_advanced(
  LUA_INCLUDE_DIR
  LUA_LIBRARIES
  LUA_LIBRARY
  LUA_MATH_LIBRARY
)
