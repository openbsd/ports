# Try to find the libintl library. Explicit searching is currently
# only required for Win32, though it might be useful for some UNIX
# variants, too. Therefore code for searching common UNIX include
# directories is included, too.
#
# Once done this will define
#
#  LIBINTL_FOUND - system has libintl
#  LIBINTL_LIBRARIES - the library needed for linking

IF (LibIntl_LIBRARY)
   SET(LibIntl_FIND_QUIETLY TRUE)
ENDIF ()

# for Windows we rely on the environement variables
# %INCLUDE% and %LIB%; FIND_LIBRARY checks %LIB%
# automatically on Windows
IF(WIN32)
    FIND_LIBRARY(LibIntl_LIBRARY
        NAMES intl
    )
ELSE()
    FIND_LIBRARY(LibIntl_LIBRARY
        NAMES intl
        PATHS /usr/lib ${LOCALBASE}/lib
    )
ENDIF()

IF (LibIntl_LIBRARY)
    SET(LIBINTL_FOUND TRUE)
    SET(LIBINTL_LIBRARIES ${LibIntl_LIBRARY})
ELSE ()
    SET(LIBINTL_FOUND FALSE)
ENDIF ()

IF (LIBINTL_FOUND)
    IF (NOT LibIntl_FIND_QUIETLY)
        MESSAGE(STATUS "Found libintl: ${LibIntl_LIBRARY}")
    ENDIF ()
ELSE ()
    IF (LibIntl_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could NOT find libintl")
    ENDIF ()
ENDIF ()

MARK_AS_ADVANCED(LibIntl_LIBRARY)
