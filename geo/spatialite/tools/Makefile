# $OpenBSD: Makefile,v 1.6 2016/09/23 09:16:55 sthen Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.3.0
REVISION =	0

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/libspatialite>=4.3.0 \
		geo/spatialite/readosm

WANTLIB += c curses expat freexl geos geos_c iconv lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 stdc++ xml2 z

.include <bsd.port.mk>
