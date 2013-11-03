# $OpenBSD: Makefile,v 1.34 2013/11/03 00:48:45 brad Exp $

COMMENT=	lightweight caching DNS forwarder, DHCP and TFTP server

DISTNAME=	dnsmasq-2.67
CATEGORIES=	net
MASTER_SITES=	http://www.thekelleys.org.uk/dnsmasq/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://www.thekelleys.org.uk/dnsmasq/doc.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MAKE_ENV=	CC="${CC}"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall -W"

NO_TEST=	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/man/dnsmasq.8 \
		${WRKSRC}/src/config.h \
		${WRKSRC}/dnsmasq.conf.example

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dnsmasq
	${INSTALL_PROGRAM} ${WRKSRC}/src/dnsmasq ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/dnsmasq.conf.example ${PREFIX}/share/examples/dnsmasq
	${INSTALL_MAN} ${WRKSRC}/man/dnsmasq.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
