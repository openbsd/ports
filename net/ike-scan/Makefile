# $OpenBSD: Makefile,v 1.15 2015/02/16 22:57:11 naddy Exp $

COMMENT=	VPN scanner and identifier
DISTNAME=	ike-scan-1.9
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://www.nta-monitor.com/ike-scan/

MAINTAINER=	Srebrenko Sehic <haver@insecure.dk>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-openssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
