# $OpenBSD: Makefile,v 1.7 1999/07/27 04:05:48 brad Exp $

DISTNAME=	nmap-2.12
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
