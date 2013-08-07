# $OpenBSD: Makefile,v 1.7 2013/08/07 21:31:58 naddy Exp $

SHARED_ONLY =		Yes

COMMENT =		library for reading and writing images
BROKEN-hppa =		missing atomic ops
BROKEN-mips64 =		missing atomic ops

V =			1.1.10
DISTNAME =		Release-${V}
PKGNAME =		openimageio-${V}
REVISION =		0

SHARED_LIBS +=		OpenImageIO	1.0 # 1.0

CATEGORIES =		graphics devel

HOMEPAGE =		https://sites.google.com/site/openimageio/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath QtGui
WANTLIB += QtOpenGL SM X11 Xext boost_filesystem-mt boost_python-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c jpeg
WANTLIB += m openjpeg png pthread ${MODPY_WANTLIB} stdc++ tiff webp z
WANTLIB += freetype

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
			graphics/openexr

CONFIGURE_ARGS +=	-DPYLIB_INSTALL_DIR="lib/python${MODPY_VERSION}/site-packages"

CFLAGS +=		-pthread
WRKDIST =		${WRKDIR}/oiio-Release-$V
WRKSRC =		${WRKDIST}/src

post-install:
	find ${PREFIX} -name '*.orig' -exec rm -f {} \;

.include <bsd.port.mk>
