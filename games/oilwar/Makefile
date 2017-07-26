# $OpenBSD: Makefile,v 1.22 2017/07/26 22:45:21 sthen Exp $

COMMENT=	sdl shoot 'em up; stop evil army from getting your oil
DISTNAME=	OilWar-1.2.1
PKGNAME=	${DISTNAME:L}
REVISION =	5
CATEGORIES=	games x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread ${COMPILER_LIBCXX} SDL_image SDL_mixer

NO_TEST=     Yes

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/oilwar,oilwar}
	${INSTALL_PROGRAM} ${WRKSRC}/oilwar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/oilwar
	${INSTALL_DATA} ${WRKSRC}/*.{png,wav} ${PREFIX}/share/oilwar
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oilwar/
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/oilwar/oilwar.scores

.include <bsd.port.mk>
