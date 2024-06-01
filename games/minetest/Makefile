COMMENT =		infinite-world block sandbox game

V =			5.8.0
PKGNAME =	minetest-${V}

DIST_TUPLE +=	github minetest minetest ${V} .
DIST_TUPLE +=	github minetest irrlicht 1.9.0mt13 lib/irrlichtmt
DIST_TUPLE +=	github minetest minetest_game 5.8.0 games/minetest_game

CATEGORIES =	games x11

HOMEPAGE =		https://www.minetest.net/

# source LGPLv2.1/ datas CC BY-SA 3.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU X11 Xi c curl curses form freetype
WANTLIB += gmp iconv intl jpeg jsoncpp luajit-5.1 m ogg openal png pq
WANTLIB += spatialindex sqlite3 vorbis vorbisfile z zstd

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man
CONFIGURE_ARGS+=	-DENABLE_REDIS=FALSE -DENABLE_LEVELDB=FALSE
CONFIGURE_ARGS+=	-DENABLE_SYSTEM_JSONCPP=TRUE -DBUILD_SERVER=TRUE

# luajit
USE_NOBTCFI =		Yes

CXXFLAGS +=		-I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

BUILD_DEPENDS =		devel/gettext,-tools

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/openal \
					lang/luajit \
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

post-install:
	mkdir -p ${PREFIX}/share/minetest/games
	mv ${WRKDIST}/games \
		${PREFIX}/share/minetest/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/minetest/gamesm/*

do-test:
	mkdir -p ${WRKBUILD}/test
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		${LOCALBASE}/bin/minetest --run-unittests

.include <bsd.port.mk>
