# $OpenBSD: Makefile,v 1.4 1999/10/26 04:56:35 turan Exp $

BROKEN=		bad packing lists

DISTNAME=	base64
PKGNAME=	base64-1.0
CATEGORIES=	converters

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	http://www.fourmilab.ch/webtools/base64/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/base64 ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/base64.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
