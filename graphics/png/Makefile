# $OpenBSD: Makefile,v 1.36 2002/02/06 16:40:38 brad Exp $

COMMENT=	"library for manipulating PNG images"

DISTNAME=	libpng-1.2.1
PKGNAME=	${DISTNAME:S/lib//}
CATEGORIES=	graphics
NEED_VERSION=	1.500
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= libpng

HOMEPAGE=	http://www.libpng.org/pub/png/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	DESTDIR="${WRKINST}" PREFIX="${PREFIX}"

MAKE_ENV=	CC="${CC}"
MAKE_FILE=	scripts/makefile.openbsd

REGRESS_TARGET=	test

post-extract:
	@cp -f ${FILESDIR}/makefile.openbsd ${WRKSRC}/scripts

.include <bsd.port.mk>
