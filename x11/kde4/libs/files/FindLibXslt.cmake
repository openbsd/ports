# - Find libxslt and xsltproc
# $OpenBSD: FindLibXslt.cmake,v 1.1 2013/04/25 21:17:28 zhuk Exp $
# Relies on system FindLibXslt.cmake, but provides an additional variables:
#
# LIBXSLT_XSLTPROC_EXECUTABLE
#    Path to xsltproc executable
#
# XSLTPROC_EXECUTABLE
#    Legacy alias to LIBXSLT_XSLTPROC_EXECUTABLE
#

INCLUDE(${LOCALBASE}/share/cmake/Modules/FindLibXslt.cmake)

FIND_PROGRAM(LIBXSLT_XSLTPROC_EXECUTABLE xsltproc)

FIND_LIBRARY(LIBEXSLT_LIBRARIES NAMES exslt libexslt
    PATHS
    ${PC_XSLT_LIBDIR}
    ${PC_XSLT_LIBRARY_DIRS}
  )

# Some programs in KDE still use this
SET(XSLTPROC_EXECUTABLE ${LIBXSLT_XSLTPROC_EXECUTABLE})

MARK_AS_ADVANCED(LIBEXSLT_LIBRARIES)
