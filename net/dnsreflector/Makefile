# $OpenBSD: Makefile,v 1.1.1.1 2003/05/12 08:21:23 margarida Exp $

COMMENT=		"DNS queries reflector"

DISTNAME=		dnsreflector-1.02
CATEGORIES=		net sysutils

HOMEPAGE=		http://www.wolfermann.org/dnsreflector.html

MASTER_SITES=		http://www.wolfermann.org/

MAINTAINER=		Margarida Sequeira <margarida@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dnsreflector ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/dnsreflector.1 ${PREFIX}/man/man1 

.include <bsd.port.mk>
