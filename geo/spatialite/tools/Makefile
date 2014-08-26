# $OpenBSD: Makefile,v 1.2 2014/08/26 19:04:02 landry Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.2.0

LIB_DEPENDS +=	geo/spatialite/libspatialite \
		geo/spatialite/readosm

WANTLIB += freexl geos geos_c m proj pthread sqlite3 stdc++
WANTLIB += c curses expat readline readosm spatialite z xml2

.include <bsd.port.mk>
