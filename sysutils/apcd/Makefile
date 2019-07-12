# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:39 sthen Exp $

COMMENT=		APC SmartUPS daemon

DISTNAME=		apcd-0.2
REVISION=		0
CATEGORIES=		sysutils
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/apcd/apcd ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/apcmon/apcmon ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/apcd/apcd.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/apcmon/apcmon.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apcd
	${INSTALL_DATA} ${WRKSRC}/apcd/apcd.conf \
	    ${PREFIX}/share/examples/apcd

.include <bsd.port.mk>
