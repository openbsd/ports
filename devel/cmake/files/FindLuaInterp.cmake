# Locate Lua interpreter
# This module defines
#  LUAINTERP_FOUND
#  LUA_EXECUTABLE
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
SET(MODLUA_BIN $ENV{MODLUA_BIN})

IF(MODLUA_VERSION AND MODLUA_BIN)
  SET(LUA_EXECUTABLE "${MODLUA_BIN}")
ELSE(MODLUA_VERSION AND MODLUA_BIN)
  FIND_PROGRAM(LUA_EXECUTABLE
    NAMES lua51 lua5.1 lua-5.1 lua52 lua5.2 lua-5.2 lua
    HINTS
    $ENV{LUA_DIR}
    PATH_SUFFIXES bin
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
ENDIF(MODLUA_VERSION AND MODLUA_BIN)

INCLUDE(FindPackageHandleStandardArgs)
# handle the QUIETLY and REQUIRED arguments and set LUAINTERP_FOUND to TRUE if
# all listed variables are TRUE
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LuaInterp DEFAULT_MSG LUA_EXECUTABLE)

MARK_AS_ADVANCED(
  LUA_EXECUTABLE
)
