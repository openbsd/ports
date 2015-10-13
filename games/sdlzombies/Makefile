# $OpenBSD: Makefile,v 1.16 2015/10/13 06:29:38 bentley Exp $

COMMENT=	zombies clone

VERSION=	1.0.0
DISTNAME=	sdlzombies-${VERSION}
REVISION =	1
CATEGORIES=	games x11

HOMEPAGE=	http://hocwp.free.fr/sdlzombies.html

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs usbhid xcb \
			SDL_image SDL_mixer

MASTER_SITES=	http://hocwp.free.fr/

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer


CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sdlzombies
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/sdlzombies/

.include <bsd.port.mk>
