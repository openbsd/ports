# $OpenBSD: Makefile,v 1.24 2000/07/29 23:12:51 brad Exp $

DISTNAME=	nmap-2.53
PKGNAME=	nmap-2.53
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
