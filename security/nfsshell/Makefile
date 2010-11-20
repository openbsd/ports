# $OpenBSD: Makefile,v 1.16 2010/11/20 17:22:44 espie Exp $

COMMENT=	NFS auditing tool

PKGNAME=	nfsshell-1.0
REVISION =	0
DISTNAME=	nfsshell
CATEGORIES=	security

WRKDIST=	${WRKDIR}/nfs

MASTER_SITES=	ftp://ftp.cs.vu.nl/pub/leendert/

PERMIT_PACKAGE_CDROM=	no obvious license
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	no obvious license
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c readline termcap

ALL_TARGET=	nfs

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nfs ${PREFIX}/bin/nfsshell

.include <bsd.port.mk>
