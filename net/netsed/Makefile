# $OpenBSD: Makefile,v 1.5 2013/03/11 11:35:50 espie Exp $

COMMENT=		network sed

DISTNAME=		netsed
PKGNAME=		${DISTNAME}-0.01c
CATEGORIES=    		net
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://lcamtuf.coredump.cx/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=		http://lcamtuf.coredump.cx/soft/

USE_GMAKE=		Yes

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netsed ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netsed
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netsed

.include <bsd.port.mk>
