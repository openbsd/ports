# $OpenBSD: Makefile,v 1.2 2002/05/03 13:38:43 lebel Exp $

COMMENT=	"tty-based mail and news client"

VERSION=	0.4.8
DISTNAME=	tty-grin-${VERSION}
PKGNAME=	ttygrin-${VERSION}
CATEGORIES=	mail
NEED_VERSION=	1.507

HOMEPAGE=	http://m-net.arbornet.org/~dlbeer/tty-grin/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Vincent Derrien <vincent.derrien@free.fr>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_GMAKE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ttygrin ${PREFIX}/bin/ttygrin
	${INSTALL_DATA} ${WRKSRC}/ttygrin.1 ${PREFIX}/man/man1/ttygrin.1

.include <bsd.port.mk>
