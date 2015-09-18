# $OpenBSD: Makefile,v 1.5 2015/09/18 09:47:54 landry Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.3.0a
SHARED_LIBS =	spatialite 1.1 # 8.0.1

LIB_DEPENDS +=	geo/spatialite/freexl \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += freexl geos geos_c m proj pthread sqlite3 stdc++ xml2 lzma z

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
