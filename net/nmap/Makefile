# $OpenBSD: Makefile,v 1.17 2000/01/30 06:23:42 brad Exp $

DISTNAME=	nmap-2.3BETA14
PKGNAME=	nmap-2.3b14
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
