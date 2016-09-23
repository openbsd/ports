# $OpenBSD: Makefile,v 1.7 2016/09/23 09:16:55 sthen Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.3.0a
SHARED_LIBS =	spatialite 1.1 # 8.0.1
REVISION =	0

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/freexl \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += freexl geos geos_c iconv m proj pthread sqlite3 stdc++ xml2 lzma z

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
