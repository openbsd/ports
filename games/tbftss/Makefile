# $OpenBSD: Makefile,v 1.1.1.1 2015/12/10 06:44:52 bentley Exp $

COMMENT =		2D mission-based space shooter

V =			0.4
DISTNAME =		tbftss-$V-151206.src
PKGNAME =		tbftss-$V

CATEGORIES =		games

HOMEPAGE =		http://www.battleforthesolarsystem.com/games/pw/

# code GPLv2+, data CC BY-NC-SA 3.0 or freer
PERMIT_PACKAGE_CDROM =	Non-commercial
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf c m pthread

MASTER_SITES =		http://www.battleforthesolarsystem.com/downloads/

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf

MAKE_FLAGS =		CC="${CC}" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` \
			-DDATA_DIR=\\\"${PREFIX}/share/tbftss\\\" \
			-DVERSION=$V" \
			BIN_DIR=${PREFIX}/bin \
			DATA_DIR=${PREFIX}/share/tbftss
FAKE_FLAGS =		BIN_DIR=${DESTDIR}${PREFIX}/bin \
			DATA_DIR=${DESTDIR}${PREFIX}/share/tbftss

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/tbftss-$V

.include <bsd.port.mk>
