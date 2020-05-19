# $OpenBSD: Makefile,v 1.1 2020/05/19 08:40:21 fcambus Exp $

COMMENT =	DB-IP IP to ASN Lite: IPv4/v6 address to ASN

DISTNAME =	dbip-asn-lite-${V}.mmdb
PKGNAME =	dbip-asn-lite-${V:S/-/./}

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-asn-lite.mmdb

.include <bsd.port.mk>
