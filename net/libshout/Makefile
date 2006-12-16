# $OpenBSD: Makefile,v 1.11 2006/12/16 12:22:34 espie Exp $

COMMENT=	"library for communicating with an icecast server"

DISTNAME=	libshout-2.2
SHARED_LIBS=	shout	5.0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m ogg

MASTER_SITES=	http://downloads.xiph.org/releases/libshout/

BUILD_DEPENDS=	::audio/speex
LIB_DEPENDS=	vorbis.>=4::audio/libvorbis \
		theora.>=1::multimedia/libtheora

FAKE_FLAGS=	docdir='${PREFIX}/share/examples/libshout'

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

SEPARATE_BUILD=	simple
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
