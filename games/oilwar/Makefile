# $OpenBSD: Makefile,v 1.6 2004/09/23 07:25:56 espie Exp $

COMMENT=	"sdl shoot 'em up; stop evil army from getting your oil"

DISTNAME=	OilWar-1.2.1
PKGNAME=	${DISTNAME:L}p0
CATEGORIES=	games x11
MASTER_SITES=	http://www.2ndpoint.fi/projektit/filut/

HOMEPAGE=	http://www.2ndpoint.fi/projektit/oilwar.html

MAINTAINER=	George W. Bush <president@whitehouse.gov>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/oilwar/
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/oilwar/oilwar.scores

.include <bsd.port.mk>
