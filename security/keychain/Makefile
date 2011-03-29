# $OpenBSD: Makefile,v 1.20 2011/03/29 17:05:54 jasper Exp $

COMMENT=		front-end to ssh-agent

DISTNAME=		keychain-2.7.1
CATEGORIES=		security

HOMEPAGE=		http://docs.funtoo.org/wiki/Keychain

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.funtoo.org/archive/keychain/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*
USE_GROFF =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/keychain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
