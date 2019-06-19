# $OpenBSD: Makefile,v 1.17 2019/06/19 15:44:21 naddy Exp $

COMMENT =		modern, open-source flight simulator

DISTNAME =		flightgear-${V}
REVISION =		4

WANTLIB += ICE GL GLU OpenThreads SimGearCore SimGearScene SM X11 Xext Xi
WANTLIB += Xmu c curl glut m openal osg osgDB osgFX osgGA osgParticle
WANTLIB += osgSim osgText osgUtil osgViewer png pthread sqlite3
WANTLIB += z ${COMPILER_LIBCXX}
#WANTLIB += GL GLU ICE OpenThreads SM SimGearCore SimGearScene
#WANTLIB += X11 Xext Xft Xi Xinerama Xmu bz2 c curl fltk fltk_forms
#WANTLIB += fltk_gl fltk_images glut m openal osg osgDB osgFX osgGA
#WANTLIB += osgParticle osgSim osgText osgUtil osgViewer png pthread
#WANTLIB += sqlite3 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=flightgear/}

MODULES =	devel/cmake
COMPILER =	base-clang ports-gcc

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

# Keep C++ #include <version> from picking up this unrelated file
post-extract:
	mv ${WRKSRC}/version ${WRKSRC}/version.txt

pre-configure:
	perl -pi -e 's/^\.Id.*//' ${WRKSRC}/man/*.1.in

.include <bsd.port.mk>
