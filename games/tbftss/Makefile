# $OpenBSD: Makefile,v 1.8 2019/07/14 00:39:37 naddy Exp $

COMMENT =		2D mission-based space shooter

V =			1.5.0
DISTNAME =		tbftss-$V.src
PKGNAME =		tbftss-$V

CATEGORIES =		games

HOMEPAGE =		https://www.battleforthesolarsystem.com/games/pw/

# code GPLv2+, data CC BY-NC-SA 3.0 or freer
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_image SDL2_mixer SDL2_ttf c m

MASTER_SITES =		https://www.battleforthesolarsystem.com/downloads/

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

MAKE_FLAGS =		CC="${CC}" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` \
			-DDATA_DIR=\\\"${PREFIX}/share/tbftss\\\" \
			-DLOCALE_DIR=\\\"${PREFIX}/share/tbftss/locale\\\" \
			-DVERSION=\\\"${V:R}\\\"" \
			DATA_DIR=${PREFIX}/share/tbftss \
			PREFIX="${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/tbftss-$V

.include <bsd.port.mk>
