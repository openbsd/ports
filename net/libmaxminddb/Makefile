# $OpenBSD: Makefile,v 1.4 2016/10/16 16:29:44 fcambus Exp $

COMMENT-main =	library for MaxMind GeoIP2/GeoLite2 IP geolocation databases
COMMENT-db =	GeoIP2 GeoLite2 database: IPv4/v6 address to country
COMMENT-city =	GeoIP2 GeoLite2 database: IPv4/v6 address to city

V =		1.2.0
D =		20161016
REVISION-main =	0
DISTNAME =	libmaxminddb-${V}
PKGNAME-main =	libmaxminddb-${V}
PKGNAME-db =	geolite2-country-${D}
PKGNAME-city =	geolite2-city-${D}
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		geolite2-data-$D.tar.xz:0

SHARED_LIBS +=	maxminddb	0.0	# 0.7

CATEGORIES =	net geo

HOMEPAGE =	https://github.com/maxmind/libmaxminddb

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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

# maintainer convenience target
geolite2:
	set -x; \
	distfile=geolite2-data-`date +%Y%m%d`.tar.xz; \
	tmp=`mktemp -d`; \
	mkdir $$tmp/data; \
	cd $$tmp/data; \
	echo "This file contains an unmodified dated snapshot of GeoLite2 data from MaxMind," > README; \
	echo "see http://www.maxmind.com and https://dev.maxmind.com/geoip/geoip2/geolite2/." >> README; \
	echo "Distributed under Creative Commons Attribution-ShareAlike 4.0 International License." >> README; \
	echo "Created at `date -z UTC` and intended for OS packaging purposes." >> README; \
	ftp http://geolite.maxmind.com/download/geoip/database/GeoLite2-{Country,City}.{md5,mmdb.gz}; \
	gunzip *gz; \
	for file in GeoLite2-Country GeoLite2-City; do \
		if [ "`md5 -q $$file.mmdb`" != "`cat $$file.md5`" ]; then \
			echo "ERROR: $$file.mmdb is corrupt"; \
			exit; \
		fi; \
	done; \
	cd ..; \
	tar cf - data/README data/*.mmdb | xz -T 0 > $$distfile; \
	echo "Distfile created in: $$tmp";

.include <bsd.port.mk>
