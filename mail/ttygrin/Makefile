# $OpenBSD: Makefile,v 1.5 2003/08/22 18:57:49 naddy Exp $

COMMENT=	"tty-based mail and news client"

VERSION=	0.4.8
DISTNAME=	tty-grin-${VERSION}
PKGNAME=	ttygrin-${VERSION}
CATEGORIES=	mail

MASTER_SITES=	${MASTER_SITE_BACKUP}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes
MAKE_ENV=	CC="${CC}" CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttygrin ${PREFIX}/bin/ttygrin
	${INSTALL_DATA} ${WRKSRC}/ttygrin.1 ${PREFIX}/man/man1/ttygrin.1

.include <bsd.port.mk>
