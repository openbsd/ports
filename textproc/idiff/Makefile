# $OpenBSD: Makefile,v 1.2 1998/09/29 20:47:53 ian Exp $
#

PKGNAME=	idiff-1.0
DISTNAME=	idiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.0 ${PREFIX}/man/cat1

.include <bsd.port.mk>
