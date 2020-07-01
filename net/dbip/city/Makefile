# $OpenBSD: Makefile,v 1.2 2020/07/01 07:52:58 fcambus Exp $

COMMENT =	DB-IP IP to City Lite: IPv4/v6 address to city

DISTNAME =	dbip-city-lite-${V}.mmdb
PKGNAME =	dbip-city-lite-${V:S/-/./}

HOMEPAGE =	https://db-ip.com/db/download/ip-to-city-lite

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-city-lite.mmdb

.include <bsd.port.mk>
