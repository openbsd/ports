# $OpenBSD: Makefile,v 1.1.1.1 2013/03/20 21:55:28 landry Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.0.0

LIB_DEPENDS +=	geo/spatialite/libspatialite \
		geo/spatialite/readosm

WANTLIB += freexl geos geos_c m proj pthread sqlite3 stdc++
WANTLIB += c curses expat readline readosm spatialite z

.include <bsd.port.mk>
