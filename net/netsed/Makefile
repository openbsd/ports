# $OpenBSD: Makefile,v 1.1.1.1 2003/04/11 08:48:42 jsyn Exp $

COMMENT=		"network sed"

DISTNAME=		netsed
PKGNAME=		${DISTNAME}-0.01c
CATEGORIES=    		net
EXTRACT_SUFX=		.tgz

HOMEPAGE=		http://lcamtuf.coredump.cx/

MAINTAINER=		Jason Peel <jsyn@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://lcamtuf.coredump.cx/soft/

USE_GMAKE=		Yes

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netsed ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/netsed
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/netsed

.include <bsd.port.mk>
