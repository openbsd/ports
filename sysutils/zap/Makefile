# $OpenBSD: Makefile,v 1.2 1999/05/31 14:35:54 ian Exp $
#

PKGNAME=	zap-1.1
DISTNAME=	zap-1.1
WRKSRC=		${WRKDIR}/zap
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
