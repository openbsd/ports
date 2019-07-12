# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:21 sthen Exp $

COMMENT=	essentially an Asteroids clone

DISTNAME=	sdlroids-1.3.4
REVISION =	2
CATEGORIES=	games

HOMEPAGE=	http://sourceforge.net/projects/sdlroids/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=sdlroids/}

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL c m pthread SDL_mixer

LIB_DEPENDS=	devel/sdl-mixer
CFLAGS +=	-fgnu89-inline

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

post-extract:
	@rm ${WRKSRC}/README.orig

.include <bsd.port.mk>
