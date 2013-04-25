# - Try to find the XINE library
# This is a wrapper for pkg_check_modules() function, with additional define:
#   XINE_XCB_FOUND - if Xine was conifugured to use XCB

# Copyright (c) 2006,2007 Laurent Montel, <montel@kde.org>
# Copyright (c) 2006, Matthias Kretz, <kretz@kde.org>
# Copyright (c) 2011, Vadim Zhukov, <persgray@gmail.com>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

if (XINE_LIBRARY)
  # Already in cache, be silent
  set(Xine_FIND_QUIETLY TRUE)
endif (XINE_LIBRARY)

find_package(PkgConfig)
if (PKG_CONFIG_FOUND)
   pkg_check_modules(XINE libxine>=1.1.1)
endif (PKG_CONFIG_FOUND)

if (XINE_FOUND)
   # CMake 2.8+ has nice CMakePushCheckState module...
   set(_XINE_CMAKE_REQUIRED_FLAGS_SAVE     ${CMAKE_REQUIRED_FLAGS})
   set(_XINE_CMAKE_REQUIRED_LIBRARIES_SAVE ${CMAKE_REQUIRED_LIBRARIES})
   set(CMAKE_REQUIRED_FLAGS     ${CMAKE_REQUIRED_FLAGS}     ${XINE_CFLAGS})
   set(CMAKE_REQUIRED_LIBRARIES ${CMAKE_REQUIRED_LIBRARIES} ${XINE_LDFLAGS})

   include(CheckCSourceCompiles)
   check_c_source_compiles("#include <xine.h>\nint main()\n{\n  xine_open_video_driver(xine_new(), \"auto\", XINE_VISUAL_TYPE_XCB, NULL);\n  return 0;\n}\n" XINE_XCB_FOUND)

   set(CMAKE_REQUIRED_FLAGS     ${_XINE_CMAKE_REQUIRED_FLAGS_SAVE})
   set(CMAKE_REQUIRED_LIBRARIES ${_XINE_CMAKE_REQUIRED_LIBRARIES_SAVE})
endif (XINE_FOUND)

# backward compatibility with previous version of this module
# (do not advertise those variables at the top)
set(XINE_INCLUDE_DIR ${XINE_CFLAGS})
set(XINE_LIBRARY ${XINE_LDFLAGS})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Xine  "Could NOT find XINE 1.1.1 or greater"  XINE_FOUND)

mark_as_advanced(XINE_XCB_FOUND XINE_INCLUDE_DIR XINE_LIBRARY)
