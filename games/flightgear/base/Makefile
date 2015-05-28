# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:23 pascal Exp $

COMMENT =		modern, open-source flight simulator

DISTNAME =		flightgear-${V}
REVISION =		0

WANTLIB += GL GLU ICE OpenThreads SM SimGearCore SimGearScene
WANTLIB += X11 Xext Xft Xi Xinerama Xmu bz2 c fltk fltk_forms
WANTLIB += fltk_gl fltk_images glut m openal osg osgDB osgFX osgGA
WANTLIB += osgParticle osgSim osgText osgUtil osgViewer png pthread
WANTLIB += sqlite3 z

MASTER_SITES =	ftp://ftp.de.flightgear.org/pub/fgfs/Source/ \
		http://ftp.igh.cnrs.fr/pub/flightgear/ftp/Source/

MODULES =	devel/cmake gcc4
MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c++
BUILD_DEPENDS =	devel/boost \
		devel/plib
LIB_DEPENDS =	graphics/freeglut \
		x11/fltk \
		graphics/simgear>=$V
RUN_DEPENDS =	games/flightgear/data>=${V}

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="${PREFIX}/man" \
			-DFG_DATA_DIR="${TRUEPREFIX}/share/flightgear" \
			-DSYSTEM_SQLITE=ON \
			-DENABLE_IAX=OFF \
			-DENABLE_FGCOM=OFF

NO_TEST =	Yes

pre-configure:
	perl -pi -e 's/^\.Id.*//' ${WRKSRC}/man/*.1.in

.include <bsd.port.mk>
