COMMENT =		modern, open-source flight simulator

DISTNAME =		flightgear-${V}
REVISION =		0

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU ICE OpenThreads SM SimGearCore
WANTLIB += SimGearScene X11 Xext Xi Xmu c dbus-1 event_core execinfo
WANTLIB += freetype glut m osg osgDB osgFX osgGA osgParticle osgSim
WANTLIB += osgText osgUtil osgViewer png sqlite3 z

SITES =		${SITE_SOURCEFORGE:=flightgear/}

MODULES =	devel/cmake
COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/boost \
		devel/plib
LIB_DEPENDS =	databases/sqlite3 \
		graphics/freeglut \
		graphics/simgear>=$V \
		graphics/glew \
		x11/dbus \
		devel/libevent2
RUN_DEPENDS =	games/flightgear/data>=${V}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
			-DFG_DATA_DIR="${TRUEPREFIX}/share/flightgear" \
			-DSYSTEM_SQLITE=ON \
			-DSYSTEM_FLITE=OFF \
			-DENABLE_IAX=OFF \
			-DENABLE_FGCOM=OFF \
			-DENABLE_QT=OFF

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

NO_TEST =	Yes

.include <bsd.port.mk>
