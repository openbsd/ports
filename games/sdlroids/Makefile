# $OpenBSD: Makefile,v 1.12 2010/10/18 18:00:18 espie Exp $

COMMENT=	essentially an Asteroids clone

DISTNAME=	sdlroids-1.3.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games

HOMEPAGE=	http://david.hedbor.org/projects/sdlroids/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlroids/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread

LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer

USE_X11=	Yes
USE_GROFF =	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

post-extract:
	@rm ${WRKSRC}/README.orig

.include <bsd.port.mk>
