# $OpenBSD: Makefile,v 1.3 1998/09/29 22:20:22 ian Exp $
#

PKGNAME=	idiff-1.0
DISTNAME=	idiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	ian@openbsd.org

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.cat ${PREFIX}/man/cat1/idiff.0

.include <bsd.port.mk>
