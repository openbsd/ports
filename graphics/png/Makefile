# $OpenBSD: Makefile,v 1.57 2006/06/29 14:33:47 bernd Exp $

COMMENT=	"library for manipulating PNG images"

VERSION=	1.2.12
DISTNAME=	libpng-${VERSION}
PKGNAME=	${DISTNAME:S/lib//}
SHARED_LIBS=	png	5.1
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	scripts/makefile.openbsd
MAKE_FLAGS=	SHLIB_MAJOR=${LIBpng_VERSION:R} \
		SHLIB_MINOR=${LIBpng_VERSION:E} \
		PNGLIB_VERSION=${VERSION}

post-extract:
	@rm -f ${WRKSRC}/scripts/*.orig

.include <bsd.port.mk>
