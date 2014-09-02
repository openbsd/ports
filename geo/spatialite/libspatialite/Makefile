# $OpenBSD: Makefile,v 1.3 2014/09/02 08:37:53 landry Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.2.0
SHARED_LIBS =	spatialite 1.0 # 7.0
REVISION =	0

LIB_DEPENDS +=	geo/spatialite/freexl \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += freexl geos geos_c m proj pthread sqlite3 stdc++ xml2

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
