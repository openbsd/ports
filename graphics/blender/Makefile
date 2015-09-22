# $OpenBSD: Makefile,v 1.69 2015/09/22 18:48:40 pascal Exp $

ONLY_FOR_ARCHS = amd64 i386

COMMENT =	3D creation software

DISTNAME =	blender-2.75

CATEGORIES =	graphics

HOMEPAGE =	http://www.blender.org/

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/

MODULES =	devel/cmake \
		lang/python \
		gcc4
MODGCC4_ARCHS = *
MODGCC4_LANGS += c++
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
		graphics/ffmpeg>=20111126 \
		graphics/openimageio \
		${MODPY_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/librsvg

WANTLIB += GL GLEW GLU Half Iex IlmImf IlmThread Imath OpenColorIO
WANTLIB += OpenImageIO X11 Xi Xxf86vm avcodec avdevice avformat
WANTLIB += avutil boost_date_time-mt boost_filesystem-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c freetype jpeg m openal
WANTLIB += openjpeg png pthread ${MODPY_WANTLIB} swscale tiff tinyxml
WANTLIB += util yaml-cpp z

NO_TEST =	Yes

CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include -pthread

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
