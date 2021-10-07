# $OpenBSD: Makefile,v 1.8 2021/10/07 21:44:28 sthen Exp $

COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v4.157.0
CATEGORIES=	graphics

SHARED_LIBS=	placebo	5.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	epoxy lcms2 m pthread

MODULES=	devel/meson

LIB_DEPENDS=	graphics/lcms2

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Dd3d11=disabled \
		-Ddemos=false \
		-Dglslang=disabled \
		-Dshaderc=disabled \
		-Dvulkan=disabled

.include <bsd.port.mk>
