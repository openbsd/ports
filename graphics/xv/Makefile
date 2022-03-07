COMMENT=	X11 image display and modification tool

GH_ACCOUNT=	jasper-software
GH_PROJECT=	xv
GH_TAGNAME=	v4.0.0-alpha7
PKGNAME=	${DISTNAME:S/-alpha/alpha/}

CATEGORIES=	graphics x11

HOMEPAGE=	http://www.trilon.com/xv/index.html

PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xt c jasper jpeg m png tiff z

MODULES=	devel/cmake
NO_TEST=	Yes

LIB_DEPENDS=	graphics/jpeg \
		graphics/jasper \
		graphics/tiff \
		graphics/png

CFLAGS+=	-I${X11BASE}/include
CONFIGURE_ARGS=	-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples/xv

DEBUG_PACKAGES= ${BUILD_PACKAGES}

.include <bsd.port.mk>
