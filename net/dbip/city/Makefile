# $OpenBSD: Makefile,v 1.1.1.1 2020/03/05 14:19:21 fcambus Exp $

COMMENT =	DB-IP IP to City Lite: IPv4/v6 address to city

DISTNAME =	dbip-city-lite-${V}.mmdb
PKGNAME =	dbip-city-lite-${V:S/-/./}

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-city-lite.mmdb

.include <bsd.port.mk>
