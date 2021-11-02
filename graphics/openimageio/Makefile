# $OpenBSD: Makefile,v 1.58 2021/11/02 00:01:16 sthen Exp $

# XXX python module is linked with wrong libraries if an old version is
# installed during build

BROKEN-i386 =		clang segfault compiling imagebufalgo_pixelmath.cpp
BROKEN-powerpc =	clang segfault compiling imagebufalgo_pixelmath.cpp

COMMENT =		library for reading and writing images

GH_ACCOUNT =		OpenImageIO
GH_PROJECT =		oiio
GH_TAGNAME =		Release-$V
V =			2.2.18.0
DISTNAME =		openimageio-${V}
REVISION =		0

SHARED_LIBS +=		OpenImageIO		11.0 # 2.2.18
SHARED_LIBS +=		OpenImageIO_Util	7.0 # 2.2.18

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/home

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLU Iex-3_1 IlmThread-3_1 OpenEXR-3_1
WANTLIB += Imath-3_1 OpenColorIO Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
WANTLIB += avcodec avformat avutil boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_system-mt
WANTLIB += boost_thread-mt bz2 c freetype gif heif iconv jpeg m
WANTLIB += openjp2 png pugixml raw_r swscale tiff webp webpdemux z

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

post-install:
	find ${PREFIX} -name '*.orig' -delete

.include <bsd.port.mk>
