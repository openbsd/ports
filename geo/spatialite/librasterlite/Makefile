# $OpenBSD: Makefile,v 1.10 2018/10/24 14:28:04 sthen Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite
DISTNAME =	${PROJECT}-1.1g
SHARED_LIBS =	rasterlite 0.0 #2.0
REVISION =	4

# breaks build if static is disabled
LIBTOOL_FLAGS =

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/libspatialite \
		graphics/png \
		devel/geotiff

WANTLIB += c freexl geos geos_c geotiff iconv jpeg lzma m png proj pthread
WANTLIB += spatialite sqlite3 ${COMPILER_LIBCXX} tiff xml2 z

COMPILER =		base-clang ports-gcc base-gcc

# 1 test fails
#ERROR: jpeg50 reference image mismatch at offset 717
#FAIL: check_rastergen

.include <bsd.port.mk>
