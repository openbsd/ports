# Makefile for:		nfsshell
# Version required:	1.0
# Date created:		10 Jun 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.4 2000/03/24 22:11:58 espie Exp $

PKGNAME=	nfsshell-1.0

DISTNAME=	nfsshell

CATEGORIES=	security
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}/nfs

MASTER_SITES=	ftp://ftp.cs.vu.nl/pub/leendert/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	"no obvious license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no obvious license"
PERMIT_DISTFILES_FTP=	Yes

NO_CONFIGURE=	yes

ALL_TARGET=	nfs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nfs ${PREFIX}/bin/nfsshell

.include <bsd.port.mk>
