# $OpenBSD: Makefile,v 1.10 2017/07/26 22:45:23 sthen Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.3.0a
SHARED_LIBS =	spatialite 1.1 # 8.0.1
REVISION =	1

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/freexl \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += freexl geos geos_c iconv m proj pthread sqlite3 ${COMPILER_LIBCXX} xml2 lzma z

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
