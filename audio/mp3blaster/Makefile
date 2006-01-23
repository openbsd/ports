# $OpenBSD: Makefile,v 1.8 2006/01/23 17:09:36 naddy Exp $

COMMENT=	"text console audio player with an interactive interface"

DISTNAME=	mp3blaster-3.2.1
CATEGORIES=	audio
HOMEPAGE=	http://www.stack.nl/~brama/mp3blaster/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses ogg ossaudio pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3blaster/}

LIB_DEPENDS=	sidplay.1::audio/libsidplay \
		vorbis.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-cxxflags="${CXXFLAGS}"

.include <bsd.port.mk>
