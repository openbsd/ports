# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:58 espie Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp $

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
CATEGORIES=	security net
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.secnet.com/tools/nat10/

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
