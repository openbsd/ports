# $OpenBSD: Makefile,v 1.5 2016/04/09 23:38:55 naddy Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite
DISTNAME =	${PROJECT}-1.1g
SHARED_LIBS =	rasterlite 0.0 #2.0
REVISION =	1

# breaks build if static is disabled
LIBTOOL_FLAGS =

LIB_DEPENDS +=	converters/libiconv \
		geo/spatialite/libspatialite \
		graphics/png \
		devel/geotiff

WANTLIB += c freexl geos geos_c geotiff iconv jpeg lzma m png proj pthread
WANTLIB += spatialite sqlite3 stdc++ tiff xml2 z

# 1 test fails
#ERROR: jpeg50 reference image mismatch at offset 717
#FAIL: check_rastergen

.include <bsd.port.mk>
