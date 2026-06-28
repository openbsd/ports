DPB_PROPERTIES =	parallel

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.51.0
GH_ACCOUNT =		OpenMW
GH_PROJECT =		openmw
GH_TAGNAME =		openmw-$V
DISTNAME =		openmw-$V

DISTFILES.a =		03259f3287ff8330f0d66fcd98d022edddffaa97.zip
DIST_SUBDIR =		openmw
SITES.a =		https://github.com/recastnavigation/recastnavigation/archive/

CATEGORIES =		games

HOMEPAGE =		https://openmw.org/en/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3 / custom BSD-like font license / DejaVu license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} BulletCollision GL LinearMath MyGUIEngine
WANTLIB += OpenThreads Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Svg Qt6Widgets SDL2 avcodec avformat avutil boost_container-mt
WANTLIB += boost_iostreams-mt boost_program_options-mt boost_random-mt
WANTLIB += boost_regex-mt c collada-dom2.4-dp icudata icui18n
WANTLIB += icuuc luajit-5.1 lz4 m openal osg osgAnimation osgDB
WANTLIB += osgFX osgGA osgParticle osgShadow osgSim osgText osgUtil
WANTLIB += osgViewer sqlite3 swresample swscale tinyxml unshield
WANTLIB += yaml-cpp z

MODULES =		devel/cmake lang/lua x11/qt6 lang/clang
MODCLANG_VERSION =	22
COMPILER =		ports-clang

MODCMAKE_POLICY_VERSION_OVERRIDE=	Yes

BUILD_DEPENDS =		sysutils/e2fsprogs
LIB_DEPENDS =		archivers/unshield \
			audio/openal \
			databases/sqlite3 \
			devel/boost \
			devel/bullet \
			devel/mygui \
			devel/sdl2 \
			devel/yaml-cpp \
			graphics/ffmpeg \
			graphics/openscenegraph>=3.6.5p11 \
			lang/luajit \
			textproc/icu4c \
			textproc/tinyxml \
			x11/qt6/qtsvg
RUN_DEPENDS  =		devel/desktop-file-utils

CONFIGURE_ARGS +=	-DBINDIR=${LOCALBASE}/bin \
			-DDATADIR:PATH=${LOCALBASE}/share/openmw \
			-DSYSCONFDIR=${PREFIX}/share/examples/openmw \
			-DGLOBAL_CONFIG_PATH="${SYSCONFDIR}" \
			-DOPENMW_RESOURCE_FILES="${LOCALBASE}/share/openmw/resources" \
			-DCMAKE_PREFIX_PATH="${LOCALBASE}/lib/qt5/cmake:${LOCALBASE}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCOLLADA_DOM_VERSION_MINOR=4 \
			-DUSE_SYSTEM_TINYXML=ON

NO_TEST =		Yes

CFLAGS +=		-I${X11BASE}/include -pthread
CXXFLAGS +=		-I${X11BASE}/include -pthread
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib

post-extract:
	mkdir ${WRKDIST}/extern/fetched
	mv ${WRKDIR}/recastnavigation-03259f3287ff8330f0d66fcd98d022edddffaa97 \
		${WRKDIST}/extern/fetched/recastnavigation

post-patch:
	${SUBST_CMD} ${WRKSRC}/components/files/linuxpath.cpp \
			${WRKSRC}/components/crashcatcher/crashcatcher.cpp

.include <bsd.port.mk>
