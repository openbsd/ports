# $OpenBSD: Makefile,v 1.47 2004/08/05 19:17:14 brad Exp $

COMMENT=	"library for manipulating PNG images"

DISTNAME=	libpng-1.2.5
PKGNAME=	${DISTNAME:S/lib//}p5
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libpng/}

HOMEPAGE=	http://www.libpng.org/pub/png/libpng.html

MAINTAINER=	Brad Smith <brad@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	scripts/makefile.openbsd

.include <bsd.port.mk>
