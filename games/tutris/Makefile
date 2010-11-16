# $OpenBSD: Makefile,v 1.11 2010/11/16 11:23:28 espie Exp $

COMMENT=	graphical tetris clone
DISTNAME=	Tutris-1.0.1
PKGNAME =	${DISTNAME:L}
REVISION =	1
CATEGORIES=	games x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
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
