# XXX python module is linked with wrong libraries if an old version is
# installed during build

COMMENT =		library for reading and writing images

GH_ACCOUNT =		OpenImageIO
GH_PROJECT =		oiio
GH_TAGNAME =		Release-$V
V =			2.2.20.0
DISTNAME =		openimageio-${V}

SHARED_LIBS +=		OpenImageIO		11.1 # 2.2.20
SHARED_LIBS +=		OpenImageIO_Util	7.0 # 2.2.20

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/home

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU Iex-3_1 IlmThread-3_1 Imath-3_1 OpenColorIO
WANTLIB += OpenEXR-3_1 Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets avcodec
WANTLIB += avformat avutil boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_system-mt boost_thread-mt
WANTLIB += bz2 c freetype gif heif jpeg m openjp2 png pugixml
WANTLIB += raw_r swscale tiff webp webpdemux z

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/fmt \
			devel/py-pybind11${MODPY_FLAVOR} \
			devel/robin-map \
			textproc/txt2man

LIB_DEPENDS =		devel/boost \
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
			-DCMAKE_LIBRARY_PATH="${WRKBUILD}/lib:${CMAKE_LIBRARY_PATH}" \
			-DSTOP_ON_WARNING=OFF \
			-DUSE_CCACHE=OFF \
			-DDCMTK_FOUND=OFF \
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
