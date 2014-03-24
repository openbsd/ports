# $OpenBSD: Makefile,v 1.57 2014/03/24 21:16:14 pascal Exp $

ONLY_FOR_ARCHS = amd64 i386

COMMENT =	3D creation software

DISTNAME =	blender-2.70

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
			-DWITH_RAYOPTIMIZATION=OFF

BUILD_DEPENDS =	devel/gflags
LIB_DEPENDS =	graphics/png \
		graphics/jpeg \
		graphics/glew \
		graphics/openexr \
		graphics/tiff \
		devel/boost \
		devel/sdl \
		audio/openal \
		graphics/openjpeg \
		graphics/ffmpeg>=20111126 \
		graphics/openimageio \
		math/fftw3 \
		${MODPY_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gnome/librsvg

WANTLIB += GL GLEW GLU Half Iex IlmImf IlmThread Imath OpenImageIO
WANTLIB += SDL X11 Xi Xxf86vm avcodec avdevice avformat avutil
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c fftw3 freetype jpeg
WANTLIB += m openal openjpeg png pthread ${MODPY_WANTLIB} swscale tiff
WANTLIB += util z

NO_TEST =	Yes

CFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include -pthread

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
	${INSTALL_MAN} ${WRKSRC}/doc/manpage/blender.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
