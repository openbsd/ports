# powerpc - tbb 64-bit atomics
# sparc64 - openexr linking failure
# 32-bit archs - static assert in cuda that a pointer is the same size as ULL
ONLY_FOR_ARCHS = aarch64 amd64 powerpc64 riscv64
DPB_PROPERTIES = parallel

COMMENT =	3D creation software

VERSION =	4.5.3
V =		${VERSION:R}
DISTNAME =	blender-${VERSION}

CATEGORIES =	graphics

HOMEPAGE =	https://www.blender.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Alembic Iex-3_4 IlmThread-3_4 Imath-3_2
WANTLIB += OpenColorIO OpenEXR-3_4 OpenEXRCore-3_4 OpenImageIO
WANTLIB += OpenImageIO_Util X11 Xfixes Xi Xrender atomic avcodec
WANTLIB += avdevice avfilter avformat avutil c epoxy execinfo
WANTLIB += fftw3 fftw3f fftw3f_threads freetype gmp gmpxx hpdf
WANTLIB += jpeg m openal openjp2 openvdb osdCPU osdGPU pipewire-0.3
WANTLIB += png potrace pugixml ${MODPY_WANTLIB} shaderc_shared sharpyuv
WANTLIB += sndfile swresample swscale tbb tiff util vulkan webp
WANTLIB += webpdemux webpmux z zstd

SITES =		https://download.blender.org/source/ \

EXTRACT_SUFX = .tar.xz

MODULES =	devel/cmake \
		lang/python

COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS =	-DWITH_PYTHON_INSTALL=OFF \
			-DPYTHON_INCLUDE_DIR="${MODPY_INCDIR}" \
			-DPYTHON_VERSION=${MODPY_VERSION} \
			-DWITH_CYCLES_EMBREE=OFF \
			-DWITH_INSTALL_PORTABLE=OFF \
			-DWITH_INTERNATIONAL=OFF \
			-DWITH_SYSTEM_FREETYPE=ON \
			-DWITH_JACK=OFF \
			-DWITH_OPENMP=OFF \
			-DWITH_PULSEAUDIO=OFF \
			-DWITH_SYSTEM_GLEW=ON \
			-DWITH_GHOST_WAYLAND=OFF

# Disable PCH, build issue with cmake 3.28
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_PRECOMPILE_HEADERS=ON

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS+=	-DWITH_CPU_SIMD=OFF
.endif

BUILD_DEPENDS =	devel/boost \
		devel/py-six \
		devel/sdl2 \
		graphics/tiff \
		lang/cython \
		math/py-numpy \
		www/py-requests

# woff2_decompress in do-install
BUILD_DEPENDS += archivers/woff2>=1.0.2p1

LIB_DEPENDS =	archivers/zstd \
		audio/libsndfile \
		audio/openal \
		devel/gmp,-cxx \
		devel/tbb \
		graphics/alembic \
		graphics/ffmpeg \
		graphics/jpeg \
		graphics/libwebp \
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
		math/imath \
		multimedia/pipewire/pipewire,-libs \
		print/libharu \
		textproc/pugixml \
		${MODPY_LIB_DEPENDS}

RUN_DEPENDS =	devel/desktop-file-utils \
		math/py-numpy \
		www/py-requests \
		x11/gnome/librsvg \
		x11/gtk+4,-guic

NO_TEST =	Yes

MODCMAKE_LDFLAGS +=	-L${X11BASE}/lib -L${LOCALBASE}/lib
CXXFLAGS +=		-I${LOCALBASE}/include -I${X11BASE}/include
CFLAGS +=		-I${LOCALBASE}/include

# XXX hack for fmt >=1.11; to be removed at next release probably
# /usr/local/include/OpenImageIO/detail/fmt/format.h:41:10: fatal error: 'base.h' file not found
CXXFLAGS +=		-I${LOCALBASE}/include/fmt/
BUILD_DEPENDS +=	devel/fmt

MODPY_ADJ_FILES =	scripts/modules/bl_i18n_utils/merge_po.py \
			scripts/modules/bl_i18n_utils/utils_rtl.py \
			scripts/modules/blend_render_info.py

SUBST_VARS =	V

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/blender/
	# Replace woff2 with ttf
	find ${PREFIX}/share/blender/${V}/datafiles/fonts -name '*.woff2' \
		-exec ${LOCALBASE}/bin/woff2_decompress {} \;
	rm ${PREFIX}/share/blender/${V}/datafiles/fonts/*.woff2
	#
	mv ${PREFIX}/bin/blender ${PREFIX}/bin/blender-bin
	${INSTALL_SCRIPT} ${FILESDIR}/blender ${PREFIX}/bin
	${SUBST_CMD} ${PREFIX}/bin/blender

.include <bsd.port.mk>
