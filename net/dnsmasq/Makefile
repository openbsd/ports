# $OpenBSD: Makefile,v 1.21 2011/10/25 10:20:26 sthen Exp $

COMMENT=	caching DNS forwarder and DHCP server

DISTNAME=	dnsmasq-2.59
CATEGORIES=	net
MASTER_SITES=	http://www.thekelleys.org.uk/dnsmasq/

HOMEPAGE=	http://www.thekelleys.org.uk/dnsmasq/doc.html

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MAKE_ENV=	CC="${CC}"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -Wall -W"

NO_REGRESS=	Yes

pre-build:
	@${SUBST_CMD} ${WRKSRC}/man/dnsmasq.8 \
		${WRKSRC}/src/config.h \
		${WRKSRC}/dnsmasq.conf.example

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/dnsmasq ${PREFIX}/sbin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dnsmasq
	${INSTALL_DATA} ${WRKSRC}/dnsmasq.conf.example ${PREFIX}/share/examples/dnsmasq
	${INSTALL_MAN} ${WRKSRC}/man/dnsmasq.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
