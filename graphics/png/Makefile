# $OpenBSD: Makefile,v 1.97 2014/01/03 15:53:04 naddy Exp $

COMMENT=	library for manipulating PNG images

VERSION=	1.6.8
DISTNAME=	libpng-${VERSION}
PKGNAME=	png-${VERSION}
SHARED_LIBS=	png16	17.1 \
		png	17.1
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

post-install:
	cd ${PREFIX}/lib; \
	    ln -s libpng16.so.${LIBpng16_VERSION} libpng.so.${LIBpng_VERSION}; \
	    perl -pi -e 's/libpng16/libpng/g' libpng.la

.include <bsd.port.mk>
