# $OpenBSD: Makefile,v 1.20 2019/07/14 00:39:39 naddy Exp $

COMMENT=	NFS auditing tool

PKGNAME=	nfsshell-1.0
REVISION =	2
DISTNAME=	nfsshell
CATEGORIES=	security

WRKDIST=	${WRKDIR}/nfs

MASTER_SITES=	ftp://ftp.cs.vu.nl/pub/leendert/

PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

ALL_TARGET=	nfs

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nfs ${PREFIX}/bin/nfsshell

.include <bsd.port.mk>
