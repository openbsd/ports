DPB_PROPERTIES =	parallel

ONLY_FOR_ARCHS =	amd64 i386

COMMENT =		open source implementation of TES III: Morrowind

V =			0.50.0
REVISION =		0
GH_ACCOUNT =		OpenMW
GH_PROJECT =		openmw
GH_TAGNAME =		openmw-$V
DISTNAME =		openmw-$V

DISTFILES.a =		c393777d26d2ff6519ac23612abf8af42678c9dd.zip
DIST_SUBDIR =		openmw
SITES.a =		https://github.com/recastnavigation/recastnavigation/archive/

CATEGORIES =		games

HOMEPAGE =		https://openmw.org/en/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3 / custom BSD-like font license / DejaVu license
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} BulletCollision GL LinearMath MyGUIEngine
WANTLIB += OpenThreads Qt6Core Qt6Gui Qt6Network Qt6OpenGL Qt6OpenGLWidgets
WANTLIB += Qt6Svg Qt6Widgets SDL2 avcodec avformat avutil boost_iostreams-mt
WANTLIB += boost_program_options-mt boost_random-mt boost_regex-mt
WANTLIB += boost_system-mt c collada-dom2.4-dp icudata icui18n icuuc luajit-5.1
WANTLIB += lz4 m openal osg osgAnimation osgDB osgFX osgGA osgParticle
WANTLIB += osgShadow osgSim osgText osgUtil osgViewer sqlite3
WANTLIB += swresample swscale unshield yaml-cpp z

MODULES =		devel/cmake lang/lua x11/qt6 lang/clang
MODCLANG_VERSION =	19
COMPILER =		ports-clang

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
			x11/qt6/qtsvg
RUN_DEPENDS  =		devel/desktop-file-utils

CONFIGURE_ARGS +=	-DBINDIR=${LOCALBASE}/bin \
			-DDATADIR:PATH=${LOCALBASE}/share/openmw \
			-DSYSCONFDIR=${PREFIX}/share/examples/openmw \
			-DGLOBAL_CONFIG_PATH="${SYSCONFDIR}" \
			-DOPENMW_RESOURCE_FILES="${LOCALBASE}/share/openmw/resources" \
			-DCMAKE_PREFIX_PATH="${LOCALBASE}/lib/qt5/cmake:${LOCALBASE}" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DCOLLADA_DOM_VERSION_MINOR=4

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/openmw-${GH_TAGNAME}

CFLAGS +=		-I${X11BASE}/include -pthread
CXXFLAGS +=		-I${X11BASE}/include -pthread
MODCMAKE_LDFLAGS =		-L${X11BASE}/lib

post-extract:
	mkdir ${WRKDIST}/extern/fetched
	mv ${WRKDIR}/recastnavigation-c393777d26d2ff6519ac23612abf8af42678c9dd \
		${WRKDIST}/extern/fetched/recastnavigation

post-patch:
	${SUBST_CMD} ${WRKSRC}/components/files/linuxpath.cpp

.include <bsd.port.mk>
