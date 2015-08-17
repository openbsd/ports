# $OpenBSD: Makefile,v 1.62 2015/08/17 19:52:39 sthen Exp $

COMMENT=	library for dynamic creation of images

V=		2.1.0
DISTNAME=	libgd-$V
PKGNAME=	gd-$V
REVISION=	2

SHARED_LIBS=	gd	21.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat fontconfig freetype jpeg m png pthread
WANTLIB += pthread-stubs stdc++ tiff vpx z

MASTER_SITES=	https://bitbucket.org/libgd/gd-libgd/downloads/

CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/tiff \
		multimedia/libvpx

MODULES=	converters/libiconv

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
