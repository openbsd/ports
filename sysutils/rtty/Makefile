# $OpenBSD: Makefile,v 1.3 1999/02/23 04:45:55 marc Exp $
#

DISTNAME=       rtty-3.2
CATEGORIES=	sysutils

MAINTAINER=	ports@openbsd.org

MASTER_SITES=   ftp://ftp.vix.com/pub/vixie/

NO_WRKSUBDIR=   yes     

post-install:
	@${INSTALL_DATA} ${WRKDIR}/README ${PREFIX}/rtty

.include <bsd.port.mk>
