# $OpenBSD: Makefile,v 1.16 2007/09/15 22:36:52 merdely Exp $

COMMENT=	Prospero client for the archie service

DISTNAME=	c-archie-1.4.1-FIXED
PKGNAME=	archie-1.4.1
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.uu.net/networking/info-service/archie/clients/
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/archie-1.4.1-FIX

NO_REGRESS=	Yes

.include <bsd.port.mk>
