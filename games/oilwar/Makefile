# $OpenBSD: Makefile,v 1.1.1.1 2003/04/14 09:09:50 wilfried Exp $

COMMENT=	"sdl shoot 'em up; stop evil army from getting your oil"

DISTNAME=	OilWar-1.2.1
PKGNAME=	${DISTNAME:L}
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

LIB_DEPENDS=	SDL_image::devel/sdl-image

CONFIGURE_STYLE=gnu

FLAVORS=	no_sound
FLAVOR?=

.if ${FLAVOR:L:Mno_sound}
CONFIGURE_ARGS+=--disable-sound
.else
LIB_DEPENDS+=	SDL_mixer::devel/sdl-mixer
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/oilwar
	${INSTALL_DATA} ${WRKSRC}/*.{png,wav} ${PREFIX}/share/oilwar
	${INSTALL_PROGRAM} ${WRKSRC}/oilwar ${PREFIX}/bin

.include <bsd.port.mk>
