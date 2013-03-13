# - Try to find ogg/vorbis
# Once done this will define
#
# VORBIS_FOUND - system has vorbis
# VORBIS_INCLUDE_DIR
# VORBIS_LIBRARIES - vorbis and vorbisfile libraries
#
# $VORBISDIR is an environment variable used
# for finding vorbis.
#
# Several changes and additions by Fabian 'x3n' Landau
# Most of all rewritten by Adrian Friedli
# Debug versions and simplifications by Reto Grieder
# > www.orxonox.net <

INCLUDE(FindPackageHandleStandardArgs)

FIND_PATH(VORBIS_INCLUDE_DIR vorbis/codec.h
PATHS $ENV{VORBISDIR}
PATH_SUFFIXES include
)

IF(WIN32)
FIND_LIBRARY(VORBIS_LIBRARIES
NAMES libvorbis libvorbis-static-mt
PATHS $ENV{VORBISDIR}
PATH_SUFFIXES Release
)
ELSE()
FIND_LIBRARY(VORBIS_LIBRARIES
NAMES vorbis
PATH_SUFFIXES lib
)
ENDIF(WIN32)

# Handle the REQUIRED argument and set VORBIS_FOUND
IF(NOT WIN32)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Vorbis DEFAULT_MSG
VORBIS_LIBRARIES
VORBIS_INCLUDE_DIR
)
ELSE()
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Vorbis DEFAULT_MSG
VORBIS_LIBRARIES
VORBIS_INCLUDE_DIR
)
ENDIF(NOT WIN32)

MARK_AS_ADVANCED(
VORBIS_INCLUDE_DIR
VORBIS_LIBRARIES
)
