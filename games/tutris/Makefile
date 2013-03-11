# $OpenBSD: Makefile,v 1.12 2013/03/11 11:07:41 espie Exp $

COMMENT=	graphical tetris clone
DISTNAME=	Tutris-1.0.1
PKGNAME =	${DISTNAME:L}
REVISION =	1
CATEGORIES=	games x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	SDL X11 Xext c m pthread pthread-stubs stdc++ usbhid xcb \
		SDL_image

LIB_DEPENDS=	devel/sdl-image


CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/tutris,tutris}
	${INSTALL_PROGRAM} ${WRKSRC}/src/tutris ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tutris
	${INSTALL_DATA} ${WRKSRC}/data/*.png ${PREFIX}/share/tutris

.include <bsd.port.mk>
