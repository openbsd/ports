# $OpenBSD: Makefile,v 1.4 1999/09/20 13:26:08 form Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp $

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
CATEGORIES=	security net
MASTER_SITES=	ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.secnet.com/tools/nat10/

MAINTAINER=	ports@openbsd.org

WRKSRC=		${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
