# $OpenBSD: Makefile,v 1.3 2007/07/06 18:48:15 ajacoutot Exp $

COMMENT=	clone of the commodore 64 game paradroids
DISTNAME=	freedroid-1.0.2
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=freedroid/}

HOMEPAGE=	http://freedroid.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	SDL X11 Xext c jpeg m png pthread usbhid z vorbis

USE_X11=	Yes

CONFIGURE_STYLE=gnu

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

.include <bsd.port.mk>
