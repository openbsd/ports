# $OpenBSD: Makefile,v 1.49 2019/11/06 15:15:56 fcambus Exp $

COMMENT-main =	library for MaxMind GeoIP2/GeoLite2 IP geolocation databases
COMMENT-db =	GeoIP2 GeoLite2 database: IPv4/v6 address to country
COMMENT-city =	GeoIP2 GeoLite2 database: IPv4/v6 address to city
COMMENT-asn =	GeoIP2 GeoLite2 database: IPv4/v6 address to AS number

V =		1.4.2
D =		20191106
DISTNAME =	libmaxminddb-${V}
PKGNAME-main =	libmaxminddb-${V}
PKGNAME-db =	geolite2-country-${D}
PKGNAME-city =	geolite2-city-${D}
PKGNAME-asn =	geolite2-asn-${D}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		geolite2-data-$D.tar.xz:0

SHARED_LIBS +=	maxminddb	0.0	# 0.7

CATEGORIES =	net geo

HOMEPAGE =	https://github.com/maxmind/libmaxminddb

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# libmaxminddb: Apache 2.0
# GeoLite2 DBs: CC BY-SA 4.0
PERMIT_PACKAGE =	Yes

WANTLIB-main +=	c m pthread

MASTER_SITES =	${HOMEPAGE}/releases/download/${V}/
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

# maintainer convenience target
geolite2:
	set -x; \
	distfile=geolite2-data-`date +%Y%m%d`.tar.xz; \
	tmp=`mktemp -d`; \
	mkdir $$tmp/data; \
	cd $$tmp/data; \
	echo "This file contains an unmodified dated snapshot of GeoLite2 data from MaxMind," > README; \
	echo "see https://www.maxmind.com and https://dev.maxmind.com/geoip/geoip2/geolite2/." >> README; \
	echo "Distributed under Creative Commons Attribution-ShareAlike 4.0 International License." >> README; \
	echo "Created at `date -z UTC` and intended for OS packaging purposes." >> README; \
	ftp https://geolite.maxmind.com/download/geoip/database/GeoLite2-{Country,City,ASN}.tar.gz{,.md5}; \
	for file in GeoLite2-Country GeoLite2-City GeoLite2-ASN; do \
		if [ "`md5 -q $$file.tar.gz`" != "`cat $$file.tar.gz.md5`" ]; then \
			echo "ERROR: $$file.tar.gz is corrupt"; \
			exit; \
		fi; \
		tar xfz $$file.tar.gz; \
	done; \
	mv */*mmdb .; \
	cd ..; \
	tar cf - data/README data/*.mmdb | xz -T 0 > $$distfile; \
	echo "Distfile created in: $$tmp";

.include <bsd.port.mk>
