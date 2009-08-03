# $OpenBSD: Makefile,v 1.1.1.1 2009/08/03 18:30:58 mglocker Exp $

COMMENT=		APC SmartUPS daemon

DISTNAME=		apcd-0.1
CATEGORIES=		sysutils
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/apcd/apcd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/apcmon/apcmon ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/apcd/apcd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/apcmon/apcmon.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apcd
	${INSTALL_DATA} ${WRKSRC}/apcd/apcd.conf \
	    ${PREFIX}/share/examples/apcd

.include <bsd.port.mk>
