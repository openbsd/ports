# $OpenBSD: Makefile,v 1.1.1.1 2013/03/20 21:55:28 landry Exp $

COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-4.0.0
SHARED_LIBS =	spatialite 0.0 #5.1

LIB_DEPENDS +=	geo/spatialite/freexl \
		geo/geos \
		devel/proj

WANTLIB += freexl geos geos_c m proj pthread sqlite3 stdc++

.include <bsd.port.mk>
