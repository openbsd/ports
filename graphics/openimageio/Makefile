# $OpenBSD: Makefile,v 1.8 2014/03/25 10:37:39 pascal Exp $

SHARED_ONLY =		Yes

COMMENT =		library for reading and writing images

V =			1.3.12
DISTNAME =		Release-$V
PKGNAME =		openimageio-${V}

SHARED_LIBS +=		OpenImageIO	2.0 # 1.0

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath OpenColorIO
WANTLIB += QtGui QtOpenGL SM X11 Xext boost_filesystem-mt boost_python-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c crypto
WANTLIB += freetype gif jpeg m openjpeg png pthread python2.7
WANTLIB += ssl stdc++ tiff webp z

MASTER_SITES =		https://github.com/OpenImageIO/oiio/archive/
DIST_SUBDIR =		openimageio

MODULES =		devel/cmake \
			lang/python \
			x11/qt4
LIB_DEPENDS =		devel/boost \
			graphics/openjpeg \
			graphics/tiff \
			graphics/libwebp \
			graphics/glew \
			graphics/ilmbase \
			graphics/openexr \
			graphics/giflib \
			graphics/opencolorio

CONFIGURE_ARGS +=	-DPYLIB_INSTALL_DIR="lib/python${MODPY_VERSION}/site-packages" \
			-DNOTHREADS=ON

CFLAGS +=		-pthread
WRKDIST =		${WRKDIR}/oiio-Release-$V

post-install:
	find ${PREFIX} -name '*.orig' -exec rm -f {} \;

.include <bsd.port.mk>
