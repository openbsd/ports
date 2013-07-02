# - Find UUID library that supports uuid_generate_random()
# This module defines the following variables:
#  UUID_INCLUDE_DIR  - where to find uuid/uuid.h
#  UUID_LIBRARY      - UUID library itself
#  UUID_FOUND        - is set if and only if UUID library supporting uuid_generate_random() found
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


include(CheckLibraryExists)
include(FindPackageHandleStandardArgs)

find_path(UUID_INCLUDE_DIR uuid/uuid.h)
find_library(UUID_LIBRARY NAMES uuid)

if (UUID_INCLUDE_DIR AND UUID_LIBRARY)
  # First, check if we already have backtrace(), e.g., in libc
  check_library_exists(${UUID_LIBRARY} uuid_generate_random "" UUID_CORRECT_ONE)
endif (UUID_INCLUDE_DIR AND UUID_LIBRARY)

find_package_handle_standard_args(UUID DEFAULT_MSG UUID_LIBRARY UUID_INCLUDE_DIR UUID_CORRECT_ONE)
mark_as_advanced(UUID_INCLUDE_DIR UUID_LIBRARY UUID_INCLUDE_DIR UUID_CORRECT_ONE)
