# $OpenBSD: Makefile,v 1.1.1.1 2016/06/26 21:38:36 awolk Exp $

COMMENT-main =	library for MaxMind GeoIP2/GeoLite2 IP geolocation databases
COMMENT-db =	GeoIP2 GeoLite2 database: IPv4/v6 address to country
COMMENT-city =	GeoIP2 GeoLite2 database: IPv4/v6 address to city

V =		1.2.0
D =		20160618
DISTNAME =	libmaxminddb-${V}
PKGNAME-main =	libmaxminddb-${V}
PKGNAME-db =	geolite2-country-${D}
PKGNAME-city =	geolite2-city-${D}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		geolite2-data-$D.tar.xz:0

SHARED_LIBS +=	maxminddb	0.0	# 0.7

CATEGORIES =	net geo

HOMEPAGE =	https://github.com/maxmind/libmaxminddb

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# libmaxminddb: Apache 2.0
# GeoLite2 DBs: CC BY-SA 4.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main +=	c m

MASTER_SITES =	${HOMEPAGE}/releases/download/${V}/
MASTER_SITES0 =	http://mirrors.statdns.com/

MULTI_PACKAGES = -main -db -city
RUN_DEPENDS-main = net/libmaxminddb,-db

TEST_DEPENDS = devel/p5-IPC-Run3

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libmaxminddb
	${INSTALL_DATA} ${WRKDIR}/data/* ${PREFIX}/share/examples/libmaxminddb
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/libmaxminddb

.include <bsd.port.mk>
