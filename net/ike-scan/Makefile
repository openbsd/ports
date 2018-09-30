# $OpenBSD: Makefile,v 1.18 2018/09/30 19:54:55 sthen Exp $

GH_ACCOUNT=	royhills
GH_PROJECT=	ike-scan
GH_COMMIT=	692163bd7e3de4bf5e802b1e30ade38134033c44

COMMENT=	VPN scanner and identifier
DISTNAME=	ike-scan-1.9.4pl20170804
CATEGORIES=	net

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
CONFIGURE_ARGS+=	--with-openssl

BUILD_DEPENDS +=        ${MODGNU_AUTOMAKE_DEPENDS} \
                        ${MODGNU_AUTOCONF_DEPENDS}

post-patch:
	cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf --install

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ike-scan
	${INSTALL_DATA} ${WRKSRC}/udp-backoff-fingerprinting-paper.txt \
		${WRKSRC}/README ${PREFIX}/share/doc/ike-scan

.include <bsd.port.mk>
