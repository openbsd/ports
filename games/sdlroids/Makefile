# $OpenBSD: Makefile,v 1.4 2001/12/28 22:40:09 pvalchev Exp $

COMMENT=		"essentially an Asteroids clone"

DISTNAME=		sdlroids-1.3.4
CATEGORIES=		games
NEED_VERSION=		1.419

HOMEPAGE=		http://david.hedbor.org/projects/sdlroids/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	sdlroids

MAINTAINER=		David Lebel <lebel@openbsd.org>

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
