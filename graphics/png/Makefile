# $OpenBSD: Makefile,v 1.91 2013/04/15 02:38:43 brad Exp $

COMMENT=	library for manipulating PNG images

VERSION=	1.5.15
DISTNAME=	libpng-${VERSION}
PKGNAME=	png-${VERSION}
SHARED_LIBS=	png	15.1
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m z

SUBST_VARS=	VERSION

FAKE_FLAGS=	PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	scripts/makefile.openbsd
MAKE_FLAGS=	SHLIB_MAJOR=${LIBpng_VERSION:R} \
		SHLIB_MINOR=${LIBpng_VERSION:E} \
		PNGLIB_VERSION=${VERSION}

do-configure:
	cp ${WRKSRC}/scripts/pnglibconf.h.prebuilt ${WRKBUILD}/pnglibconf.h

.include <bsd.port.mk>
