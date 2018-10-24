# $OpenBSD: Makefile,v 1.10 2018/10/24 14:28:05 sthen Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-4.3.0
REVISION =	2

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/libspatialite>=4.3.0 \
		geo/spatialite/readosm

WANTLIB += c curses expat freexl geos geos_c iconv lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 ${COMPILER_LIBCXX} xml2 z

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
