# powerpc - tbb 64-bit atomics
# sparc64 - openexr linking failure
# 32-bit archs - static assert in cuda that a pointer is the same size as ULL
ONLY_FOR_ARCHS = aarch64 amd64 powerpc64 riscv64
DPB_PROPERTIES = parallel

COMMENT =	3D creation software

DISTNAME =	blender-4.4.3

CATEGORIES =	graphics

HOMEPAGE =	https://www.blender.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Alembic Iex-3_3 IlmThread-3_3 Imath-3_1
WANTLIB += OpenColorIO OpenEXR-3_3 OpenEXRCore-3_3 OpenImageIO
WANTLIB += OpenImageIO_Util X11 Xfixes Xi Xrender Xxf86vm atomic
WANTLIB += avcodec avdevice avfilter avformat avutil b2 blas bz2
WANTLIB += c cblas crypto curses epoxy execinfo expat ffi fftw3
WANTLIB += fftw3f fftw3f_threads freetype gmp gmpxx intl jpeg
WANTLIB += lapack lzma m minizip openal openjp2 openvdb osdCPU
WANTLIB += osdGPU panel pipewire-0.3 png potrace pugixml pystring
WANTLIB += ${MODPY_WANTLIB} readline shaderc_shared sharpyuv sndfile
WANTLIB += sqlite3 ssl swresample swscale tbb util vulkan webp
WANTLIB += webpdemux webpmux xkbcommon yaml-cpp z zstd

SITES =		https://download.blender.org/source/ \
		http://mirror.cs.umn.edu/blender.org/source/

EXTRACT_SUFX = .tar.xz

MODULES =	devel/cmake \
		lang/python

COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS =	-DPYTHON_INCLUDE_DIR="${MODPY_INCDIR}" \
			-DPYTHON_VERSION=${MODPY_VERSION} \
			-DWITH_CYCLES_EMBREE=OFF \
			-DWITH_INSTALL_PORTABLE=OFF \
			-DWITH_INTERNATIONAL=OFF \
			-DWITH_SYSTEM_FREETYPE=ON \
			-DWITH_JACK=OFF \
			-DWITH_OPENMP=OFF \
			-DWITH_PULSEAUDIO=OFF \
			-DWITH_SYSTEM_GLEW=ON

# Disable PCH, build issue with cmake 3.28
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=	-DWITH_CPU_SIMD=OFF
.endif

BUILD_DEPENDS =	math/py-numpy \
		devel/boost \
		lang/cython \
		devel/sdl2 \
		graphics/tiff \
		www/py-requests

# woff2_decompress in do-install
BUILD_DEPENDS += archivers/woff2>=1.0.2p1

LIB_DEPENDS =	audio/libsndfile \
		audio/openal \
		devel/gmp,-cxx \
		devel/tbb \
		graphics/alembic \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/opencolorio \
		graphics/openexr \
		graphics/openimageio \
		graphics/openjp2 \
		graphics/opensubdiv \
		graphics/openvdb \
		graphics/png \
		graphics/potrace \
		graphics/shaderc \
		graphics/vulkan-loader \
		math/fftw3 \
		math/fftw3,float \
		multimedia/pipewire/pipewire,-libs \
		${MODPY_LIB_DEPENDS}

RUN_DEPENDS =	devel/desktop-file-utils \
		math/py-numpy \
		www/py-requests \
		x11/gnome/librsvg

NO_TEST =	Yes

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib -L${LOCALBASE}/lib
CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
CFLAGS +=		-I${LOCALBASE}/include

MODPY_ADJ_FILES =	scripts/modules/bl_i18n_utils/merge_po.py \
			scripts/modules/bl_i18n_utils/utils_rtl.py \
			scripts/modules/blend_render_info.py \
			scripts/addons/io_curve_svg/svg_util_test.py \
			scripts/addons/io_scene_fbx/fbx2json.py \
			scripts/addons/io_scene_fbx/json2fbx.py \
			scripts/addons/sun_position/geo.py \
			datafiles/alert_icons_update.py \
			datafiles/blender_icons_geom_update.py \
			datafiles/blender_icons_update.py \
			datafiles/ctodata.py \
			datafiles/prvicons_update.py

#do-install:
#	${INSTALL_SCRIPT} ${FILESDIR}/blender ${PREFIX}/bin
#	${SUBST_CMD} ${PREFIX}/bin/blender
#	${INSTALL_PROGRAM} ${WRKBUILD}/bin/blender ${PREFIX}/bin/blender-bin
#	${INSTALL_SCRIPT} ${WRKSRC}/release/bin/blender-softwaregl \
#		${PREFIX}/bin/blender-softwaregl
#	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts
#	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/datafiles
#	cd ${WRKSRC}/scripts && pax -rw . \
#		${PREFIX}/share/blender/scripts
#	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/scripts/addons/cycles
#	cd ${WRKSRC}/intern/cycles/blender/addon && pax -rw . \
#		${PREFIX}/share/blender/scripts/addons/cycles
#	${INSTALL_DATA_DIR} ${PREFIX}/share/blender/datafiles/fonts
#	cd ${WRKSRC}/release/datafiles/fonts && pax -rw . \
#		${PREFIX}/share/blender/datafiles/fonts
#	cd ${WRKSRC}/release/datafiles && pax -rw . \
#		${PREFIX}/share/blender/datafiles
#	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blender
#	${INSTALL_DATA} ${WRKSRC}/release/license/{spdx,others}/* \
#		${PREFIX}/share/doc/blender
#	${INSTALL_DATA} ${WRKSRC}/release/text/copy* \
#		${PREFIX}/share/doc/blender
#	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
#	${INSTALL_DATA} ${WRKSRC}/release/freedesktop/blender.desktop \
#		${PREFIX}/share/applications
#	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
#	${INSTALL_DATA} \
#		${WRKSRC}/release/freedesktop/icons/scalable/apps/blender.svg \
#		${PREFIX}/share/pixmaps
#	${MODPY_BIN} ${WRKSRC}/doc/manpage/blender.1.py \
#		--blender ${WRKBUILD}/bin/blender \
#		--output ${PREFIX}/man/man1/blender.1
#	${MODPY_COMPILEALL} ${PREFIX}/share/blender/
#	# Replace woff2 by ttf
#	find ${PREFIX}/share/blender/${V}/datafiles/fonts -name '*.woff2' \
#		-exec ${LOCALBASE}/bin/woff2_decompress {} \;
#	rm ${PREFIX}/share/blender/datafiles/fonts/*.woff2

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/blender/
	# Replace woff2 with ttf
	find ${PREFIX}/share/blender/4.4/datafiles/fonts -name '*.woff2' \
		-exec ${LOCALBASE}/bin/woff2_decompress {} \;
	rm ${PREFIX}/share/blender/4.4/datafiles/fonts/*.woff2

.include <bsd.port.mk>
