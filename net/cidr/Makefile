# $OpenBSD: Makefile,v 1.6 2004/06/16 17:21:09 david Exp $

COMMENT=	"RFC 1878 subnet calculator / helper"

PKGNAME=	cidr-2.3
DISTNAME=	cidr-current
CATEGORIES=	net

MASTER_SITES=	http://home.netcom.com/~naym/cidr/

HOMEPAGE=	http://home.netcom.com/~naym/cidr.html

ALL_TARGET=	cidr
WRKDIST=         ${WRKDIR}/${PKGNAME}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cidr ${PREFIX}/bin/cidr
	${INSTALL_MAN} ${WRKSRC}/cidr.1 ${PREFIX}/man/man1/cidr.1

.include <bsd.port.mk>
