# - try to find LibRaw
#
# The following variables could be set by user before search:
#  LIBRAW_USE_THREADS  - if true, threads-aware library will be looked up
#
# If found, the following variables will be set:
#  LIBRAW_FOUND        - always true if libraw was found
#  LIBRAW_INCLUDE_DIRS - list of directories to search for libraw/*.h
#  LIBRAW_LIBRARIES    - list of libraries needed to link to
#
#
# Copyright (c) Vadim Zhukov <persgray@gmail.com>, 2013
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


include(FindPackageHandleStandardArgs)

set(LIBRAW_USE_THREADS On CACHE Bool "Search for threads-aware version of library")

if(LIBRAW_USE_THREADS)
	find_library(LIBRAW_LIBRARY NAMES raw_r)
else(LIBRAW_USE_THREADS)
	find_library(LIBRAW_LIBRARY NAMES raw)
endif(LIBRAW_USE_THREADS)

find_path(LIBRAW_INCLUDE_DIR NAMES libraw/libraw.h)

if(LIBRAW_LIBRARY AND LIBRAW_INCLUDE_DIR)
	set(LIBRAW_LIBRARIES ${LIBRAW_LIBRARY})
	set(LIBRAW_INCLUDE_DIRS ${LIBRAW_INCLUDE_DIR})
endif(LIBRAW_LIBRARY AND LIBRAW_INCLUDE_DIR)

find_package_handle_standard_args(LibRaw DEFAULT_MSG LIBRAW_LIBRARIES LIBRAW_INCLUDE_DIRS)

mark_as_advanced(LIBRAW_INCLUDE_DIR LIBRAW_LIBRARY)
