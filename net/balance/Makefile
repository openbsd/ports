# $OpenBSD: Makefile,v 1.2 2001/07/21 19:11:33 jsyn Exp $

COMMENT=		"tcp proxy with load balancing and failover mechanisms"

VERSION=		2.28
DISTNAME=		balance-${VERSION}
CATEGORIES=    		net
NEED_VERSION=		1.425

HOMEPAGE=		http://balance.sourceforge.net/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	balance

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET=		balance

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/balance ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/balance.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
