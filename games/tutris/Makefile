# $OpenBSD: Makefile,v 1.18 2019/07/12 20:46:25 sthen Exp $

COMMENT=	graphical tetris clone
DISTNAME=	Tutris-1.0.1
PKGNAME =	${DISTNAME:L}
REVISION =	4
CATEGORIES=	games x11

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL X11 Xext c m pthread ${COMPILER_LIBCXX} usbhid xcb \
		SDL_image

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	devel/sdl-image


CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/tutris,tutris}
	${INSTALL_PROGRAM} ${WRKSRC}/src/tutris ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tutris
	${INSTALL_DATA} ${WRKSRC}/data/*.png ${PREFIX}/share/tutris

.include <bsd.port.mk>
