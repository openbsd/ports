# $OpenBSD: Makefile,v 1.17 2019/07/12 21:02:21 sthen Exp $

COMMENT=	vector-based, pretty, Asteroids clone

VERSION=	1.1.0
DISTNAME=	vectoroids-${VERSION}
REVISION =	1
CATEGORIES=	games x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://www.newbreedsoftware.com/vectoroids/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xext c m pthread usbhid xcb \
		SDL SDL_mixer SDL_image

MASTER_SITES=	ftp://ftp.tuxpaint.org/unix/x/vectoroids/src/

LIB_DEPENDS=	devel/sdl \
		devel/sdl-mixer \
		devel/sdl-image

USE_GMAKE=	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vectoroids ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/vectoroids/images
	${INSTALL_DATA} ${WRKSRC}/data/images/* ${PREFIX}/share/vectoroids/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/vectoroids/music
	${INSTALL_DATA} ${WRKSRC}/data/music/* ${PREFIX}/share/vectoroids/music
	${INSTALL_DATA_DIR} ${PREFIX}/share/vectoroids/sounds
	${INSTALL_DATA} ${WRKSRC}/data/sounds/* ${PREFIX}/share/vectoroids/sounds
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vectoroids
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/vectoroids/README

.include <bsd.port.mk>
