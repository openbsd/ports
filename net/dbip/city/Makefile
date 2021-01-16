# $OpenBSD: Makefile,v 1.3 2021/01/16 13:43:22 fcambus Exp $

COMMENT =	DB-IP IP to City Lite: IPv4/v6 address to city

DISTNAME =	dbip-city-lite-${V}.mmdb
PKGNAME =	dbip-city-lite-${V:S/-/./}
REVISION =	0

HOMEPAGE =	https://db-ip.com/db/download/ip-to-city-lite

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-city-lite.mmdb

.include <bsd.port.mk>
