# - Find inotify implementation
# Checks if OS supports inotify mechanism.
# This module defines the following variables:
#  Inotify_INCLUDE_DIRS - The include directories needed to use libinotify.
#  Inotify_LIBRARIES    - The libraries (linker flags) needed to use libinotify, if any.
#  Inotify_FOUND        - Is set if and only if libinotify was detected.
#
# The following cache variables are also available to set or use:
#   Inotify_LIBRARY     - The external library providing inotify_*(), if any.
#   Inotify_INCLUDE_DIR - The directory holding the libinotify header.

#=============================================================================
# Copyright (c) 2014, Vadim Zhukov <persgray@gmail.com>
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
include(CheckFunctionExists)
include(FindPackageHandleStandardArgs)

find_path(Inotify_INCLUDE_DIR sys/inotify.h PATH_SUFFIXES inotify)
set(_Inotify_STD_ARGS Inotify_INCLUDE_DIR)

# First, check if we already have inotify_*(), e.g., in libc
cmake_push_check_state(RESET)
set(CMAKE_REQUIRED_INCLUDES ${Inotify_INCLUDE_DIR})
check_function_exists("inotify_add_watch" _Inotify_FUNC_FOUND)
cmake_pop_check_state()

if(NOT _Inotify_FUNC_FOUND)
  find_library(Inotify_LIBRARY inotify PATH_SUFFIXES inotify)
  set(_Inotify_STD_ARGS Inotify_LIBRARY ${_Inotify_STD_ARGS})
endif()

set(Inotify_INCLUDE_DIRS ${Inotify_INCLUDE_DIR})
set(Inotify_LIBRARIES ${Inotify_LIBRARY})

find_package_handle_standard_args(Inotify
    FOUND_VAR Inotify_FOUND
    REQUIRED_VARS ${_Inotify_STD_ARGS}
    )

mark_as_advanced(Inotify_INCLUDE_DIR Inotify_LIBRARY)
