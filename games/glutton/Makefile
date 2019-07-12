# $OpenBSD: Makefile,v 1.15 2019/07/12 21:42:15 sthen Exp $

COMMENT= 	Pac-Man clone

DISTNAME=	glutton-0.0.5
REVISION =	2
CATEGORIES= 	games	
HOMEPAGE=	http://kokido.sourceforge.net/glutton.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext c m pthread usbhid xcb \
			SDL SDL_mixer

MASTER_SITES=	http://mirror.csoft.org/glutton/

LIB_DEPENDS= 	devel/sdl \
	 	devel/sdl-mixer

WRKDIST=	${WRKDIR}/glutton

ALL_TARGET=	enablesound
MAKE_FLAGS=	DATA_DIR=${PREFIX}/share/glutton

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/glutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/glutton
	${INSTALL_DATA_DIR} ${PREFIX}/share/glutton/levels
	${INSTALL_DATA_DIR} ${PREFIX}/share/glutton/data
	cd ${WRKSRC} && for f in *.wav *.it; do \
		${INSTALL_DATA} $$f ${PREFIX}/share/glutton; \
	done
	cd ${WRKSRC}/levels && for f in *.map; do \
		${INSTALL_DATA} $$f ${PREFIX}/share/glutton/levels; \
	done
	cd ${WRKSRC}/data && for f in *.bmp; do \
		${INSTALL_DATA} $$f ${PREFIX}/share/glutton/data; \
	done

.include <bsd.port.mk>
