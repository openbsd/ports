# $OpenBSD: Makefile,v 1.15 2009/08/31 18:01:01 rui Exp $

COMMENT=	caching DNS forwarder and DHCP server

DISTNAME=	dnsmasq-2.49
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

MAINTAINER=	Rui Reis <rui@openbsd.org>

HOMEPAGE=	http://www.thekelleys.org.uk/dnsmasq/doc.html

# GPLv2/GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	http://www.thekelleys.org.uk/dnsmasq/

MAKE_ENV=	CC="${CC}"

NO_REGRESS=	Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/man/dnsmasq.8 \
		${WRKSRC}/src/config.h \
		${WRKSRC}/dnsmasq.conf.example

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/dnsmasq ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dnsmasq
	${INSTALL_DATA} ${WRKSRC}/dnsmasq.conf.example ${PREFIX}/share/examples/dnsmasq
	${INSTALL_MAN} ${WRKSRC}/man/dnsmasq.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
