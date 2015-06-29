# $OpenBSD: Makefile,v 1.24 2015/06/29 16:43:10 jca Exp $

COMMENT=		front-end to ssh-agent

DISTNAME=		keychain-2.7.1
CATEGORIES=		security

REVISION=		1

HOMEPAGE=		http://www.funtoo.org/Keychain

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.funtoo.org/archive/keychain/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/keychain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
