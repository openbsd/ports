# $OpenBSD: Makefile,v 1.87 2012/09/26 15:04:09 sthen Exp $

COMMENT=	library for manipulating PNG images

VERSION=	1.5.10
DISTNAME=	libpng-${VERSION}
PKGNAME=	png-${VERSION}
SHARED_LIBS=	png	15.0
CATEGORIES=	graphics
DPB_PROPERTIES=	parallel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
