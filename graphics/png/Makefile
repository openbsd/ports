# $OpenBSD: Makefile,v 1.54 2005/12/26 22:33:17 steven Exp $

COMMENT=	"library for manipulating PNG images"

DISTNAME=	libpng-1.2.8
PKGNAME=	${DISTNAME:S/lib//}
SHARED_LIBS=	png	4.2
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
		SHLIB_MINOR=${LIBpng_VERSION:E}

.include <bsd.port.mk>
