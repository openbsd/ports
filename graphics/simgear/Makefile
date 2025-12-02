COMMENT =		library set for simulations, games and visualizations

DISTNAME =		simgear-2024.1.3

SHARED_LIBS +=  SimGearCore               9.0 # 2.10
SHARED_LIBS +=  SimGearScene              9.0 # 2.10

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

HOMEPAGE =		http://www.flightgear.org

# LGPLv2
PERMIT_PACKAGE =	Yes

SITES =			https://gitlab.com/flightgear/fgmeta/-/jobs/11942161583/artifacts/raw/sgbuild/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += ${COMPILER_LIBCXX} GL GLU OpenThreads avcodec avdevice
WANTLIB += avformat avutil cares curl expat lzma m openal osg osgDB
WANTLIB += osgGA osgParticle osgSim osgTerrain osgText osgUtil
WANTLIB += osgViewer swresample swscale z

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		graphics/openscenegraph \
			audio/openal \
			net/libcares

CONFIGURE_ARGS +=	-DSYSTEM_EXPAT=ON
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-DENABLE_SIMD=OFF
.endif

CFLAGS +=		-I${X11BASE}/include -pthread
CXXFLAGS +=		-I${X11BASE}/include -pthread

NO_TEST =		Yes

.include <bsd.port.mk>
