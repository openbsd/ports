# $OpenBSD: Makefile,v 1.21 2013/03/11 11:41:25 espie Exp $

COMMENT=		front-end to ssh-agent

DISTNAME=		keychain-2.7.1
CATEGORIES=		security

HOMEPAGE=		http://docs.funtoo.org/wiki/Keychain

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.funtoo.org/archive/keychain/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
USE_GROFF =		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/keychain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
