# powerpc - tbb 64-bit atomics
# sparc64 - openexr linking failure
# 32-bit archs - static assert in cuda that a pointer is the same size as ULL
ONLY_FOR_ARCHS = aarch64 amd64 powerpc64 riscv64
DPB_PROPERTIES = parallel

COMMENT =	3D creation software

VERSION =	4.5.3
V =		${VERSION:R}
DISTNAME =	blender-${VERSION}
REVISION =	7

CATEGORIES =	graphics

HOMEPAGE =	https://www.blender.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB} Alembic Iex-3_4
WANTLIB += IlmThread-3_4 Imath-3_2 OpenColorIO OpenEXR-3_4 OpenEXRCore-3_4
WANTLIB += OpenImageIO OpenImageIO_Util X11 Xfixes Xi Xrender
WANTLIB += atomic avcodec avdevice avfilter avformat avutil c
WANTLIB += epoxy execinfo fftw3 fftw3f fftw3f_threads freetype
WANTLIB += gmp gmpxx hpdf jpeg m manifold openal openjp2 openvdb
WANTLIB += osdCPU osdGPU pipewire-0.3 png potrace pugixml shaderc_shared
WANTLIB += sharpyuv sndfile spnav swresample swscale tbb util
WANTLIB += vulkan webp webpdemux webpmux z zstd

SITES =		https://download.blender.org/source/ \

EXTRACT_SUFX = .tar.xz

MODULES =	devel/cmake \
		lang/python

COMPILER =	base-clang ports-gcc

CONFIGURE_ARGS =	-DPYTHON_INCLUDE_DIR="${MODPY_INCDIR}" \
			-DPYTHON_VERSION=${MODPY_VERSION} \
			-DWITH_BUILDINFO=OFF \
			-DWITH_CYCLES_DEVICE_CUDA=OFF \
			-DWITH_CYCLES_DEVICE_HIP=OFF \
			-DWITH_CYCLES_DEVICE_OPTIX=OFF \
			-DWITH_CYCLES_EMBREE=OFF \
			-DWITH_CYCLES_HIP_BINARIES=OFF \
			-DWITH_CYCLES_OSL=OFF \
			-DWITH_CYCLES_PATH_GUIDING=OFF \
			-DWITH_GHOST_WAYLAND=OFF \
			-DWITH_HYDRA=OFF \
			-DWITH_INSTALL_PORTABLE=OFF \
			-DWITH_INTERNATIONAL=OFF \
			-DWITH_JACK=OFF \
			-DWITH_LIBS_PRECOMPILED=OFF \
			-DWITH_MATERIALX=OFF \
			-DWITH_MEM_JEMALLOC=OFF \
			-DWITH_NANOVDB=OFF \
			-DWITH_OPENCOLLADA=OFF \
			-DWITH_OPENIMAGEDENOISE=OFF \
			-DWITH_PULSEAUDIO=OFF \
			-DWITH_PYTHON_INSTALL=OFF \
			-DWITH_SYSTEM_FREETYPE=ON \
			-DWITH_USD=OFF \
			-DWITH_XR_OPENXR=OFF

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
		cad/libspnav \
		cad/manifold \
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
