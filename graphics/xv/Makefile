COMMENT=	X11 image display and modification tool

V=		5.2.0
DISTNAME=	xv-3.10a-js-$V
PKGNAME=	xv-$V

CATEGORIES=	graphics x11

# http://www.trilon.com/xv/index.html
HOMEPAGE=	https://github.com/jasper-software/xv
SITES=		${HOMEPAGE}/releases/download/v$V/

PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xt c jasper jpeg m png tiff webp z

MODULES=	devel/cmake
NO_TEST=	Yes

LIB_DEPENDS=	graphics/jpeg \
		graphics/jasper \
		graphics/libwebp \
		graphics/tiff \
		graphics/png

CFLAGS+=	-I${X11BASE}/include
CONFIGURE_ARGS=	-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples/xv

DEBUG_PACKAGES= ${BUILD_PACKAGES}

.include <bsd.port.mk>
