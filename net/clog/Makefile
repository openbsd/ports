# Ports collection makefile for:  clog
# Version required:     	  1.6
# Date created:			  17 Jul 1998
# Whom:				  Oleg Safiullin <form@OpenBSD.ORG>
#
# $OpenBSD: Makefile,v 1.2 1998/10/20 08:39:46 form Exp $
# FreeBSD: Makefile,v 1.1.1.1 1997/11/05 11:39:40 obrien Exp
#

DISTNAME=	clog-1.6
CATEGORIES=	net security
MASTER_SITES=	ftp://ftp.saturn.net/pub/users/brian/clog/  \
		ftp://ftp.cso.uiuc.edu/pub/security/coast/unix/clog/  \
		ftp://ftp.auscert.org.au/pub/coast/mirrors/ftp.saturn.net/clog/  \
		ftp://ftp.ox.ac.uk/pub/comp/security/COAST/mirrors/ftp.saturn.net/clog/  \
		ftp://ftp.rediris.es/mirror/coast/tools/unix/clog/

MAINTAINER=     form@OpenBSD.ORG

WRKSRC=		${WRKDIR}/clog
ALL_TARGET=	freebsd
MAN8=		clog.8

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/clog ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/clog.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
