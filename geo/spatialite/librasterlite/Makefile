# $OpenBSD: Makefile,v 1.2 2014/08/26 19:03:35 landry Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite
DISTNAME =	${PROJECT}-1.1g
SHARED_LIBS =	rasterlite 0.0 #2.0

# breaks build if static is disabled
LIBTOOL_FLAGS =

LIB_DEPENDS +=	geo/spatialite/libspatialite \
		graphics/png \
		devel/geotiff

WANTLIB += c freexl geos geos_c geotiff jpeg m png proj pthread
WANTLIB += spatialite sqlite3 stdc++ tiff z xml2

# 1 test fails
#ERROR: jpeg50 reference image mismatch at offset 717
#FAIL: check_rastergen

.include <bsd.port.mk>
