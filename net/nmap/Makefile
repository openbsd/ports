# $OpenBSD: Makefile,v 1.18 2000/02/12 08:02:26 turan Exp $

DISTNAME=	nmap-2.3BETA14
PKGNAME=	nmap-2.3b14
CATEGORIES=     net security
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

GNU_CONFIGURE=	yes

post-extract:
	@rm -rf ${WRKSRC}/libpcap*

post-install:
	@strip ${PREFIX}/bin/nmap

.include <bsd.port.mk>
