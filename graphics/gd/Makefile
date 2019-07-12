# $OpenBSD: Makefile,v 1.78 2019/07/12 20:46:58 sthen Exp $

PORTROACH=	skipv:gd-2.2.5

COMMENT=	library for dynamic creation of images

V=		2.2.5
DISTNAME=	libgd-$V
PKGNAME=	gd-$V
REVISION=	1

SHARED_LIBS +=	gd                   22.0     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE=	Yes

WANTLIB += c expat fontconfig freetype iconv jpeg m png pthread
WANTLIB += ${COMPILER_LIBCXX} tiff webp z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/libgd/libgd/releases/download/${PKGNAME}/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

.include <bsd.port.mk>
