# $OpenBSD: Makefile,v 1.1.1.1 2000/08/23 17:23:35 jakob Exp $
# Date created:        	2000-08-11
# Whom:			Jonas Eriksson <je@sekure.net>

PKGNAME=	cidr-2.3
DISTNAME=	cidr-current
CATEGORIES=	net

MASTER_SITES=	http://home.netcom.com/~naym/cidr/

HOMEPAGE=	http://home.netcom.com/~naym/cidr.html

MAINTAINER=	je@sekure.net

ALL_TARGET=	cidr
WRKSRC=         ${WRKDIR}/${PKGNAME}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cidr ${PREFIX}/bin/cidr
	${INSTALL_MAN} ${WRKSRC}/cidr.1 ${PREFIX}/man/man1/cidr.1

.include <bsd.port.mk>
