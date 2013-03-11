# $OpenBSD: Makefile,v 1.17 2013/03/11 11:07:40 espie Exp $

COMMENT=	essentially an Asteroids clone

DISTNAME=	sdlroids-1.3.4
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://david.hedbor.org/projects/sdlroids/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlroids/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	SDL c m pthread SDL_mixer

LIB_DEPENDS=	devel/sdl-mixer

USE_GROFF =	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

post-extract:
	@rm ${WRKSRC}/README.orig

.include <bsd.port.mk>
