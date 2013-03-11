# $OpenBSD: Makefile,v 1.18 2013/03/11 11:35:45 espie Exp $

COMMENT=	Prospero client for the archie service

DISTNAME=	c-archie-1.4.1-FIXED
PKGNAME=	archie-1.4.1
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.uu.net/networking/info-service/archie/clients/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/archie-1.4.1-FIX

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
