# powerpc - tbb 64-bit atomics
# sparc64 - OpenColorIO 2.1.1 broken due to missing locale functions in
#           libstdc++, which libc++ mostly provides wrappers for, but OCIO
#           exposed issues there as well / fix tbb
ONLY_FOR_ARCHS = aarch64 amd64 i386 powerpc64 riscv64
DPB_PROPERTIES = parallel

COMMENT =	3D creation software

DISTNAME =	blender-3.3.16
REVISION =	2
CATEGORIES =	graphics

HOMEPAGE =	https://www.blender.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += ${COMPILER_LIBCXX} Alembic GL GLEW Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += OpenColorIO OpenEXR-3_2 OpenEXRCore-3_2 OpenImageIO OpenImageIO_Util
WANTLIB += SDL2 X11 Xfixes Xi Xrender Xxf86vm avcodec avdevice
WANTLIB += avfilter avformat avutil blosc boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_iostreams-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c expat
WANTLIB += fftw3 freetype gmp gmpxx jpeg m openal openjp2 openvdb
WANTLIB += osdCPU osdGPU png potrace pugixml pystring sharpyuv sndfile
WANTLIB += swresample swscale tbb tiff util webp webpdemux webpmux
WANTLIB += yaml-cpp z zstd

SITES =		https://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/

EXTRACT_SUFX = .tar.xz

MODULES =	devel/cmake \
		lang/python

COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS =	-DPYTHON_INCLUDE_DIR="${MODPY_INCDIR}" \
			-DPYTHON_VERSION=${MODPY_VERSION} \
			-DWITH_INTERNATIONAL=OFF \
			-DWITH_OPENMP=OFF \
			-DWITH_SYSTEM_GLEW=ON \
			-DWITH_CYCLES_EMBREE=OFF \
			-DWITH_JACK=OFF \
			-DWITH_PULSEAUDIO=OFF

# Disable PCH, build issue with cmake 3.28
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=	-DWITH_CPU_SIMD=OFF
.endif

BUILD_DEPENDS = math/py-numpy${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}
LIB_DEPENDS =	audio/libsndfile \
		audio/openal \
		devel/boost \
		devel/gmp,-cxx \
		devel/sdl2 \
		devel/tbb \
		graphics/alembic \
		graphics/ffmpeg \
		graphics/glew \
		graphics/jpeg \
		graphics/opencolorio \
		graphics/openexr \
		graphics/openimageio \
		graphics/openjp2 \
		graphics/opensubdiv \
		graphics/openvdb \
		graphics/png \
		graphics/potrace \
		graphics/tiff \
		math/fftw3 \
		${MODPY_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils \
		math/py-numpy${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		x11/gnome/librsvg

NO_TEST =	Yes

CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
CFLAGS +=	-I${LOCALBASE}/include

MODPY_ADJ_FILES =	release/scripts/modules/bl_i18n_utils/merge_po.py \
			release/scripts/modules/bl_i18n_utils/utils_rtl.py \
			release/scripts/modules/blend_render_info.py \
			release/scripts/addons/io_curve_svg/svg_util_test.py \
			release/scripts/addons/io_scene_fbx/fbx2json.py \
			release/scripts/addons/io_scene_fbx/json2fbx.py \
			release/scripts/addons/sun_position/geo.py \
			release/datafiles/alert_icons_update.py \
			release/datafiles/blender_icons_geom_update.py \
			release/datafiles/blender_icons_update.py \
			release/datafiles/ctodata.py \
			release/datafiles/prvicons_update.py

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/blender ${PREFIX}/bin
	${SUBST_CMD} ${PREFIX}/bin/blender
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/blender ${PREFIX}/bin/blender-bin
	${INSTALL_SCRIPT} ${WRKSRC}/release/bin/blender-softwaregl \
		${PREFIX}/bin/blender-softwaregl
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
	${INSTALL_DATA} ${WRKSRC}/release/license/* \
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
		--blender ${WRKBUILD}/bin/blender \
		--output ${PREFIX}/man/man1/blender.1
	${MODPY_COMPILEALL} ${PREFIX}/share/blender/

.include <bsd.port.mk>
