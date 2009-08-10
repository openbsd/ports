# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:42 kili Exp $

COMMENT= 	Pac-Man clone

DISTNAME=	glutton-0.0.5
PKGNAME=	${DISTNAME}p0
CATEGORIES= 	games	
HOMEPAGE=	http://kokido.sourceforge.net/glutton.html

MAINTAINER=	Olivier Racine <darkroot@darkroot.net>

# GPL
PERMIT_PACKAGE_CDROM=  	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m pthread pthread-stubs usbhid xcb

MASTER_SITES=	http://mirror.csoft.org/glutton/

LIB_DEPENDS= 	SDL::devel/sdl \
	 	SDL_mixer::devel/sdl-mixer

WRKDIST=	${WRKDIR}/glutton

ALL_TARGET=	enablesound
MAKE_FLAGS=	DATA_DIR=${PREFIX}/share/glutton

NO_REGRESS=	Yes
USE_X11=	Yes

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
