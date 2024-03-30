COMMENT =		library set for simulations, games and visualizations

DISTNAME =		simgear-2020.3.19

SHARED_LIBS +=  SimGearCore               7.0 # 2.10
SHARED_LIBS +=  SimGearScene              7.0 # 2.10

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

HOMEPAGE =		http://www.flightgear.org

# LGPLv2
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=flightgear/}
EXTRACT_SUFX =		.tar.bz2

WANTLIB += GL GLU OpenThreads curl expat lzma m openal osg osgDB osgGA
WANTLIB += osgParticle osgSim osgText osgUtil osgViewer pthread z
WANTLIB += ${COMPILER_LIBCXX}

MODULES =		devel/cmake
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		graphics/openscenegraph \
			audio/openal

CONFIGURE_ARGS +=	-DSYSTEM_EXPAT=ON
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-DENABLE_SIMD=OFF
.endif

CFLAGS +=		-I${X11BASE}/include -pthread
CXXFLAGS +=		-I${X11BASE}/include -pthread

NO_TEST =		Yes

.include <bsd.port.mk>
