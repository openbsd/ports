COMMENT=	play, encode, and manage Ogg Vorbis files

DISTNAME=	vorbis-tools-1.4.3
CATEGORIES=	audio
HOMEPAGE=	https://xiph.org/vorbis/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://downloads.xiph.org/releases/vorbis/

LIB_DEPENDS=	audio/flac \
		audio/libao \
		audio/libvorbis \
		audio/opusfile \
		audio/speex \
		devel/gettext,-runtime \
		net/curl

WANTLIB=	FLAC ao c crypto curl iconv intl m nghttp2 nghttp3 \
		ngtcp2 ngtcp2_crypto_quictls ogg opus opusfile \
		pthread speex ssl vorbis vorbisenc vorbisfile z

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-kate
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
SEPARATE_BUILD=	Yes

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vorbis-tools
	${INSTALL_DATA} ${WRKSRC}/ogg123/ogg123rc-example \
		${PREFIX}/share/examples/vorbis-tools/ogg123rc

.include <bsd.port.mk>
