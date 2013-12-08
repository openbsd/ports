# - Find the WebP library.
# This module defines the following variables:
#  Webp_INCLUDE_DIRS - The include directories needed to use Webp.
#  Webp_LIBRARIES    - The libraries (linker flags) needed to use WebP library.
#  Webp_FOUND        - Is set if and only if WebP found.
#
# The following cache variables are also available to set or use:
#  Webp_LIBRARY     - The WebP library alone.
#  Webp_INCLUDE_DIR - The directory holding the <webp/decode.h>.

#=============================================================================
# Copyright 2013 Vadim Zhukov
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


include(FindPackageHandleStandardArgs)

find_path(Webp_INCLUDE_DIR webp/decode.h)
find_library(Webp_LIBRARY webp)

set(Webp_INCLUDE_DIRS ${Webp_INCLUDE_DIR})
set(Webp_LIBRARIES ${Webp_LIBRARY})

find_package_handle_standard_args(Webp FOUND_VAR Webp_FOUND REQUIRED_VARS Webp_INCLUDE_DIRS Webp_LIBRARIES)
mark_as_advanced(Webp_INCLUDE_DIR Webp_LIBRARY)
