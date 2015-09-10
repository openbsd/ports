# $OpenBSD: Makefile,v 1.13 2015/09/10 06:57:59 ajacoutot Exp $

COMMENT =		infinite-world block sandbox game
V =			0.4.12
DISTNAME =		minetest-${V}
CATEGORIES =		games x11
REVISION =		0

HOMEPAGE =		http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE Irrlicht SM X11 Xext Xxf86vm bz2 c curl jpeg m ogg openal
WANTLIB += png pthread sqlite3 stdc++ vorbis vorbisfile z
WANTLIB += luajit-${MODLUA_VERSION}

MASTER_SITES =		https://github.com/minetest/

DISTFILES =		minetest-{minetest/archive/}${V}${EXTRACT_SUFX} \
			minetest-game-{minetest_game/archive/}${V}${EXTRACT_SUFX}

MODULES =		devel/cmake \
			devel/gettext \
			lang/lua

CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man
CONFIGURE_ENV +=	CXXFLAGS="-I${X11BASE}/include"

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/openal \
			audio/libvorbis \
			lang/luajit \
			net/curl \
			x11/irrlicht

NO_TEST =		Yes

post-install:
	mv ${WRKDIR}/minetest_game-${V}/ \
	${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

.include <bsd.port.mk>
