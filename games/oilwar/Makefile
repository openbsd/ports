# $OpenBSD: Makefile,v 1.2 2003/04/15 13:17:59 wilfried Exp $

COMMENT=	"sdl shoot 'em up; stop evil army from getting your oil"

DISTNAME=	OilWar-1.2.1
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	games x11
MASTER_SITES=	http://www.2ndpoint.fi/projektit/filut/

HOMEPAGE=	http://www.2ndpoint.fi/projektit/oilwar.html

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	gcc3
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	C++

USE_X11=	Yes
NO_REGRESS=     Yes

LIB_DEPENDS=	SDL_image::devel/sdl-image \
		SDL_mixer::devel/sdl-mixer

CONFIGURE_STYLE=gnu

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc/oilwar,oilwar}
	${INSTALL_PROGRAM} ${WRKSRC}/oilwar ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/oilwar
	${INSTALL_DATA} ${WRKSRC}/*.{png,wav} ${PREFIX}/share/oilwar

.include <bsd.port.mk>
