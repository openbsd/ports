# $OpenBSD: Makefile,v 1.23 2013/10/30 08:25:20 benoit Exp $

ONLY_FOR_ARCHS =	${GCC4_ARCHS}

COMMENT =	maze game resembling boulderdash

DISTNAME =	rocksndiamonds-3.3.1.0
CATEGORIES =	games x11

HOMEPAGE =	http://www.artsoft.org/rocksndiamonds/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	SDL c m pthread smpeg SDL_mixer SDL_image SDL_net

MASTER_SITES =	http://www.artsoft.org/RELEASES/unix/rocksndiamonds/

LIB_DEPENDS =	devel/sdl-mixer \
		devel/sdl-image \
		devel/sdl-net>=1.2.7

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CC}" MAKE="${MAKE_PROGRAM}" X11_PATH="${X11BASE}" \
		RO_GAME_DIR="${PREFIX}/share/rocksndiamonds" \
		RW_GAME_DIR="/var/games/rocksndiamonds"

ALL_TARGET =	sdl

NO_TEST =	Yes

N = rocksndiamonds

post-extract:
	@find ${WRKSRC} -name \*.orig -exec rm {} \;

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/${N} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/${N}
	@cp -R ${WRKSRC}/{graphics,levels,music,sounds} ${PREFIX}/share/${N}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${N}
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/${N}

.include <bsd.port.mk>
