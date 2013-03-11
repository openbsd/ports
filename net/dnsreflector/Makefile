# $OpenBSD: Makefile,v 1.7 2013/03/11 11:35:46 espie Exp $

COMMENT=		DNS queries reflector

DISTNAME=		dnsreflector-1.02
CATEGORIES=		net sysutils

HOMEPAGE=		http://www.wolfermann.org/dnsreflector.html

MASTER_SITES=		http://www.wolfermann.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

USE_GROFF =		Yes
NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnsreflector ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/dnsreflector.1 ${PREFIX}/man/man1 

.include <bsd.port.mk>
