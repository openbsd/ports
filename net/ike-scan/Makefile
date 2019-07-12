# $OpenBSD: Makefile,v 1.20 2019/07/12 20:48:28 sthen Exp $

GH_ACCOUNT=	royhills
GH_PROJECT=	ike-scan
GH_COMMIT=	692163bd7e3de4bf5e802b1e30ade38134033c44

COMMENT=	VPN scanner and identifier
DISTNAME=	ike-scan-1.9.4pl20170804
CATEGORIES=	net

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_ARGS+=	--with-openssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
