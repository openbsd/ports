# $OpenBSD: Makefile,v 1.24 2015/04/21 18:24:23 sthen Exp $

COMMENT=	library for communicating with an icecast server

DISTNAME=	libshout-2.2.2
REVISION=	4
SHARED_LIBS=	shout	5.0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ogg pthread theora>=1 vorbis>=4

MASTER_SITES=	http://downloads.xiph.org/releases/libshout/

BUILD_DEPENDS=	audio/speex
LIB_DEPENDS=	audio/libvorbis \
		multimedia/libtheora

# LIB_DEPENDS don't propagate if !shared
LIB_DEPENDS +=	audio/libogg

FAKE_FLAGS=	docdir='${PREFIX}/share/examples/libshout'

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
