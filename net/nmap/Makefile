# $OpenBSD: Makefile,v 1.9 1999/09/01 18:19:03 brad Exp $

DISTNAME=	nmap-2.3BETA4
PKGNAME=	nmap-2.3b4
CATEGORIES=     net
MASTER_SITES=	http://www.insecure.org/nmap/dist/ \
		ftp://relay.nuxi.com/pub/misc/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes

post-extract:
	@${RM} -rf ${WRKSRC}/libpcap*

post-install:
	@strip ${PREFIX}/bin/nmap

.include <bsd.port.mk>
