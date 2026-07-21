COMMENT=	server for streaming various media formats
CATEGORIES=	net audio

DISTNAME=	icecast-2.5.0

HOMEPAGE=	https://icecast.org/

# GPL
PERMIT_PACKAGE=	Yes

# base-gcc - expected specifier-qualifier-list before 'mmdb_uint128_t'
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

WANTLIB += c crypto curl>=2 iconv igloo m nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl ogg pthread rhash speex>=3 ssl
WANTLIB += theora>=1 vorbis>=3 xml2 xslt>=3 z

SITES=		https://downloads.xiph.org/releases/icecast/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-theora=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	audio/libvorbis \
		audio/speex \
		devel/libigloo \
		multimedia/libtheora \
		net/curl \
		security/rhash \
		textproc/libxslt

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
