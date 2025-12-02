COMMENT =		modern, open-source flight simulator

DISTNAME =		flightgear-${V}

WANTLIB += ${COMPILER_LIBCXX} GL GLU ICE OpenThreads SM SimGearCore
WANTLIB += SimGearScene X11 Xext c dbus-1 event_core event_extra
WANTLIB += execinfo m osg osgDB osgFX osgGA osgParticle osgSim
WANTLIB += osgTerrain osgText osgUtil osgViewer sqlite3 z

SITES =		https://gitlab.com/flightgear/fgmeta/-/jobs/11942161583/artifacts/raw/fgbuild/

MODULES =	devel/cmake
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/boost \
		devel/plib
LIB_DEPENDS =	databases/sqlite3 \
		graphics/simgear>=$V \
		x11/dbus \
		devel/libevent2
RUN_DEPENDS =	games/flightgear/data>=${V}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${X11BASE}/include" \
			-DFG_DATA_DIR="${TRUEPREFIX}/share/flightgear" \
			-DSYSTEM_SQLITE=ON \
			-DSYSTEM_FLITE=OFF \
			-DENABLE_IAX=OFF \
			-DENABLE_FGCOM=OFF \
			-DENABLE_QT=OFF

MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

NO_TEST =	Yes

.include <bsd.port.mk>
