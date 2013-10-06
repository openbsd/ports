# Rewritten for OpenBSD by Vadim Zhukov <zhuk@openbsd.org>

include(FindPackageHandleStandardArgs)

find_library(KEXIV2_LIBRARY kexiv2)
find_path(KEXIV2_INCLUDE_DIR libkexiv2/version.h)

set(KEXIV2_INCLUDE_DIRS ${KEXIV2_INCLUDE_DIR})
set(KEXIV2_LIBRARIES ${KEXIV2_LIBRARY})

find_package_handle_standard_args(Kexiv2
    FOUND_VAR KEXIV2_FOUND
    REQUIRED_VARS KEXIV2_INCLUDE_DIRS KEXIV2_LIBRARIES)
