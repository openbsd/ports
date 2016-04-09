# $OpenBSD: Makefile,v 1.5 2016/04/09 23:38:55 naddy Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.3.0

LIB_DEPENDS +=	converters/libiconv \
		geo/spatialite/libspatialite>=4.3.0 \
		geo/spatialite/readosm

WANTLIB += c curses expat freexl geos geos_c iconv lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 stdc++ xml2 z

.include <bsd.port.mk>
