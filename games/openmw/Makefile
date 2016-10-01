# $OpenBSD: Makefile,v 1.5 2016/10/01 12:56:12 pascal Exp $

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.40.0
DISTNAME =		openmw-$V

CATEGORIES =		games

HOMEPAGE =		https://openmw.org/en/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3 / custom BSD-like font license / DejaVu license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += BulletCollision GL LinearMath MyGUIEngine OpenThreads
WANTLIB += QtGui QtNetwork QtOpenGL SDL2 Xt avcodec avformat avutil
WANTLIB += boost_filesystem-mt boost_program_options-mt boost_system-mt
WANTLIB += boost_thread-mt c freetype m openal osg osgAnimation
WANTLIB += osgDB osgFX osgGA osgParticle osgText osgUtil
WANTLIB += osgViewer pthread swresample swscale unshield

GH_ACCOUNT =		OpenMW
GH_PROJECT =		openmw
GH_TAGNAME =		openmw-$V

MODULES =		gcc4 devel/cmake x11/qt4
MODGCC4_ARCHS = 	*
MODGCC4_LANGS += 	c++
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
			-DOPENMW_RESOURCE_FILES="${LOCALBASE}/share/openmw/resources"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/openmw-openmw-$V

CFLAGS += 		-I${X11BASE}/include -pthread
CXXFLAGS += 		-I${X11BASE}/include -pthread

.include <bsd.port.mk>
