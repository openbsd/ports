# $OpenBSD: Makefile,v 1.5 1999/10/28 04:43:42 jasoni Exp $

DISTNAME=	base64
PKGNAME=	base64-1.0
CATEGORIES=	converters

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.fourmilab.ch/webtools/base64/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/base64 ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/base64.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
