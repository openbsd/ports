COMMENT=	zombies clone

VERSION=	1.0.0
DISTNAME=	sdlzombies-${VERSION}
REVISION =	3
CATEGORIES=	games x11

HOMEPAGE=	http://hocwp.free.fr/sdlzombies.html

PERMIT_PACKAGE=	Yes
WANTLIB=		SDL X11 Xext c m pthread usbhid xcb \
			SDL_image SDL_mixer

MASTER_SITES=	http://hocwp.free.fr/

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer


CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlzombies
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sdlzombies/

.include <bsd.port.mk>
