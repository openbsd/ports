# $OpenBSD: Makefile,v 1.21 2016/08/08 14:14:01 pascal Exp $

COMMENT =		library for reading and writing images

GH_ACCOUNT = 		OpenImageIO
GH_PROJECT = 		oiio
V =			1.6.16
GH_TAGNAME =		Release-$V
DISTNAME =		openimageio-${V}

SHARED_LIBS +=		OpenImageIO		4.0 # 1.0
SHARED_LIBS +=  	OpenImageIO_Util	1.0 # 1.5

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Half Iex IlmImf IlmThread Imath OpenColorIO
WANTLIB += QtGui QtOpenGL avcodec avformat avutil boost_filesystem-mt
WANTLIB += boost_python-mt boost_regex-mt boost_system-mt boost_thread-mt
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += c freetype gif jpeg m openjpeg png pthread ${MODPY_WANTLIB}
WANTLIB += raw_r stdc++ swscale tiff webp z

MODULES =		devel/cmake \
			lang/python \
			x11/qt4 \
			gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

BUILD_DEPENDS =		textproc/txt2man

LIB_DEPENDS =		devel/boost \
			graphics/openjpeg \
			graphics/tiff \
			graphics/libwebp \
			graphics/glew \
			graphics/ilmbase \
			graphics/openexr \
			graphics/giflib \
			graphics/opencolorio \
			graphics/ffmpeg \
			graphics/libraw

CONFIGURE_ARGS +=	-DPYLIB_INSTALL_DIR="lib/python${MODPY_VERSION}/site-packages" \
			-DUSE_OPENCV=OFF

CXXFLAGS +=		-pthread
WRKDIST =		${WRKDIR}/oiio-Release-$V

pre-configure:
	sed -i 's,share/man,man,' ${WRKSRC}/CMakeLists.txt

post-install:
	find ${PREFIX} -name '*.orig' -exec rm -f {} \;

.include <bsd.port.mk>
