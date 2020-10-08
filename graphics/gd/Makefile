# $OpenBSD: Makefile,v 1.80 2020/10/08 20:16:56 sthen Exp $

COMMENT=	library for dynamic creation of images

V=		2.3.0
DISTNAME=	libgd-$V
PKGNAME=	gd-$V
REVISION=	0

SHARED_LIBS +=	gd                   22.1     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	https://libgd.github.io/

PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c fontconfig freetype iconv jpeg m png pthread
WANTLIB += tiff webp z

COMPILER =	base-clang ports-gcc base-gcc
DEBUG_PACKAGES = ${BUILD_PACKAGES}

MASTER_SITES=	https://github.com/libgd/libgd/releases/download/${PKGNAME}/

MODULES=	devel/cmake

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

CONFIGURE_ARGS+=-DBUILD_STATIC_LIBS=ON \
		-DENABLE_FONTCONFIG=1 \
		-DENABLE_FREETYPE=1 \
		-DENABLE_GD_FORMATS=1 \
		-DENABLE_ICONV=1 \
		-DENABLE_JPEG=1 \
		-DENABLE_PNG=1 \
		-DENABLE_TIFF=1 \
		-DENABLE_WEBP=1

.include <bsd.port.mk>
