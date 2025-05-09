COMMENT-main =	library for MaxMind GeoIP2/GeoLite2 IP geolocation databases
COMMENT-db =	GeoIP2 GeoLite2 database: IPv4/v6 address to country
COMMENT-city =	GeoIP2 GeoLite2 database: IPv4/v6 address to city
COMMENT-asn =	GeoIP2 GeoLite2 database: IPv4/v6 address to AS number

V =		1.12.2
DISTNAME =	libmaxminddb-${V}
PKGNAME-main =	libmaxminddb-${V}
REVISION-main =	1

# Last version prior to license change
# https://blog.maxmind.com/2019/12/significant-changes-to-accessing-and-using-geolite2-databases/
# Up to date files available free of charge, but an account and EULA
# agreement are needed:
# https://dev.maxmind.com/geoip/geolite2-free-geolocation-data/
D =		20191224
PKGNAME-db =	geolite2-country-${D}
PKGNAME-city =	geolite2-city-${D}
PKGNAME-asn =	geolite2-asn-${D}
DISTFILES.d =	geolite2-data-$D.tar.xz
REVISION-db =	3
REVISION-city = 3
REVISION-asn =  3

SHARED_LIBS +=	maxminddb	0.0	# 0.7

CATEGORIES =	net geo

HOMEPAGE =	https://maxmind.github.io/libmaxminddb/

# libmaxminddb: Apache 2.0
# GeoLite2 DBs: CC BY-SA 4.0
PERMIT_PACKAGE =	Yes

WANTLIB-main +=	c m pthread

SITES =		https://github.com/maxmind/libmaxminddb/releases/download/${V}/
SITES.d =	https://spacehopper.org/mirrors/

MULTI_PACKAGES = -main -db -city -asn

COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

RUN_DEPENDS-main = net/libmaxminddb,-db

TEST_DEPENDS = devel/p5-IPC-Run3

USE_GMAKE =	Yes

CONFIGURE_STYLE = gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libmaxminddb
	${INSTALL_DATA} ${WRKDIR}/data/* ${PREFIX}/share/examples/libmaxminddb
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/libmaxminddb

.include <bsd.port.mk>
