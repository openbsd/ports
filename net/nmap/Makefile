# $OpenBSD: Makefile,v 1.22 2000/04/08 00:13:51 brad Exp $

DISTNAME=	nmap-2.30BETA18
PKGNAME=	nmap-2.3b18
CATEGORIES=	net security
NEED_VERSION=	1.234
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

HAS_CONFIGURE=	Yes
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}'

post-extract:
	@rm -rf ${WRKSRC}/libpcap*

.include <bsd.port.mk>
