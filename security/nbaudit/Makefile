# ex:ts=8
# Ports collection makefile for:  nbaudit
# Version required:     	  1.0
# Date created:			  7 May 1998
# Whom:				  Oleg Safiullin <form@vs.itam.nsc.ru>
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/07 07:16:30 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1998/02/14 04:10:30 obrien Exp
#

DISTNAME=	nat10
PKGNAME=	nbaudit-1.0
CATEGORIES=	security net
MASTER_SITES=	ftp://ftp.secnet.com/pub/tools/nat10/

MAINTAINER=     form@vs.itam.nsc.ru

WRKSRC=		${WRKDIR}/${DISTNAME}
MAN1=		nbaudit.1

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/nat ${PREFIX}/bin/nbaudit
	@${INSTALL_MAN} ${WRKSRC}/nat.1 ${PREFIX}/man/man1/nbaudit.1

.include <bsd.port.mk>
