# $OpenBSD: Makefile,v 1.1.1.1 2001/06/25 23:05:44 lebel Exp $

COMMENT=		"tcp proxy with load balancing and failover mechanisms"

VERSION=		2.24-1
DISTNAME=		balance-${VERSION}
PKGNAME=		balance-${VERSION:S/-/./g}
CATEGORIES=    		net
NEED_VERSION=		1.414

HOMEPAGE=		http://balance.sourceforge.net/

MAINTAINER=		Jason Peel <jsyn@nthought.com>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	balance

ALL_TARGET=		balance

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/balance ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/balance.1 ${PREFIX}/man/man1

post-install:
	@${STRIP} ${PREFIX}/bin/balance

.include <bsd.port.mk>
