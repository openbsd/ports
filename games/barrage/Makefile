COMMENT=	kill and destroy as many targets as possible in 3 minutes

DISTNAME =	barrage-1.0.5
CATEGORIES=	games

HOMEPAGE=	http://lgames.sourceforge.net/?project=Barrage

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	SDL c m pthread SDL_mixer

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lgames/}

LIB_DEPENDS=	devel/sdl-mixer
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE = gnu

CONFIGURE_ENV += LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/barrage
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/barrage

.include <bsd.port.mk>
