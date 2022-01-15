# $OpenBSD: Makefile,v 1.60 2022/01/15 23:59:32 kmos Exp $

COMMENT=	lightweight caching DNS forwarder, DHCP and TFTP server

DISTNAME=	dnsmasq-2.86
CATEGORIES=	net
MASTER_SITES=	https://www.thekelleys.org.uk/dnsmasq/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	https://www.thekelleys.org.uk/dnsmasq/doc.html

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c

MAKE_ENV=	CC="${CC}"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall -W"
FAKE_FLAGS=	MANDIR="${PREFIX}/man"

NO_TEST=	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/man/dnsmasq.8 ${WRKSRC}/src/config.h \
	    ${WRKSRC}/dnsmasq.conf.example

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dnsmasq
	${INSTALL_DATA} ${WRKSRC}/dnsmasq.conf.example ${PREFIX}/share/examples/dnsmasq

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
