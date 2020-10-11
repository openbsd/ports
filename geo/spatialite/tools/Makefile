# $OpenBSD: Makefile,v 1.11 2020/10/11 16:31:00 landry Exp $

COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-5.0.0

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/libspatialite>=5.0.0 \
		geo/spatialite/readosm

WANTLIB += c curses expat freexl geos geos_c iconv lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 ${COMPILER_LIBCXX} xml2 z
WANTLIB += crypto curl jpeg nghttp2 ssl tiff zstd bz2 charset minizip rttopo

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
