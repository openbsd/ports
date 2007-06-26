# $OpenBSD: Makefile,v 1.1.1.1 2007/06/26 22:56:49 simon Exp $

COMMENT=	kill and destroy as many targets as possible in 3 minutes

DISTNAME=	barrage-1.0.2
CATEGORIES=	games

HOMEPAGE=	http://lgames.sourceforge.net/?project=Barrage

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext c m pthread usbhid

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
