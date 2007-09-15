# $OpenBSD: Makefile,v 1.5 2007/09/15 18:01:01 simon Exp $

COMMENT=	clone of arcade game 'Defender' with a Linux theme

DISTNAME=	defendguin-0.0.10
CATEGORIES=	games x11
HOMEPAGE=	http://www.newbreedsoftware.com/defendguin/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread usbhid

MASTER_SITES=	http://www.nbswebfx.com/downloads/

LIB_DEPENDS=	SDL::devel/sdl \
		SDL_mixer::devel/sdl-mixer

USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
