COMMENT=		free DTS Coherent Acoustics decoder

V=			0.0.6
DISTNAME=		libdca-${V}
REVISION=		2
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		audio
SITES=			https://download.videolan.org/pub/videolan/libdca/${V}/

SHARED_LIBS=	dca	0.0

HOMEPAGE=		https://www.videolan.org/developers/libdca.html

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m sndio

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--disable-oss

post-extract:
	cp ${FILESDIR}/audio_out_sndio.c ${WRKSRC}/libao

.include <bsd.port.mk>
