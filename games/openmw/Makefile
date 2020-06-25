# $OpenBSD: Makefile,v 1.24 2020/06/25 14:18:52 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.46.0
GH_ACCOUNT =		OpenMW
GH_PROJECT =		openmw
GH_TAGNAME =		openmw-$V
DISTNAME =		openmw-$V

CATEGORIES =		games

HOMEPAGE =		https://openmw.org/en/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3 / custom BSD-like font license / DejaVu license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} BulletCollision GL LinearMath MyGUIEngine
WANTLIB += OpenThreads Qt5Core Qt5Gui Qt5Network Qt5OpenGL Qt5Widgets
WANTLIB += SDL2 avcodec avformat avutil boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_system-mt c m openal osg osgDB osgFX
WANTLIB += osgGA osgParticle osgShadow osgText osgUtil osgViewer swresample
WANTLIB += swscale unshield

MODULES =		devel/cmake x11/qt5

BUILD_DEPENDS = 	sysutils/e2fsprogs
LIB_DEPENDS =		audio/openal \
			devel/bullet \
			devel/mygui \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/openscenegraph \
			archivers/unshield
RUN_DEPENDS  = 		devel/desktop-file-utils

CONFIGURE_ARGS += 	-DBINDIR=${LOCALBASE}/bin \
			-DDATADIR:PATH=${LOCALBASE}/share/openmw \
			-DSYSCONFDIR=${PREFIX}/share/examples/openmw \
			-DGLOBAL_CONFIG_PATH="${SYSCONFDIR}" \
			-DCMAKE_EXE_LINKER_FLAGS="-L${X11BASE}/lib" \
			-DMORROWIND_DATA_FILES="${LOCALBASE}/share/openmw/data"\
			-DOPENMW_RESOURCE_FILES="${LOCALBASE}/share/openmw/resources" \
			-DDESIRED_QT_VERSION=5 \
			-DCMAKE_PREFIX_PATH="${LOCALBASE}/lib/qt5/cmake" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/openmw-openmw-$V

CFLAGS += 		-I${X11BASE}/include -pthread
CXXFLAGS += 		-I${X11BASE}/include -pthread

.include <bsd.port.mk>
