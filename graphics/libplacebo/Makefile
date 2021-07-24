# $OpenBSD: Makefile,v 1.7 2021/07/24 20:16:47 sthen Exp $

COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v3.120.3
CATEGORIES=	graphics

SHARED_LIBS=	placebo	4.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	epoxy lcms2 m

MODULES=	devel/meson

LIB_DEPENDS=	graphics/lcms2

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Ddemos=false \
		-Dglslang=disabled \
		-Dshaderc=disabled \
		-Dvulkan=disabled

.include <bsd.port.mk>
