# - Find provider for backtrace(3)
# Checks if OS supports backtrace(3) via either libc or custom library.
# This module defines the following variables:
#  BACKTRACE_HEADER       - header file needed for backtrace(3)
#  BACKTRACE_INCLUDE_DIR  - where to find ${BACKTRACE_HEADER}
#  BACKTRACE_LIBRARIES    - libraries needed for backtrace
#  BACKTRACE_FOUND        - is set if and only if backtrace(3) support detected
#
#
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
set(_BACKTRACE_STD_ARGS BACKTRACE_INCLUDE_DIR)

set(BACKTRACE_HEADER "execinfo.h")
find_path(BACKTRACE_INCLUDE_DIR ${BACKTRACE_HEADER})

# First, check if we already have backtrace(), e.g., in libc
cmake_push_check_state()
set(CMAKE_REQUIRED_INCLUDES ${CMAKE_REQUIRED_INCLUDES} ${BACKTRACE_INCLUDE_DIR})
check_symbol_exists("backtrace" "execinfo.h" _BACKTRACE_SYM_FOUND)
cmake_pop_check_state()

if(_BACKTRACE_SYM_FOUND)
	# Warning: CMAKE_REQUIRED_LIBRARIES could contain non-paths, so
	# don't add BACKTRACE_LIBRARIES to standard args list in this case.
	set(BACKTRACE_LIBRARIES ${CMAKE_REQUIRED_LIBRARIES})
	if(NOT BACKTRACE_FIND_QUIETLY)
		message("backtrace detected in default set of libraries: "
		        ${BACKTRACE_LIBRARIES})
	endif(NOT BACKTRACE_FIND_QUIETLY)
else(_BACKTRACE_SYM_FOUND)
	# Check for external library, for non-glibc systems
	if(BACKTRACE_INCLUDE_DIR)
		# OpenBSD has libbacktrace renamed to libexecinfo
		find_library(BACKTRACE_LIBRARIES "execinfo")
	else(BACKTRACE_INCLUDE_DIR)
		set(BACKTRACE_HEADER "backtrace.h")
		find_path(BACKTRACE_INCLUDE_DIR ${BACKTRACE_HEADER})
		find_library(BACKTRACE_LIBRARIES "backtrace")
	endif(BACKTRACE_INCLUDE_DIR)

	# Prepend list with library path as it's more common practice
	set(_BACKTRACE_STD_ARGS BACKTRACE_LIBRARIES ${_BACKTRACE_STD_ARGS})
endif(_BACKTRACE_SYM_FOUND)

find_package_handle_standard_args(backtrace DEFAULT_MSG ${_BACKTRACE_STD_ARGS})
mark_as_advanced(BACKTRACE_HEADER BACKTRACE_INCLUDE_DIR BACKTRACE_LIBRARIES)
