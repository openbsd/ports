# $OpenBSD: Makefile,v 1.14 1999/12/14 01:11:28 angelos Exp $

DISTNAME=	nmap-2.3BETA10
PKGNAME=	nmap-2.3b10
CATEGORIES=     net
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes

post-extract:
	@rm -rf ${WRKSRC}/libpcap*

post-install:
	@strip ${PREFIX}/bin/nmap

.include <bsd.port.mk>
