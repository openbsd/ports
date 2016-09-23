# $OpenBSD: Makefile,v 1.9 2016/09/23 09:16:54 sthen Exp $

COMMENT =		modern, open-source flight simulator

DISTNAME =		flightgear-${V}
REVISION =		0

WANTLIB += GL GLU OpenThreads SimGearCore SimGearScene X11 Xi
WANTLIB += Xmu c curl glut m openal osg osgDB osgFX osgGA osgParticle
WANTLIB += osgSim osgText osgUtil osgViewer png pthread sqlite3
WANTLIB += z
#WANTLIB += GL GLU ICE OpenThreads SM SimGearCore SimGearScene
#WANTLIB += X11 Xext Xft Xi Xinerama Xmu bz2 c curl fltk fltk_forms
#WANTLIB += fltk_gl fltk_images glut m openal osg osgDB osgFX osgGA
#WANTLIB += osgParticle osgSim osgText osgUtil osgViewer png pthread
#WANTLIB += sqlite3 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=flightgear/}

MODULES =	devel/cmake gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c++
BUILD_DEPENDS =	devel/boost \
		devel/plib
LIB_DEPENDS =	databases/sqlite3 \
		graphics/freeglut \
		graphics/simgear>=$V
RUN_DEPENDS =	games/flightgear/data>=${V}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
			-DFG_DATA_DIR="${TRUEPREFIX}/share/flightgear" \
			-DSYSTEM_SQLITE=ON \
			-DENABLE_IAX=OFF \
			-DENABLE_FGCOM=OFF \
			-DENABLE_QT=OFF

NO_TEST =	Yes

pre-configure:
	perl -pi -e 's/^\.Id.*//' ${WRKSRC}/man/*.1.in

.include <bsd.port.mk>
