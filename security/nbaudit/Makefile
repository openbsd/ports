# $OpenBSD: Makefile,v 1.3 1999/04/09 04:11:55 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp $

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
CATEGORIES=	security net
MASTER_SITES=	ftp://ftp.secnet.com/pub/tools/nat10/

MAINTAINER=	ports@openbsd.org

WRKSRC=		${WRKDIR}/${DISTNAME}

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
