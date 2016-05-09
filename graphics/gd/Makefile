# $OpenBSD: Makefile,v 1.66 2016/05/09 06:29:18 ajacoutot Exp $

COMMENT=	library for dynamic creation of images

V=		2.1.1
REVISION=	1
DISTNAME=	libgd-$V
PKGNAME=	gd-$V

SHARED_LIBS +=	gd                   21.1     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat fontconfig freetype jpeg m png pthread
WANTLIB += pthread-stubs stdc++ tiff vpx z

MASTER_SITES=	https://bitbucket.org/libgd/gd-libgd/downloads/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/tiff \
		multimedia/libvpx

MODULES=	converters/libiconv

.include <bsd.port.mk>
