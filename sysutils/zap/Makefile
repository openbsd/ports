# $OpenBSD: Makefile,v 1.3 2000/02/11 00:37:38 espie Exp $
#

PKGNAME=	zap-1.1
DISTNAME=	zap-1.1
WRKDIST=	${WRKDIR}/zap
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darwinsys.com/freeware/
NEED_VERSION=	1.191

MAINTAINER=	ian@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
