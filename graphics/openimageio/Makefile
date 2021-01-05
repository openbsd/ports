# $OpenBSD: Makefile,v 1.49 2021/01/05 20:53:18 jca Exp $

BROKEN-i386 =		clang segfault compiling imagebufalgo_pixelmath.cpp
BROKEN-powerpc =	clang segfault compiling imagebufalgo_pixelmath.cpp

COMMENT =		library for reading and writing images

GH_ACCOUNT =		OpenImageIO
GH_PROJECT =		oiio
GH_TAGNAME =		Release-$V
V =			2.2.10.0
ROBIN_VER =		0.6.2
DISTNAME =		openimageio-${V}

SHARED_LIBS +=		OpenImageIO		8.0 # 2.2.10
SHARED_LIBS +=		OpenImageIO_Util	4.0 # 2.2.10

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/home

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += GL GLU Half-2_5 Iex-2_5 IexMath-2_5 IlmImf-2_5
WANTLIB += IlmThread-2_5 Imath-2_5 OpenColorIO Qt5Core Qt5Gui
WANTLIB += Qt5OpenGL Qt5Widgets avcodec avformat avutil
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_system-mt boost_thread-mt
WANTLIB += bz2 c freetype gif intl jpeg m openjp2 png pugixml
WANTLIB += raw_r swscale tiff util webp webpdemux z

MASTER_SITES0 =		https://github.com/Tessil/robin-map/

DISTFILES =		${DISTNAME}.tar.gz \
			robin-map-{archive/v}${ROBIN_VER}.tar.gz:0

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/fmt \
			textproc/txt2man \
			devel/py-pybind11${MODPY_FLAVOR}

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
			textproc/pugixml

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="man/man1" \
			-DSTOP_ON_WARNING=OFF \
			-DUSE_CCACHE=OFF \
			-DUSE_DICOM=OFF \
			-DUSE_EXTERNAL_PUGIXML=ON \
			-DUSE_OPENCV=OFF \
			-DUSE_HDF5=OFF \
			-DUSE_LIBHEIF=OFF \
			-Dpybind11_DIR=${MODPY_SITEPKG}/pybind11/share/cmake/pybind11/

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH:Mhppa}
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -latomic"
WANTLIB +=		atomic
.endif

post-extract:
	mkdir ${WRKSRC}/ext
	cp -r ${WRKDIR}/robin-map-${ROBIN_VER} ${WRKSRC}/ext/robin-map

post-install:
	find ${PREFIX} -name '*.orig' -delete

.include <bsd.port.mk>
