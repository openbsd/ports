# $OpenBSD: Makefile,v 1.71 2017/05/15 19:54:22 rsadowski Exp $

COMMENT=	library for dynamic creation of images

V=		2.2.4
DISTNAME=	libgd-$V
PKGNAME=	gd-$V

SHARED_LIBS +=	gd                   22.0     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat fontconfig freetype iconv jpeg m png pthread
WANTLIB += pthread-stubs ${LIBCXX} tiff webp z

MASTER_SITES=	https://github.com/libgd/libgd/releases/download/${PKGNAME}/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/libwebp \
		graphics/png \
		graphics/tiff

.include <bsd.port.mk>
