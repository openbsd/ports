GH_ACCOUNT=	royhills
GH_PROJECT=	ike-scan
GH_TAGNAME=	1.9.5

COMMENT=	VPN scanner and identifier

CATEGORIES=	net

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto

CONFIGURE_STYLE=	autoreconf
AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
CONFIGURE_ARGS+=	--with-openssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
