# $OpenBSD: Makefile,v 1.5 2020/12/04 12:40:06 ajacoutot Exp $

COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v2.72.2
CATEGORIES=	graphics

SHARED_LIBS=	placebo	2.1

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
