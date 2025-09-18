COMMENT=	vector-based, pretty, Asteroids clone

VERSION=	1.1.2
DISTNAME=	vectoroids-${VERSION}
CATEGORIES=	games x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://www.newbreedsoftware.com/vectoroids/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += c SDL2 SDL2_mixer SDL2_image

SITES=		ftp://ftp.tuxpaint.org/unix/x/vectoroids/src/

LIB_DEPENDS=	devel/sdl2 \
		devel/sdl2-mixer \
		devel/sdl2-image

USE_GMAKE=	Yes
NO_TEST=	Yes

MAKE_FLAGS=	PORT_CFLAGS="${CFLAGS}"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vectoroids ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/vectoroids/images
	${INSTALL_DATA} ${WRKSRC}/data/images/* ${PREFIX}/share/vectoroids/images
	${INSTALL_DATA} ${WRKSRC}/vectoroids.6 ${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/vectoroids/music
	${INSTALL_DATA} ${WRKSRC}/data/music/* ${PREFIX}/share/vectoroids/music
	${INSTALL_DATA_DIR} ${PREFIX}/share/vectoroids/sounds
	${INSTALL_DATA} ${WRKSRC}/data/sounds/* ${PREFIX}/share/vectoroids/sounds
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vectoroids
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/vectoroids/README

.include <bsd.port.mk>
