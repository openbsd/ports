# $OpenBSD: Makefile,v 1.23 2000/05/29 21:39:27 angelos Exp $

DISTNAME=	nmap-2.53
PKGNAME=	nmap-2.53
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
CONFIGURE_ARGS=	--prefix='$${DESTDIR}${PREFIX}' \
		--no-recursion

post-extract:
	@rm -rf ${WRKSRC}/libpcap*

.include <bsd.port.mk>
