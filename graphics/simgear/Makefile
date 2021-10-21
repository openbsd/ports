# $OpenBSD: Makefile,v 1.19 2021/10/21 17:16:01 kirby Exp $

COMMENT =		library set for simulations, games and visualizations

DISTNAME =		simgear-2020.3.9

SHARED_LIBS +=  SimGearCore               5.0 # 2.10
SHARED_LIBS +=  SimGearScene              5.0 # 2.10

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

HOMEPAGE =		http://www.flightgear.org

# LGPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=flightgear/}
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

# Keep C++ #include <version> from picking up this unrelated file
post-extract:
	mv ${WRKSRC}/version ${WRKSRC}/version.txt

.include <bsd.port.mk>
