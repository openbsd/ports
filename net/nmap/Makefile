# $OpenBSD: Makefile,v 1.15 2000/01/03 15:13:43 angelos Exp $

DISTNAME=	nmap-2.3BETA12
PKGNAME=	nmap-2.3b12
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
