# $OpenBSD: Makefile,v 1.15 2012/10/15 15:18:32 sthen Exp $

COMMENT=		tcp proxy with load balancing and failover mechanisms

DISTNAME=		balance-3.35
REVISION=		1
CATEGORIES=    		net

HOMEPAGE=		http://www.inlab.de/balance.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		http://www.inlab.de/

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"
ALL_TARGET=		balance

USE_GROFF =		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/balance ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/balance.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/balance
	${INSTALL_DATA} ${WRKSRC}/balance.pdf ${PREFIX}/share/doc/balance

.include <bsd.port.mk>
