# XXX python module is linked with wrong libraries if an old version is
# installed during build

COMMENT =		library for reading and writing images

GH_ACCOUNT =		AcademySoftwareFoundation
GH_PROJECT =		OpenImageIO
GH_TAGNAME =		v2.5.10.1
PKGNAME =		${DISTNAME:L}

SHARED_LIBS +=		OpenImageIO		15.0 # 2.4.10
SHARED_LIBS +=		OpenImageIO_Util	10.0 # 2.4.10

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/home

# Apache 2.0 / BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLU Iex-3_2 IlmThread-3_2 Imath-3_1
WANTLIB += OpenColorIO OpenEXR-3_2 OpenEXRCore-3_2 Qt6Core Qt6Gui
WANTLIB += Qt6OpenGL Qt6OpenGLWidgets Qt6Widgets avcodec avformat
WANTLIB += avutil boost_atomic-mt boost_chrono-mt boost_filesystem-mt
WANTLIB += boost_thread-mt bz2 c freetype gif heif jpeg m openjp2
WANTLIB += png pugixml raw_r swscale tbb tiff webp webpdemux z

MODULES =		devel/cmake \
			lang/python \
			x11/qt6

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/fmt \
			devel/py-pybind11${MODPY_FLAVOR} \
			devel/robin-map \
			textproc/txt2man

LIB_DEPENDS =		devel/boost \
			devel/tbb \
			graphics/ffmpeg \
			graphics/giflib \
			graphics/jpeg \
			graphics/libraw \
			graphics/libwebp \
			graphics/opencolorio \
			graphics/openexr \
			graphics/openjp2 \
			graphics/png \
			graphics/tiff \
			multimedia/libheif \
			textproc/pugixml

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="man/man1" \
			-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
			-DCMAKE_LIBRARY_PATH="${WRKBUILD}/lib:${CMAKE_LIBRARY_PATH}" \
			-DSTOP_ON_WARNING=OFF \
			-DUSE_CCACHE=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_DCMTK=TRUE \
			-DUSE_EXTERNAL_PUGIXML=ON \
			-DUSE_OPENCV=OFF \
			-DUSE_OPENVDB=OFF \
			-DUSE_HDF5=OFF \
			-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11/

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH:Mhppa}
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -latomic"
WANTLIB +=		atomic
.endif

.include <bsd.port.mk>
