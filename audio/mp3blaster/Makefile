# $OpenBSD: Makefile,v 1.11 2008/03/20 17:23:04 jasper Exp $

COMMENT=	text console audio player with an interactive interface

DISTNAME=	mp3blaster-3.2.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://mp3blaster.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses ogg ossaudio pthread stdc++

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mp3blaster/}

LIB_DEPENDS=	sidplay.>=1::audio/libsidplay \
		vorbis.>=1,vorbisfile.>=2::audio/libvorbis

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-cxxflags="${CXXFLAGS}"

.include <bsd.port.mk>
