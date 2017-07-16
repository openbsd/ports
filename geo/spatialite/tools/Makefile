# $OpenBSD: Makefile,v 1.8 2017/07/16 19:18:50 espie Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.3.0
REVISION =	0

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/libspatialite>=4.3.0 \
		geo/spatialite/readosm

WANTLIB += c curses expat freexl geos geos_c iconv lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 ${COMPILER_LIBCXX} xml2 z

.include <bsd.port.mk>
