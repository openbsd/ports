# $OpenBSD: Makefile,v 1.2 1998/10/08 03:08:19 marc Exp $
#

DISTNAME=	base64
PKGNAME=	base64-1.0
CATEGORIES=	converters

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.fourmilab.ch/webtools/base64/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/base64 ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/base64.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
