# $OpenBSD: Makefile,v 1.57 2022/02/15 17:26:29 sthen Exp $

COMMENT=	X11 image display and modification tool

GH_ACCOUNT=	jasper-software
GH_PROJECT=	xv
GH_COMMIT=	652de61ab332496251f6e80a50352e6ebbefe489
DISTNAME=	xv-3.10a.20220205

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

DEBUG_PACKAGES= ${BUILD_PACKAGES}

post-install:
	mv ${PREFIX}/man/man1/xvp2p.1 ${PREFIX}/man/man1/xvpictoppm.1

.include <bsd.port.mk>
