# $OpenBSD: Makefile,v 1.5 2002/05/20 19:30:39 jsyn Exp $

COMMENT=		"tcp proxy with load balancing and failover mechanisms"

VERSION=		2.33
DISTNAME=		balance-${VERSION}
CATEGORIES=    		net
NEED_VERSION=		1.498

HOMEPAGE=		http://balance.sourceforge.net/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=balance/}

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET=		balance

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/balance ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/balance.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
