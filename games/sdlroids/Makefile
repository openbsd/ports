# $OpenBSD: Makefile,v 1.7 2003/04/11 17:07:38 lebel Exp $

COMMENT=		"essentially an Asteroids clone"

DISTNAME=		sdlroids-1.3.4
CATEGORIES=		games

HOMEPAGE=		http://david.hedbor.org/projects/sdlroids/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sdlroids/}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

LIB_DEPENDS=		SDL::devel/sdl \
			SDL_mixer::devel/sdl-mixer

USE_X11=		Yes

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
