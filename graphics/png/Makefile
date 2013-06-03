# $OpenBSD: Makefile,v 1.92 2013/06/03 02:46:25 naddy Exp $

COMMENT=	library for manipulating PNG images

VERSION=	1.5.15
REVISION=	1
DISTNAME=	libpng-${VERSION}
PKGNAME=	png-${VERSION}
SHARED_LIBS=	png15	16.0 \
		png	16.0
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	cd ${PREFIX}/lib; \
	    ln -s libpng15.so.${LIBpng15_VERSION} libpng.so.${LIBpng_VERSION}

.include <bsd.port.mk>
