# $OpenBSD: Makefile,v 1.20 2017/04/10 11:46:19 sthen Exp $

COMMENT=	sdl shoot 'em up; stop evil army from getting your oil
DISTNAME=	OilWar-1.2.1
PKGNAME=	${DISTNAME:L}
REVISION =	4
CATEGORIES=	games x11

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	SDL c m pthread ${LIBCXX} SDL_image SDL_mixer

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
