COMMENT =		infinite-world block sandbox game

V =			5.12.0
PKGNAME =		luanti-${V}

DIST_TUPLE +=		github luanti-org luanti ${V} .

CATEGORIES =		games x11

HOMEPAGE =		https://www.luanti.org/

MAINTAINER =		izzy Meyer <izder456@disroot.org>

# LGPLv2.1 (source), CC BY-SA 3.0 (data files), APLv2 (fonts)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU SDL2 c curl curses form freetype
WANTLIB += gmp iconv intl jpeg jsoncpp luajit-5.1 m ogg openal
WANTLIB += png pq spatialindex sqlite3 vorbis vorbisfile z zstd

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DENABLE_GETTEXT=ON -DCUSTOM_MANDIR=${PREFIX}/man
CONFIGURE_ARGS+=	-DENABLE_REDIS=OFF -DENABLE_LEVELDB=OFF
CONFIGURE_ARGS+=	-DENABLE_SYSTEM_JSONCPP=ON -DBUILD_SERVER=ON
CONFIGURE_ARGS+=	-DAVOID_LINKING_ATOMIC=ON -DINSTALL_DEVTEST=ON

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
			devel/sdl2 \
			databases/sqlite3 \
			databases/postgresql \
			geo/spatialindex \
			graphics/png \
			graphics/jpeg \
			net/curl

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_ENV +=		HOME=${WRKBUILD}/test \
			LC_CTYPE="en_US.UTF-8"

do-test:
	mkdir -p ${WRKBUILD}/test
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ${TEST_ENV} \
		${LOCALBASE}/bin/luanti --run-unittests

.include <bsd.port.mk>
