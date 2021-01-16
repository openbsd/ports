# $OpenBSD: Makefile,v 1.3 2021/01/16 13:43:21 fcambus Exp $

COMMENT =	DB-IP IP to ASN Lite: IPv4/v6 address to ASN

DISTNAME =	dbip-asn-lite-${V}.mmdb
PKGNAME =	dbip-asn-lite-${V:S/-/./}
REVISION =	0

HOMEPAGE =	https://db-ip.com/db/download/ip-to-asn-lite

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-asn-lite.mmdb

.include <bsd.port.mk>
