# $OpenBSD: Makefile,v 1.31 2020/05/26 20:01:01 rsadowski Exp $

COMMENT =		infinite-world block sandbox game
# minetest_game is still 0.4.17
# this is engine's bug fix release
GAME_V =		0.4.17
V =			${GAME_V}.1
DISTNAME =		minetest-${V}
CATEGORIES =		games x11
REVISION =		5

HOMEPAGE =		http://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE Irrlicht SM X11 Xext
WANTLIB += Xxf86vm bz2 c curl curses form freetype gmp iconv intl
WANTLIB += jpeg luajit-${MODLUA_VERSION} m ogg openal png pq
WANTLIB += spatialindex sqlite3 vorbis vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/minetest/

DISTFILES =		minetest-{minetest/archive/}${V}${EXTRACT_SUFX} \
			minetest-game-{minetest_game/archive/}${GAME_V}${EXTRACT_SUFX}

MODULES =		devel/cmake \
			lang/lua

CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man
CONFIGURE_ARGS+=	-DENABLE_REDIS=FALSE -DENABLE_LEVELDB=FALSE
CONFIGURE_ARGS+=	-DBUILD_SERVER=TRUE
CONFIGURE_ENV +=	CXXFLAGS="-I${X11BASE}/include"

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/openal \
			devel/gmp \
			databases/sqlite3 \
			databases/postgresql \
			geo/spatialindex \
			audio/libvorbis \
			lang/luajit \
			net/curl \
			x11/irrlicht

NO_TEST =		Yes

# Use system cmake modules
pre-configure:
	rm ${WRKSRC}/cmake/Modules/FindLua*

post-install:
	mv ${WRKDIR}/minetest_game-${GAME_V}/ \
	${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

.include <bsd.port.mk>
