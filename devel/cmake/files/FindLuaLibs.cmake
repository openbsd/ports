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
SET(MODLUA_INCL_DIR $ENV{MODLUA_INCL_DIR})

IF(MODLUA_VERSION AND MODLUA_INCL_DIR)
  SET(LUA_INCLUDE_DIR "${MODLUA_INCL_DIR}")
  FIND_LIBRARY(LUA_LIBRARY
    NAMES lua${MODLUA_VERSION}
    HINTS
    $ENV{LUA_DIR}
    PATH_SUFFIXES lib
    PATHS
    ${LOCALBASE}
  )
ELSE(MODLUA_VERSION AND MODLUA_INCL_DIR)
  FIND_PATH(LUA_INCLUDE_DIR lua.h
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
  FIND_LIBRARY(LUA_LIBRARY
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
ENDIF(MODLUA_VERSION AND MODLUA_INCL_DIR)

IF(LUA_LIBRARY)
  # include the math library for Unix
  IF(UNIX AND NOT APPLE)
    FIND_LIBRARY(LUA_MATH_LIBRARY m)
    SET(LUA_LIBRARIES "${LUA_LIBRARY};${LUA_MATH_LIBRARY}" CACHE STRING "Lua Libraries")
  # For Windows and Mac, don't need to explicitly include the math library
  ELSE(UNIX AND NOT APPLE)
    SET(LUA_LIBRARIES "${LUA_LIBRARY}" CACHE STRING "Lua Libraries")
  ENDIF(UNIX AND NOT APPLE)
ENDIF(LUA_LIBRARY)

INCLUDE(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LUALIBS_FOUND to TRUE if
# all listed variables are TRUE
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LuaLibs DEFAULT_MSG LUA_LIBRARIES LUA_INCLUDE_DIR)

MARK_AS_ADVANCED(
  LUA_INCLUDE_DIR
  LUA_LIBRARIES
  LUA_LIBRARY
  LUA_MATH_LIBRARY
)
