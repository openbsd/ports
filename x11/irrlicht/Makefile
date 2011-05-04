# $OpenBSD: Makefile,v 1.3 2011/05/04 11:34:49 jasper Exp $

COMMENT =		fast, real time 3D engine
DISTNAME =		irrlicht-1.7.2

REVISION =		0

SO_VERSION =		0.0
SHARED_LIBS =		Irrlicht ${SO_VERSION}

CATEGORIES =		x11 games

HOMEPAGE =		http://irrlicht.sourceforge.net/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD-style (zlib/libpng)
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += 		GL Xxf86vm bz2 jpeg m png stdc++>=51.0 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=irrlicht/}

EXTRACT_SUFX =		.zip

LIB_DEPENDS =		graphics/png \
			graphics/jpeg \
			archivers/bzip2

USE_GMAKE =		Yes

MAKE_ENV +=		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			CXX="${CXX}" \
			CXXFLAGS="${CXXFLAGS}" \
			NDEBUG=1 \
			SO_VERSION="${SO_VERSION}"
MAKE_FLAGS +=		CXXINCS="-I../../include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include" \

NO_REGRESS =		Yes

WRKSRC =		${WRKDIST}/source/Irrlicht

ALL_TARGET =		sharedlib staticlib

EXAMPLEDIRS =		01.HelloWorld 02.Quake3Map 03.CustomSceneNode \
			04.Movement 05.UserInterface 06.2DGraphics 07.Collision\
			08.SpecialFX 09.Meshviewer 10.Shaders \
			11.PerPixelLighting 12.TerrainRendering \
			13.RenderToTexture 14.Win32Window 15.LoadIrrFile \
			16.Quake3MapShader 17.HelloWorld_Mobile 18.SplitScreen \
			19.MouseAndJoystick 20.ManagedLights 21.Quake3Explorer \
			22.MaterialViewer 23.SMeshHandling Demo

pre-patch:
	@perl -pi -e 's/\015//g' ${WRKSRC}/*.{cpp,h} ${WRKSRC}/Makefile \
		${WRKDIST}/include/*.h
.	for DIR in ${EXAMPLEDIRS}
	find ${WRKDIST}/examples/${DIR} -type f \( -name "*.cpp" -or -name \
		"*.h" -or -name Makefile \) -exec perl -pi -e 's/\015//g' \
		"{}" \;
.	endfor
	cd ${WRKDIST}/doc && perl -pi -e 's/\015//g' aesGladman.txt \
		bzip2-license.txt index.html readme.txt upgrade-guide.txt
	cd ${WRKDIST}/media && perl -pi -e 's/\015//g' config.xml d3d8.[pv]sh \
		d3d9.{hlsl,psh,vsh} dwarf-Read-Me.txt earth.x map-20kdm2.txt \
		ninja\ animation\ ranges.txt opengl.{frag,psh,vert,vsh}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/irrlicht
	${INSTALL_DATA} ${WRKDIST}/include/*.h ${PREFIX}/include/irrlicht/

	${INSTALL_DATA} ${WRKDIST}/lib/OpenBSD/libIrrlicht.a ${PREFIX}/lib/
	${INSTALL_DATA} ${WRKDIST}/lib/OpenBSD/libIrrlicht.so.${LIBIrrlicht_VERSION} \
		${PREFIX}/lib/

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irrlicht
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irrlicht/doc
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irrlicht/doc/html
	cd ${WRKDIST}/doc && ${INSTALL_DATA} aesGladman.txt bzip2-license.txt \
		index.html readme.txt upgrade-guide.txt \
		${PREFIX}/share/doc/irrlicht/doc
	find ${WRKDIST}/doc/html -type f -exec ${INSTALL_DATA} "{}" \
		${PREFIX}/share/doc/irrlicht/doc/html/ \;

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irrlicht/media
	find ${WRKDIST}/media -type f -exec ${INSTALL_DATA} "{}" \
		${PREFIX}/share/doc/irrlicht/media/ \;

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irrlicht/examples
	${INSTALL_DATA} ${WRKDIST}/examples/Makefile \
		${PREFIX}/share/doc/irrlicht/examples/
.	for DIR in ${EXAMPLEDIRS}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irrlicht/examples/${DIR}
	find ${WRKDIST}/examples/${DIR} -type f \( -name "*.cpp" -or -name \
		"*.h" -or -name Makefile \) -exec ${INSTALL_DATA} "{}" \
		${PREFIX}/share/doc/irrlicht/examples/${DIR}/ \;
.	endfor


.include <bsd.port.mk>
