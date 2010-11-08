# $OpenBSD: Makefile,v 1.14 2010/11/08 15:54:54 espie Exp $

COMMENT=	essentially an Asteroids clone

DISTNAME=	sdlroids-1.3.4
REVISION =	1
CATEGORIES=	games

HOMEPAGE=	http://david.hedbor.org/projects/sdlroids/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlroids/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	SDL c m pthread SDL_mixer

LIB_DEPENDS=	::devel/sdl-mixer

USE_GROFF =	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu

post-extract:
	@rm ${WRKSRC}/README.orig

.include <bsd.port.mk>
