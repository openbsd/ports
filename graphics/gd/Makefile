# $OpenBSD: Makefile,v 1.63 2015/11/14 12:41:53 sthen Exp $

COMMENT=	library for dynamic creation of images

V=		2.1.1
DISTNAME=	libgd-$V
PKGNAME=	gd-$V

SHARED_LIBS +=	gd                   21.0     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat fontconfig freetype jpeg m png pthread
WANTLIB += pthread-stubs stdc++ tiff vpx z

MASTER_SITES=	https://bitbucket.org/libgd/gd-libgd/downloads/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm
SEPARATE_BUILD=	Yes

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/tiff \
		multimedia/libvpx

MODULES=	converters/libiconv

.include <bsd.port.mk>
