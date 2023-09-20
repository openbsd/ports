COMMENT =	CLI tools for spatialite
PROJECT =	spatialite-tools
DISTNAME =	${PROJECT}-5.1.0a
PKGNAME =	${DISTNAME:S/a$/pl0/}
REVISION =	0

LIB_DEPENDS +=	converters/libiconv \
		databases/sqlite3 \
		geo/spatialite/libspatialite>=5.1.0 \
		geo/spatialite/readosm

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c curses expat freexl geos geos_c iconv lzma m proj pthread
WANTLIB += readline readosm spatialite sqlite3 xml2 z
WANTLIB += crypto curl jpeg nghttp2 ssl tiff zstd bz2 minizip rttopo
WANTLIB += nghttp3 ngtcp2 ngtcp2_crypto_quictls

COMPILER =		base-clang ports-gcc base-gcc

.include <bsd.port.mk>
