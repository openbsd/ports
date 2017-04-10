# $OpenBSD: Makefile,v 1.70 2017/04/10 11:46:20 sthen Exp $

COMMENT=	library for dynamic creation of images

V=		2.1.1
REVISION=	3
DISTNAME=	libgd-$V
PKGNAME=	gd-$V

SHARED_LIBS +=	gd                   21.1     # 3.0

CATEGORIES=	graphics

HOMEPAGE=	http://www.libgd.org/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c expat fontconfig freetype iconv jpeg m png pthread
WANTLIB += pthread-stubs ${LIBCXX} tiff vpx z

MASTER_SITES=	https://bitbucket.org/libgd/gd-libgd/downloads/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --without-xpm

LIB_DEPENDS=	converters/libiconv \
		graphics/jpeg \
		graphics/png \
		graphics/tiff \
		multimedia/libvpx

.include <bsd.port.mk>
