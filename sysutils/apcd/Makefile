# $OpenBSD: Makefile,v 1.3 2010/04/08 20:57:06 mglocker Exp $

COMMENT=		APC SmartUPS daemon

DISTNAME=		apcd-0.2
PKGNAME=		${DISTNAME}
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
	${INSTALL_MAN} ${WRKSRC}/apcd/apcd.cat8 ${PREFIX}/man/cat8/apcd.0
	${INSTALL_MAN} ${WRKSRC}/apcmon/apcmon.cat8 ${PREFIX}/man/cat8/apcmon.0
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apcd
	${INSTALL_DATA} ${WRKSRC}/apcd/apcd.conf \
	    ${PREFIX}/share/examples/apcd

.include <bsd.port.mk>
