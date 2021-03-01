# $OpenBSD: Makefile,v 1.4 2021/03/01 08:40:52 fcambus Exp $

COMMENT =	DB-IP IP to ASN Lite: IPv4/v6 address to ASN

DISTNAME =	dbip-asn-lite-${V}.mmdb
PKGNAME =	dbip-asn-lite-${V:S/-/./}

HOMEPAGE =	https://db-ip.com/db/download/ip-to-asn-lite

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-asn-lite.mmdb

.include <bsd.port.mk>
