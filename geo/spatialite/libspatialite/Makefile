# $OpenBSD: Makefile,v 1.11 2018/10/24 14:28:04 sthen Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.3.0a
SHARED_LIBS =	spatialite 1.1 # 8.0.1
REVISION =	2

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/freexl \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += freexl geos geos_c iconv m proj pthread sqlite3 ${COMPILER_LIBCXX} xml2 lzma z

COMPILER =		base-clang ports-gcc base-gcc

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
