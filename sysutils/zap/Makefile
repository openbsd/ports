# $OpenBSD: Makefile,v 1.1.1.1 1998/09/29 23:59:17 ian Exp $
#

PKGNAME=	zap-1.0
DISTNAME=	zap-1.0
CATEGORIES=	sysutils
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zap ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/zap.cat1 ${PREFIX}/man/cat1/zap.0

.include <bsd.port.mk>
