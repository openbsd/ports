# $OpenBSD: Makefile,v 1.4 2002/03/21 21:09:19 espie Exp $
# Date created:        	2000-08-11
# Whom:			Jonas Eriksson <je@sekure.net>

COMMENT=	"RFC 1878 subnet calculator / helper"

PKGNAME=	cidr-2.3
DISTNAME=	cidr-current
CATEGORIES=	net
NEED_VERSION=	1.515

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
