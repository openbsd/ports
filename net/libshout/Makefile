# $OpenBSD: Makefile,v 1.3 2005/02/27 19:14:40 naddy Exp $

COMMENT=	"library for communicating with an icecast server"

DISTNAME=	libshout-2.1
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

LIB_DEPENDS=	vorbis.4::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --disable-pkgconfig \
		--without-theora

SEPARATE_BUILD=	simple

FAKE_FLAGS=	docdir='${PREFIX}/share/examples/libshout'

.include <bsd.port.mk>
