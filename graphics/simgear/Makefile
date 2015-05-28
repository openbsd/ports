# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:24 pascal Exp $

COMMENT =		library set for simulations, games and visualizations

DISTNAME =		simgear-3.4.0
REVISION =		0

SHARED_LIBS +=  SimGearCore               2.0 # 2.10
SHARED_LIBS +=  SimGearScene              2.0 # 2.10

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

HOMEPAGE =		http://simgear.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.ibiblio.org/pub/mirrors/simgear/ftp/Source/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += GL GLU ICE OpenThreads SM X11 Xext expat m openal osg
WANTLIB += osgDB osgGA osgParticle osgSim osgText osgUtil pthread
WANTLIB += z

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
