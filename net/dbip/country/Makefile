# $OpenBSD: Makefile,v 1.3 2021/01/16 13:43:22 fcambus Exp $

COMMENT =	DB-IP IP to Country Lite: IPv4/v6 address to country

DISTNAME =	dbip-country-lite-${V}.mmdb
PKGNAME =	dbip-country-lite-${V:S/-/./}
REVISION =	0

HOMEPAGE =	https://db-ip.com/db/download/ip-to-country-lite

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-country-lite.mmdb

.include <bsd.port.mk>
