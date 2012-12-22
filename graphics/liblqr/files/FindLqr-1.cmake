# - Find lqr-1 library
# Find the native lqr-1 includes and library
# This module defines
#  LQR-1_FOUND, if lqr-1 library was found.
#  LQR-1_INCLUDE_DIR, where to find lqr.h, etc.
#  LQR-1_LIBRARIES, the libraries needed to use liblqr.
#  LQR-1_LIBRARY, where to find the lqr library itself.

#=============================================================================
# Copyright (c) 2011 Vadim Zhukov <persgray@gmail.com>
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
#=============================================================================

FIND_PATH(LQR-1_INCLUDE_DIR lqr.h PATH_SUFFIXES lqr-1)

SET(LQR-1_NAMES ${LQR-1_NAMES} lqr-1)
FIND_LIBRARY(LQR-1_LIBRARY NAMES ${LQR-1_NAMES} )

INCLUDE(${CMAKE_CURRENT_LIST_DIR}/FindPackageHandleStandardArgs.cmake)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LQR-1 DEFAULT_MSG LQR-1_LIBRARY LQR-1_INCLUDE_DIR)

IF(LQR-1_FOUND)
  SET(LQR-1_LIBRARIES ${LQR-1_LIBRARY})
ENDIF(LQR-1_FOUND)

MARK_AS_ADVANCED(LQR-1_LIBRARY LQR-1_INCLUDE_DIR )
