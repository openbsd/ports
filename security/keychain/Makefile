# $OpenBSD: Makefile,v 1.13 2009/04/05 02:07:40 martynas Exp $

COMMENT=		front-end to ssh-agent

DISTNAME=		keychain-2.6.1
CATEGORIES=		security

HOMEPAGE=		http://www.gentoo.org/proj/en/keychain.xml

MAINTAINER=		Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://mirrors.protection.cx/~martynas/python/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-install:
	${INSTALL_SCRIPT} ${WRKDIST}/keychain ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/keychain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
