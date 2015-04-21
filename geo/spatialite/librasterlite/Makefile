# $OpenBSD: Makefile,v 1.3 2015/04/21 18:51:24 sthen Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite
DISTNAME =	${PROJECT}-1.1g
SHARED_LIBS =	rasterlite 0.0 #2.0
REVISION =	0

# breaks build if static is disabled
LIBTOOL_FLAGS =

LIB_DEPENDS +=	geo/spatialite/libspatialite \
		graphics/png \
		devel/geotiff

WANTLIB += c freexl geos geos_c geotiff jpeg lzma m png proj pthread
WANTLIB += spatialite sqlite3 stdc++ tiff xml2 z

# 1 test fails
#ERROR: jpeg50 reference image mismatch at offset 717
#FAIL: check_rastergen

.include <bsd.port.mk>
