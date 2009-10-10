# $OpenBSD: Makefile,v 1.9 2009/10/10 13:55:44 phessler Exp $

COMMENT=	cross-platform 3D audio API

DISTNAME=	openal-0.0.8
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio
SHARED_LIBS +=  openal               1.0      # .0.0

HOMEPAGE=	http://www.openal.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m

MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-vorbis \
		--disable-arts \
		--disable-mp3 \
		--disable-esd \
		--disable-sdl

.include <bsd.port.mk>
