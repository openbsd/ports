# $OpenBSD: Makefile,v 1.7 2004/11/28 11:50:35 alek Exp $

COMMENT=	"RFC 1878 subnet calculator / helper"

PKGNAME=	cidr-2.3
DISTNAME=	cidr-current
CATEGORIES=	net

MASTER_SITES=	${MASTER_SITES_BACKUP}

ALL_TARGET=	cidr
WRKDIST=	${WRKDIR}/${PKGNAME}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cidr ${PREFIX}/bin/cidr
	${INSTALL_MAN} ${WRKSRC}/cidr.1 ${PREFIX}/man/man1/cidr.1

.include <bsd.port.mk>
