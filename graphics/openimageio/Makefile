# $OpenBSD: Makefile,v 1.5 2013/03/11 11:10:54 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		library for reading and writing images
BROKEN-hppa =		missing atomic ops
BROKEN-mips64 =		missing atomic ops

MAJ =			1.0
V =			${MAJ}.4
REV =			513d0dd
DISTNAME =		OpenImageIO-oiio-Release-${V}-0-g${REV}
PKGNAME =		openimageio-${V}
REVISION =		0

SHARED_LIBS +=		OpenImageIO	0.0 # 1.0

CATEGORIES =		graphics devel

HOMEPAGE =		http://sites.google.com/site/openimageio/

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU Half ICE Iex IlmImf IlmThread Imath QtGui
WANTLIB += QtOpenGL SM X11 Xext boost_filesystem-mt boost_python-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt c jpeg
WANTLIB += m openjpeg png pthread ${MODPY_WANTLIB} stdc++ tiff webp z

MASTER_SITES =		https://github.com/OpenImageIO/oiio/tarball/RB-${MAJ}/

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
WRKDIST =		${WRKDIR}/OpenImageIO-oiio-${REV}
WRKSRC =		${WRKDIST}/src

.include <bsd.port.mk>
