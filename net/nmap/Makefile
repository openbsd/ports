# $OpenBSD: Makefile,v 1.12 1999/09/20 21:26:00 brad Exp $

DISTNAME=	nmap-2.3BETA6
PKGNAME=	nmap-2.3b6
CATEGORIES=     net
MASTER_SITES=	http://www.insecure.org/nmap/dist/ \
		ftp://relay.nuxi.com/pub/misc/
EXTRACT_SUFX=	.tgz

NEED_VERSION=	1.114

MAINTAINER=	angelos@openbsd.org

GNU_CONFIGURE=	yes

post-extract:
	@${RM} -rf ${WRKSRC}/libpcap*

post-install:
	@${STRIP} ${PREFIX}/bin/nmap

.include <bsd.port.mk>
