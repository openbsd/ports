# $OpenBSD: Makefile,v 1.16 2000/01/09 07:52:40 brad Exp $

DISTNAME=	nmap-2.3BETA12
PKGNAME=	nmap-2.3b12
CATEGORIES=     net security
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes

post-extract:
	@rm -rf ${WRKSRC}/libpcap*

post-install:
	@strip ${PREFIX}/bin/nmap

.include <bsd.port.mk>
