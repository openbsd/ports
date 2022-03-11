COMMENT=	library for manipulating PNG images

VERSION=	1.6.37
DISTNAME=	libpng-${VERSION}
PKGNAME=	png-${VERSION}
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	png	18.0 \
		png16	18.0

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu
DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	cd ${PREFIX}/lib; \
	    ln -s libpng.so.${LIBpng16_VERSION} libpng16.so.${LIBpng_VERSION}

.include <bsd.port.mk>
