# $OpenBSD: Makefile,v 1.6 2015/08/25 12:57:33 sthen Exp $

COMMENT =		library set for simulations, games and visualizations

DISTNAME =		simgear-3.4.0
REVISION =		1

SHARED_LIBS +=  SimGearCore               2.0 # 2.10
SHARED_LIBS +=  SimGearScene              2.0 # 2.10

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

HOMEPAGE =		http://simgear.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.ibiblio.org/pub/mirrors/simgear/ftp/Source/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += GL GLU OpenThreads expat m openal osg osgDB osgGA osgParticle
WANTLIB += osgSim osgText osgUtil osgViewer pthread z

MODULES =		devel/cmake gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		graphics/openscenegraph \
			audio/openal

CONFIGURE_ARGS +=	-DSYSTEM_EXPAT=ON

CFLAGS +=		-I${X11BASE}/include -pthread
CXXFLAGS +=		-I${X11BASE}/include -pthread

NO_TEST =		Yes

.include <bsd.port.mk>
