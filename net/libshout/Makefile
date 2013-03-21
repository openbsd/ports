# $OpenBSD: Makefile,v 1.21 2013/03/21 08:46:34 ajacoutot Exp $

COMMENT=	library for communicating with an icecast server

DISTNAME=	libshout-2.2.2
REVISION=	1
SHARED_LIBS=	shout	5.0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m ogg vorbis>=4 theora>=1

MASTER_SITES=	http://downloads.xiph.org/releases/libshout/

BUILD_DEPENDS=	audio/speex
LIB_DEPENDS=	audio/libvorbis \
		multimedia/libtheora

FAKE_FLAGS=	docdir='${PREFIX}/share/examples/libshout'

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

SEPARATE_BUILD=	Yes

.include <bsd.port.mk>
