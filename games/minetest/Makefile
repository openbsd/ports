# $OpenBSD: Makefile,v 1.34 2022/02/18 07:47:20 semarie Exp $

COMMENT =		infinite-world block sandbox game

V =			5.5.0
GAME_V =		5.5.0
IRRLICHTMT_V =		1.9.0mt4

DISTNAME =		minetest-${V}
CATEGORIES =		games x11

HOMEPAGE =		https://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE SM X11 Xext
WANTLIB += Xxf86vm c curl curses form freetype gmp iconv intl
WANTLIB += jsoncpp jpeg ${MODLUA_WANTLIB} m ogg openal png pq
WANTLIB += spatialindex sqlite3 vorbis vorbisfile z zstd

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		https://github.com/minetest/

DISTFILES =		minetest-{minetest/archive/}${V}${EXTRACT_SUFX} \
			minetest-game-{minetest_game/archive/}${GAME_V}${EXTRACT_SUFX} \
			irrlichtmt-{irrlicht/archive/}${IRRLICHTMT_V}${EXTRACT_SUFX}

MODULES =		devel/cmake \
			lang/lua

CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man
CONFIGURE_ARGS+=	-DENABLE_REDIS=FALSE -DENABLE_LEVELDB=FALSE
CONFIGURE_ARGS+=	-DENABLE_SYSTEM_JSONCPP=TRUE -DENABLE_LUAJIT=FALSE
CONFIGURE_ARGS+=	-DBUILD_SERVER=TRUE
CONFIGURE_ENV +=	CXXFLAGS="-I${X11BASE}/include"

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		${MODLUA_LIB_DEPENDS} \
			audio/openal \
			audio/libvorbis \
			archivers/zstd \
			devel/gettext,-runtime \
			devel/jsoncpp \
			devel/gmp \
			databases/sqlite3 \
			databases/postgresql \
			geo/spatialindex \
			graphics/png \
			graphics/jpeg \
			net/curl

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_ENV +=		HOME=${WRKBUILD}/test \
			LC_CTYPE="en_US.UTF-8"

post-extract:
	mv ${WRKDIR}/irrlicht-${IRRLICHTMT_V} \
		${WRKSRC}/lib/irrlichtmt

# Use system cmake modules
post-patch:
	rm ${WRKSRC}/cmake/Modules/FindLua*

post-install:
	mv ${WRKDIR}/minetest_game-${GAME_V}/ \
		${PREFIX}/share/minetest/games/minetest_game
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/games/minetest_game

do-test:
	mkdir -p ${WRKBUILD}/test
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		${LOCALBASE}/bin/minetest --run-unittests

.include <bsd.port.mk>
