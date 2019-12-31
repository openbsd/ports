# $OpenBSD: Makefile,v 1.2 2019/12/31 11:32:30 ajacoutot Exp $

COMMENT=	reusable library for GPU-accelerated video/image rendering

GH_ACCOUNT=	haasn
GH_PROJECT=	libplacebo
GH_TAGNAME=	v1.29.1
CATEGORIES=	graphics

SHARED_LIBS=	placebo	1.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB=	lcms2 m

MODULES=	devel/meson

LIB_DEPENDS=	graphics/lcms2

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

CONFIGURE_ARGS+=-Dglslang=disabled \
		-Dshaderc=disabled \
		-Dvulkan=disabled

.include <bsd.port.mk>
