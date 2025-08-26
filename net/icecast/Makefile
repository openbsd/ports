COMMENT=	server for streaming various media formats
CATEGORIES=	net audio

DISTNAME=	icecast-2.4.4
REVISION=	4

HOMEPAGE=	https://icecast.org/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =  c crypto curl>=2 iconv intl lzma m nghttp2 nghttp3 ngtcp2
WANTLIB += ngtcp2_crypto_libressl ogg pthread speex>=3 ssl theora>=1
WANTLIB += vorbis>=3 xml2 xslt>=3 z

SITES=		https://downloads.xiph.org/releases/icecast/


CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-theora=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	archivers/xz \
		audio/libvorbis \
		audio/speex \
		devel/gettext,-runtime \
		multimedia/libtheora \
		net/curl \
		textproc/libxslt

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
