# $OpenBSD: Makefile,v 1.8 2013/03/11 11:07:39 espie Exp $

COMMENT=	game like Deflektor (C64) / Mindbender (Amiga)
DISTNAME=	mirrormagic-2.0.2
REVISION =	1
CATEGORIES=	games x11
MASTER_SITES=	http://www.artsoft.org/RELEASES/unix/mirrormagic/

HOMEPAGE=	http://www.artsoft.org/mirrormagic/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs usbhid xcb \
			SDL_mixer SDL_image

LIB_DEPENDS=	devel/sdl-mixer \
		devel/sdl-image

NO_TEST=	Yes
USE_GMAKE=	Yes
ALL_TARGET=	sdl

N=mirrormagic
do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${N} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} ${PREFIX}/share/${N}

.include <bsd.port.mk>
