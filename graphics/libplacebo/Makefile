# $OpenBSD: Makefile,v 1.4 2020/10/04 18:34:17 sthen Exp $

COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v2.72.0
REVISION=	0
CATEGORIES=	graphics

SHARED_LIBS=	placebo	2.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	epoxy lcms2 m

MODULES=	devel/meson

LIB_DEPENDS=	graphics/lcms2

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_ARGS+=-Ddefault_library=both \
		-Dglslang=disabled \
		-Dshaderc=disabled \
		-Dvulkan=disabled

.include <bsd.port.mk>
