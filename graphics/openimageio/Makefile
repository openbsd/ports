# XXX python module is linked with wrong libraries if an old version is
# installed during build

COMMENT =		library for reading and writing images

GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenImageIO
GH_TAGNAME =		v3.1.9.0
REVISION =		0
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=		OpenImageIO		19.0
SHARED_LIBS +=		OpenImageIO_Util	12.0

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/home

# Apache 2.0 / BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU Iex-3_4 IlmThread-3_4 Imath-3_2
WANTLIB += OpenColorIO OpenEXR-3_4 OpenEXRCore-3_4 Qt6Core Qt6Gui
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Widgets avcodec avformat
WANTLIB += avutil bz2 c freetype gif heif jpeg jxl jxl_threads
WANTLIB += m openjp2 openjph png pugixml raw_r sharpyuv swscale tbb tiff
WANTLIB += webp webpdemux webpmux z

MODULES =		devel/cmake \
			lang/python \
			x11/qt6

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/fmt \
			devel/py-pybind11 \
			devel/robin-map \
			textproc/txt2man

LIB_DEPENDS =		archivers/bzip2 \
			devel/tbb \
			graphics/ffmpeg \
			graphics/giflib \
			graphics/jpeg \
			graphics/libjxl \
			graphics/libraw \
			graphics/libwebp \
			graphics/opencolorio \
			graphics/openexr \
			graphics/openjp2 \
			graphics/openjph \
			graphics/png \
			graphics/tiff \
			math/imath \
			multimedia/libheif \
			textproc/pugixml

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="man/man1" \
			-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
			-DCMAKE_LIBRARY_PATH="${WRKBUILD}/lib:${CMAKE_LIBRARY_PATH}" \
			-DSTOP_ON_WARNING=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_DCMTK=ON \
			-DUSE_EXTERNAL_PUGIXML=ON \
			-DUSE_OPENCV=OFF \
			-DUSE_OPENVDB=OFF \
			-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11/

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH:Mhppa}
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -latomic"
WANTLIB +=		atomic
.endif

.include <bsd.port.mk>

# fix build when ccache is installed but not enabled
.if ${USE_CCACHE:L} != "yes"
CONFIGURE_ARGS +=	-DWITH_CCACHE=OFF
.endif
