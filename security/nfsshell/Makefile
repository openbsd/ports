# Makefile for:		nfsshell
# Version required:	1.0
# Date created:		10 Jun 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.8 2000/10/22 14:03:46 espie Exp $

PKGNAME=	nfsshell-1.0

DISTNAME=	nfsshell

CATEGORIES=	security
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/nfs

MASTER_SITES=	ftp://ftp.cs.vu.nl/pub/leendert/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=	nfs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nfs ${PREFIX}/bin/nfsshell

.include <bsd.port.mk>
