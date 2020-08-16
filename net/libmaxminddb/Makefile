# $OpenBSD: Makefile,v 1.56 2020/08/16 14:48:53 fcambus Exp $

COMMENT-main =	library for MaxMind GeoIP2/GeoLite2 IP geolocation databases
COMMENT-db =	GeoIP2 GeoLite2 database: IPv4/v6 address to country
COMMENT-city =	GeoIP2 GeoLite2 database: IPv4/v6 address to city
COMMENT-asn =	GeoIP2 GeoLite2 database: IPv4/v6 address to AS number

V =		1.4.3
D =		20191224
DISTNAME =	libmaxminddb-${V}
PKGNAME-main =	libmaxminddb-${V}
PKGNAME-db =	geolite2-country-${D}
PKGNAME-city =	geolite2-city-${D}
PKGNAME-asn =	geolite2-asn-${D}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		geolite2-data-$D.tar.xz:0
REVISION-db =	0
REVISION-city = 0
REVISION-asn =  0

SHARED_LIBS +=	maxminddb	0.0	# 0.7

CATEGORIES =	net geo

HOMEPAGE =	http://maxmind.github.io/libmaxminddb/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# libmaxminddb: Apache 2.0
# GeoLite2 DBs: CC BY-SA 4.0
PERMIT_PACKAGE =	Yes

WANTLIB-main +=	c m pthread

MASTER_SITES =	https://github.com/maxmind/libmaxminddb/releases/download/${V}/
MASTER_SITES0 =	https://www.distfiles.pl/

MULTI_PACKAGES = -main -db -city -asn

COMPILER =	base-clang ports-gcc

RUN_DEPENDS-main = net/libmaxminddb,-db

TEST_DEPENDS = devel/p5-IPC-Run3

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libmaxminddb
	${INSTALL_DATA} ${WRKDIR}/data/* ${PREFIX}/share/examples/libmaxminddb
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/libmaxminddb

.include <bsd.port.mk>
