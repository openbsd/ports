# $OpenBSD: Makefile,v 1.1.1.1 2020/03/05 14:19:21 fcambus Exp $

COMMENT =	DB-IP IP to Country Lite: IPv4/v6 address to country

DISTNAME =	dbip-country-lite-${V}.mmdb
PKGNAME =	dbip-country-lite-${V:S/-/./}

post-extract:
	mv ${WRKSRC}/${DISTNAME} ${WRKSRC}/dbip-country-lite.mmdb

.include <bsd.port.mk>
