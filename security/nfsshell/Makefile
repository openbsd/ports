# Makefile for:		nfsshell
# Version required:	1.0
# Date created:		10 Jun 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.2 2000/02/11 00:37:36 espie Exp $

PKGNAME=	nfsshell-1.0

DISTNAME=	nfsshell

CATEGORIES=	security

WRKDIST=	${WRKDIR}/nfs

MASTER_SITES=	ftp://ftp.cs.vu.nl/pub/leendert/
NEED_VERSION=	1.191

MAINTAINER=	dugsong@monkey.org

NO_CONFIGURE=	yes

ALL_TARGET=	nfs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nfs ${PREFIX}/bin/nfsshell

.include <bsd.port.mk>
