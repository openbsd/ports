# $OpenBSD: Makefile,v 1.25 2000/08/02 00:52:23 brad Exp $

DISTNAME=	nmap-2.54BETA2
PKGNAME=	nmap-2.54b2
CATEGORIES=	net security
NEED_VERSION=	1.310
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS=	--no-recursion

post-extract:
	@rm -rf ${WRKSRC}/libpcap*

.include <bsd.port.mk>
