# $OpenBSD: Makefile,v 1.17 2016/01/20 15:33:56 sthen Exp $

COMMENT=	VPN scanner and identifier
V=		1.9
DISTNAME=	ike-scan-$V
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	https://github.com/royhills/ike-scan

# GPLv2+ w/openssl exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto

MASTER_SITES=	https://github.com/royhills/ike-scan/releases/download/$V/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-openssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
