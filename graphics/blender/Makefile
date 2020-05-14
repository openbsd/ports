# $OpenBSD: Makefile,v 1.96 2020/05/14 12:35:31 ajacoutot Exp $

ONLY_FOR_ARCHS = amd64 i386

COMMENT =	3D creation software

DISTNAME =	blender-2.79
REVISION =	9

CATEGORIES =	graphics

HOMEPAGE =	https://www.blender.org/

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU Half-2_5 Iex-2_5 IlmImf-2_5
WANTLIB += IlmThread-2_5 Imath-2_5 OpenColorIO OpenImageIO X11
WANTLIB += Xi Xrender Xxf86vm avcodec avdevice avformat avutil
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_regex-mt boost_system-mt
WANTLIB += boost_thread-mt c freetype jpeg m openal openjpeg png
WANTLIB += swscale tiff tinyxml util yaml-cpp z

MASTER_SITES =	https://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/

MODULES =	devel/cmake \
		lang/python \


COMPILER =	base-clang ports-gcc

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

CONFIGURE_ARGS =	-DPYTHON_INCLUDE_DIR="${MODPY_INCDIR}" \
			-DPYTHON_VERSION=${MODPY_VERSION} \
			-DWITH_CODEC_FFMPEG=ON \
			-DWITH_INTERNATIONAL=OFF \
			-DWITH_RAYOPTIMIZATION=OFF \
			-DWITH_OPENCOLORIO=ON \
			-DWITH_SYSTEM_OPENJPEG=ON \
			-DWITH_CPU_SSE=OFF

BUILD_DEPENDS =	devel/gflags
LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/glew \
		graphics/openexr \
		graphics/tiff \
		devel/boost \
		audio/openal \
		graphics/openjpeg \
		graphics/ffmpeg \
		graphics/openimageio \
		${MODPY_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/librsvg

NO_TEST =	Yes

CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include -pthread \
		-std=c++11
CFLAGS +=	-I${LOCALBASE}/include

MODPY_ADJ_FILES =	release/bin/blender-thumbnailer.py \
			release/scripts/modules/blend_render_info.py

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/blender ${PREFIX}/bin
	${SUBST_CMD} ${PREFIX}/bin/blender
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/blender ${PREFIX}/bin/blender-bin
	${INSTALL_SCRIPT} ${WRKSRC}/release/bin/blender-thumbnailer.py \
		${PREFIX}/bin/blender-thumbnailer
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/datafiles
	cd ${WRKSRC}/release/scripts && pax -rw . \
		${PREFIX}/share/blender/scripts
	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts/addons/cycles
	cd ${WRKSRC}/intern/cycles/blender/addon && pax -rw . \
		${PREFIX}/share/blender/scripts/addons/cycles
	cd ${WRKSRC}/release/datafiles && pax -rw . \
		${PREFIX}/share/blender/datafiles
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/*license* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA} ${WRKSRC}/release/text/copy* \
		${PREFIX}/share/doc/blender
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/release/freedesktop/blender.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} \
		${WRKSRC}/release/freedesktop/icons/scalable/apps/blender.svg \
		${PREFIX}/share/pixmaps
	${MODPY_BIN} ${WRKSRC}/doc/manpage/blender.1.py \
		${WRKBUILD}/bin/blender ${PREFIX}/man/man1/blender.1

.include <bsd.port.mk>
