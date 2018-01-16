# $OpenBSD: Makefile,v 1.3 2018/01/16 09:07:23 bentley Exp $

COMMENT =		2D mission-based space shooter

V =			1.3
DISTNAME =		tbftss-$V-1555.src
PKGNAME =		tbftss-$V

CATEGORIES =		games

HOMEPAGE =		http://www.battleforthesolarsystem.com/games/pw/

# code GPLv2+, data CC BY-NC-SA 3.0 or freer
PERMIT_PACKAGE_CDROM =	Non-commercial
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf c m

MASTER_SITES =		http://www.battleforthesolarsystem.com/downloads/

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

MAKE_FLAGS =		CC="${CC}" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` \
			-DDATA_DIR=\\\"${PREFIX}/share/tbftss\\\" \
			-DLOCALE_DIR=\\\"${PREFIX}/share/tbftss/locale\\\" \
			-DVERSION=$V" \
			DATA_DIR=${PREFIX}/share/tbftss \
			PREFIX="${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/tbftss-$V

.include <bsd.port.mk>
