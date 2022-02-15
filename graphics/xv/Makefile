# $OpenBSD: Makefile,v 1.59 2022/02/15 19:27:37 sthen Exp $

COMMENT=	X11 image display and modification tool

GH_ACCOUNT=	jasper-software
GH_PROJECT=	xv
GH_COMMIT=	d84be152ca495f65837758b0fd06118d84646db5
DISTNAME=	xv-3.10a.20220215

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

.include <bsd.port.mk>
