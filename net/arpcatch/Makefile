# $OpenBSD: Makefile,v 1.18 2013/03/11 11:35:45 espie Exp $

COMMENT=	userland arp-proxy daemon

DISTNAME=	arpcatch
PKGNAME=	${DISTNAME}-19970824
REVISION=	0
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://skoda.sockpuppet.org/tqbf/

PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c pcap

ALL_TARGET=
INSTALL_TARGET=	install

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/aproxyd ${PREFIX}/sbin/aproxyd 
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arpcatch
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/arpcatch

.include <bsd.port.mk>
