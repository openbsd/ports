# $OpenBSD: Makefile,v 1.2 2001/02/25 17:17:41 danh Exp $
# Date created:        	2000-08-11
# Whom:			Jonas Eriksson <je@sekure.net>

PKGNAME=	cidr-2.3
DISTNAME=	cidr-current
CATEGORIES=	net

MASTER_SITES=	http://home.netcom.com/~naym/cidr/

HOMEPAGE=	http://home.netcom.com/~naym/cidr.html

MAINTAINER=	Jonas Eriksson <je@sekure.net>

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
