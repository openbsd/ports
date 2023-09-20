COMMENT=	sqlite extented with spatial SQL capabilities
PROJECT =	libspatialite
DISTNAME =	${PROJECT}-5.1.0
REVISION =	0
SHARED_LIBS =	spatialite 2.0 # 9.0

CONFIGURE_ARGS +=	--enable-rttopo \
			--enable-gcp #required by spatialite_gui
LIB_DEPENDS +=	converters/libiconv \
		archivers/minizip \
		databases/sqlite3 \
		geo/spatialite/freexl>=2.0.0 \
		geo/librttopo \
		textproc/libxml \
		geo/geos>=3.4.0 \
		devel/proj

WANTLIB += ${COMPILER_LIBCXX} bz2 crypto curl freexl geos
WANTLIB += geos_c iconv jpeg lzma m minizip nghttp2 proj rttopo
WANTLIB += sqlite3 ssl tiff xml2 z zstd
WANTLIB += expat nghttp3 ngtcp2 ngtcp2_crypto_quictls

COMPILER =		base-clang ports-gcc base-gcc

# needed for check_extension test to succeed
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
