# $OpenBSD: Makefile,v 1.10 2018/10/24 14:28:04 sthen Exp $

COMMENT =	store rasters coverages within spatialite
PROJECT =	librasterlite2
DISTNAME =	${PROJECT}-1.0.0-rc0
PKGNAME =	${PROJECT}-1.0.0rc0
REVISION =	6
SHARED_LIBS +=	rasterlite2 0.0 # 1.0

LIB_DEPENDS +=	geo/spatialite/libspatialite>=4.1.0 \
		databases/sqlite3 \
		archivers/xz \
		net/curl \
		graphics/cairo \
		graphics/libwebp \
		devel/geotiff

WANTLIB += X11 Xext Xrender c cairo crypto curl expat fontconfig
WANTLIB += freetype freexl geos geos_c geotiff gif iconv intl jpeg lzma m
WANTLIB += nghttp2 pixman-1 png proj pthread spatialite sqlite3
WANTLIB += ssl ${COMPILER_LIBCXX} tiff webp xcb xcb-render xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

# needed for check_sql_stmt test to succeed - it loads mod_rasterlite2
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
