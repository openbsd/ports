# - Find provider for backtrace(3)
# Checks if OS supports backtrace(3) via either libc or custom library.
# This module defines the following variables:
#  Backtrace_HEADER       - The header file needed for backtrace(3). Cached.
#                           Could be forcibly set by user.
#  Backtrace_INCLUDE_DIRS - The include directories needed to use backtrace(3) header.
#  Backtrace_LIBRARIES    - The libraries (linker flags) needed to use backtrace(3), if any.
#  Backtrace_FOUND        - Is set if and only if backtrace(3) support detected.
#
# The following cache variables are also available to set or use:
#   Backtrace_LIBRARY     - The external library providing backtrace, if any.
#   Backtrace_INCLUDE_DIR - The directory holding the backtrace(3) header.
#
# Typical usage is to generate of header file using configure_file() with the
# contents like the following:
#  #cmakedefine01 Backtrace_FOUND
#  #if Backtrace_FOUND
#  # include <${Backtrace_HEADER}>
#  #endif
# And then reference that generated header file in actual source.

#=============================================================================
# Copyright (c) 2013, Vadim Zhukov <persgray@gmail.com>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.


include(CMakePushCheckState)
include(CheckSymbolExists)
include(FindPackageHandleStandardArgs)

# List of variables to be provided to find_package_handle_standard_args()
set(_Backtrace_STD_ARGS Backtrace_INCLUDE_DIR)

if(Backtrace_HEADER)
  set(_Backtrace_HEADER_TRY "${Backtrace_HEADER}")
else(Backtrace_HEADER)
  set(_Backtrace_HEADER_TRY "execinfo.h")
endif(Backtrace_HEADER)

find_path(Backtrace_INCLUDE_DIR "${_Backtrace_HEADER_TRY}")
set(Backtrace_INCLUDE_DIRS ${Backtrace_INCLUDE_DIR})

# First, check if we already have backtrace(), e.g., in libc
cmake_push_check_state(RESET)
set(CMAKE_REQUIRED_INCLUDES ${Backtrace_INCLUDE_DIRS})
check_symbol_exists("backtrace" "${_Backtrace_HEADER_TRY}" _Backtrace_SYM_FOUND)
cmake_pop_check_state()

if(_Backtrace_SYM_FOUND)
  set(Backtrace_LIBRARY)
  if(NOT Backtrace_FIND_QUIETLY)
    message(STATUS "backtrace facility detected in default set of libraries")
  endif()
else()
  # Check for external library, for non-glibc systems
  if(Backtrace_INCLUDE_DIR)
    # OpenBSD has libbacktrace renamed to libexecinfo
    find_library(Backtrace_LIBRARY "execinfo")
  elseif()     # respect user wishes
    set(_Backtrace_HEADER_TRY "backtrace.h")
    find_path(Backtrace_INCLUDE_DIR ${_Backtrace_HEADER_TRY})
    find_library(Backtrace_LIBRARY "backtrace")
  endif()

  # Prepend list with library path as it's more common practice
  set(_Backtrace_STD_ARGS Backtrace_LIBRARY ${_Backtrace_STD_ARGS})
endif()

set(Backtrace_LIBRARIES ${Backtrace_LIBRARY})
set(Backtrace_HEADER "${_Backtrace_HEADER_TRY}" CACHE STRING "Header providing backtrace(3) facility")

find_package_handle_standard_args(Backtrace FOUND_VAR Backtrace_FOUND REQUIRED_VARS ${_Backtrace_STD_ARGS})
mark_as_advanced(Backtrace_HEADER Backtrace_INCLUDE_DIR Backtrace_LIBRARY)
