# $OpenBSD: Makefile,v 1.11 1999/09/07 14:26:15 brad Exp $

DISTNAME=	nmap-2.3BETA5
PKGNAME=	nmap-2.3b5
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
