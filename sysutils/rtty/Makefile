# $OpenBSD: Makefile,v 1.4 2000/02/10 23:14:35 espie Exp $
#

DISTNAME=       rtty-3.2
CATEGORIES=	sysutils

MAINTAINER=	ports@openbsd.org

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/
NEED_VERSION=	1.191

WRKDIST=	${WRKDIR}

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
