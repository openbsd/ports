# $OpenBSD: Makefile,v 1.46 2020/11/17 20:37:09 sthen Exp $

BROKEN-i386 =		clang segfault compiling imagebufalgo_pixelmath.cpp
BROKEN-powerpc =	clang segfault compiling imagebufalgo_pixelmath.cpp

COMMENT =		library for reading and writing images

GH_ACCOUNT =		OpenImageIO
GH_PROJECT =		oiio
GH_TAGNAME =		Release-$V
V =			1.8.6
DISTNAME =		openimageio-${V}
REVISION =		11

SHARED_LIBS +=		OpenImageIO		6.0 # 1.0
SHARED_LIBS +=		OpenImageIO_Util	2.0 # 1.5

CATEGORIES =		graphics devel

HOMEPAGE =		http://www.openimageio.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODPY_WANTLIB}
WANTLIB += boost_python${MODPY_MAJORMINOR}-mt
WANTLIB += GL GLEW GLU Half-2_5 Iex-2_5 IlmImf-2_5 IlmThread-2_5
WANTLIB += Imath-2_5 OpenColorIO Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
WANTLIB += avcodec avformat avutil boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_system-mt
WANTLIB += boost_thread-mt bz2 c freetype gif jpeg m openjpeg
WANTLIB += png pugixml raw_r swscale tiff webp z

MODULES =		devel/cmake \
			lang/python \
			x11/qt5

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		textproc/txt2man

LIB_DEPENDS =		devel/boost>=1.67.0 \
			graphics/ffmpeg \
			graphics/giflib \
			graphics/glew \
			graphics/libraw \
			graphics/libwebp \
			graphics/opencolorio \
			graphics/openexr \
			graphics/openjpeg \
			graphics/tiff \
			textproc/pugixml

CONFIGURE_ARGS +=	-DCMAKE_INSTALL_MANDIR="man/man1" \
			-DSTOP_ON_WARNING=OFF \
			-DUSE_DICOM=OFF \
			-DUSE_EXTERNAL_PUGIXML=ON \
			-DUSE_OPENCV=OFF

CXXFLAGS +=		-pthread

WRKDIST =		${WRKDIR}/oiio-Release-$V

# Fix undefined reference to __atomic_*
.if ${MACHINE_ARCH:Mhppa}
CONFIGURE_ENV +=	LDFLAGS="${LDFLAGS} -latomic"
WANTLIB +=              atomic
.endif

post-install:
	find ${PREFIX} -name '*.orig' -delete

.include <bsd.port.mk>
