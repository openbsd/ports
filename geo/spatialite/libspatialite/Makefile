# $OpenBSD: Makefile,v 1.6 2016/04/09 23:38:55 naddy Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.3.0a
SHARED_LIBS =	spatialite 1.1 # 8.0.1

LIB_DEPENDS +=	converters/libiconv \
		geo/spatialite/freexl \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += freexl geos geos_c iconv m proj pthread sqlite3 stdc++ xml2 lzma z

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
