# $OpenBSD: Makefile,v 1.10 2007/09/15 18:01:02 simon Exp $

COMMENT=		essentially an Asteroids clone

DISTNAME=		sdlroids-1.3.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		games

HOMEPAGE=		http://david.hedbor.org/projects/sdlroids/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdlroids/}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		X11 Xext c m pthread usbhid

LIB_DEPENDS=		SDL::devel/sdl \
			SDL_mixer::devel/sdl-mixer

USE_X11=		Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
