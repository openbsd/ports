# - Find execinfo library
# Find the execinfo library and includes.
# This module defines
#  EXECINFO_INCLUDE_DIR, where to find execinfo.h
#  EXECINFO_LIBRARY, path to library
#  EXECINFO_FOUND, set only if execinfo successfully found
#
# $OpenBSD: FindExecinfo.cmake,v 1.1 2013/02/06 13:23:03 zhuk Exp $
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


include(FindPackageHandleStandardArgs)

find_path(EXECINFO_INCLUDE_DIR "execinfo.h")
find_library(EXECINFO_LIBRARY "execinfo")

find_package_handle_standard_args(Execinfo DEFAULT_MSG EXECINFO_INCLUDE_DIR EXECINFO_LIBRARY)
