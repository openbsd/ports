# $OpenBSD: Makefile,v 1.2 2004/12/25 19:08:53 sturm Exp $

COMMENT=	"library for communicating with an icecast server"

DISTNAME=	libshout-2.0
CATEGORIES=	net audio

HOMEPAGE=	http://www.icecast.org/

MAINTAINER=	Moritz Grimm <gtgbr@gmx.net>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://downloads.us.xiph.org/releases/libshout/

LIB_DEPENDS=	vorbis.2,vorbisenc.2,vorbisfile.3::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --disable-pkgconfig

SEPARATE_BUILD=	simple

FAKE_FLAGS=	docdir='${PREFIX}/share/examples/libshout'

.include <bsd.port.mk>
