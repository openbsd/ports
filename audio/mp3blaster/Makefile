# $OpenBSD: Makefile,v 1.6 2004/11/21 17:51:45 espie Exp $

COMMENT=	"text console audio player with an interactive interface"

DISTNAME=	mp3blaster-3.2.0
CATEGORIES=	audio
HOMEPAGE=	http://www.stack.nl/~brama/mp3blaster/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses ossaudio pthread stdc++

MASTER_SITES=	${HOMEPAGE}src/

LIB_DEPENDS=	sidplay.1::audio/libsidplay \
		vorbis.1,vorbisfile.2::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-cxxflags="${CXXFLAGS}"

.include <bsd.port.mk>
