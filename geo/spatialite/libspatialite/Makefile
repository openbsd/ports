# $OpenBSD: Makefile,v 1.12 2020/10/11 16:30:30 landry Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-5.0.0
SHARED_LIBS =	spatialite 1.2 # 8.1

CONFIGURE_ARGS +=	--enable-rttopo \
			--enable-gcp #required by spatialite_gui
LIB_DEPENDS +=	converters/libiconv \
		archivers/minizip \
		databases/sqlite3 \
		geo/spatialite/freexl \
		geo/librttopo \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += ${COMPILER_LIBCXX} bz2 charset crypto curl freexl geos
WANTLIB += geos_c iconv jpeg lzma m minizip nghttp2 proj rttopo
WANTLIB += sqlite3 ssl tiff xml2 z zstd

COMPILER =		base-clang ports-gcc base-gcc

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
