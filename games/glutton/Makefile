# $OpenBSD: Makefile,v 1.12 2013/03/11 11:07:39 espie Exp $

COMMENT= 	Pac-Man clone

DISTNAME=	glutton-0.0.5
REVISION =	0
CATEGORIES= 	games	
HOMEPAGE=	http://kokido.sourceforge.net/glutton.html

MAINTAINER=	Olivier Racine <darkroot@darkroot.net>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb \
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
