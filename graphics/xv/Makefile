# $OpenBSD: Makefile,v 1.61 2022/02/26 09:46:01 sthen Exp $

COMMENT=	X11 image display and modification tool

GH_ACCOUNT=	jasper-software
GH_PROJECT=	xv
GH_TAGNAME=	v4.0.0-alpha3
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

DEBUG_PACKAGES= ${BUILD_PACKAGES}

.include <bsd.port.mk>
