# $OpenBSD: Makefile,v 1.79 2020/06/30 00:05:49 sthen Exp $

COMMENT=	library for dynamic creation of images

V=		2.3.0
DISTNAME=	libgd-$V
PKGNAME=	gd-$V

SHARED_LIBS +=	gd                   22.0     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	https://libgd.github.io/

PERMIT_PACKAGE=	Yes

WANTLIB += c expat fontconfig freetype iconv jpeg lzma m png pthread
WANTLIB += tiff webp z zstd

COMPILER =	base-clang ports-gcc base-gcc
DEBUG_PACKAGES = ${BUILD_PACKAGES}

MASTER_SITES=	https://github.com/libgd/libgd/releases/download/${PKGNAME}/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

.include <bsd.port.mk>
