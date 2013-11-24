# $OpenBSD: Makefile,v 1.1.1.1 2013/11/24 21:59:15 pascal Exp $

COMMENT =		library set for simulations, games and visualizations

DISTNAME =		simgear-2.12.0

SHARED_LIBS +=  SimGearCore               0.0 # 2.10
SHARED_LIBS +=  SimGearScene              0.0 # 2.10

CATEGORIES =		graphics

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

HOMEPAGE =		http://simgear.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://mirrors.ibiblio.org/pub/mirrors/simgear/ftp/Source/
EXTRACT_SUFX =		.tar.bz2

WANTLIB += GL GLU ICE OpenThreads SM X11 Xext expat m openal osg
WANTLIB += osgDB osgGA osgParticle osgSim osgText osgUtil pthread
WANTLIB += stdc++ z

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		graphics/openscenegraph \
			audio/openal

CONFIGURE_ARGS +=	-DSYSTEM_EXPAT=ON \
			-DENABLE_LIBSVN=OFF

CFLAGS +=		-I${X11BASE}/include -pthread

NO_TEST =		Yes

.include <bsd.port.mk>
