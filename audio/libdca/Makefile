COMMENT=		free DTS Coherent Acoustics decoder

V=			0.0.7
DISTNAME=		libdca-${V}
EXTRACT_SUFX=		.tar.bz2
CATEGORIES=		audio
SITES=			https://download.videolan.org/pub/videolan/libdca/${V}/

SHARED_LIBS=	dca	0.0

HOMEPAGE=		https://www.videolan.org/developers/libdca.html

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c m sndio

CONFIGURE_STYLE=	autoreconf
AUTOMAKE_VERSION=	1.16
AUTOCONF_VERSION=	2.72
CONFIGURE_ARGS=		--disable-oss
FAKE_FLAGS=		bin_SCRIPTS=

post-extract:
	cp ${FILESDIR}/audio_out_sndio.c ${WRKSRC}/libao

.include <bsd.port.mk>
