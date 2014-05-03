# $OpenBSD: Makefile,v 1.2 2014/05/03 17:50:21 bcallah Exp $

COMMENT =	Tetris and Pong played simultaneously on one playing field
DISTNAME =	tong-1.3
CATEGORIES =	games x11

HOMEPAGE =	http://www.nongnu.org/tong/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_mixer c m pthread stdc++

MASTER_SITES =	http://www.nongnu.org/tong/

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-mixer

USE_GMAKE =	Yes
MAKE_FLAGS =	CC="${CXX} ${CXXFLAGS}" \
		GAME_DATA_DIR="${TRUEPREFIX}/share/tong"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/tong

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tong ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tong
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/tong
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/media/tong.png ${PREFIX}/share/pixmaps
	${INSTALL_DATA_DIR} ${PREFIX}/share/tong
	${INSTALL_DATA} ${WRKSRC}/*.png ${PREFIX}/share/tong
	${INSTALL_DATA_DIR} ${PREFIX}/share/tong/media
	${INSTALL_DATA} ${WRKSRC}/media/*.{png,xcf,ogg,ico} ${PREFIX}/share/tong/media

.include <bsd.port.mk>
