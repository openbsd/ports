# $OpenBSD: Makefile,v 1.44 2016/06/03 10:59:00 sthen Exp $

COMMENT-main=	find the country where IP address/hostname originates from
COMMENT-db=	GeoIP GeoLite database: IPv4/v6 address to country
COMMENT-city=	GeoIP GeoLite database: IPv4/v6 address to city
COMMENT-asn=	GeoIP GeoLite database: IPv4/v6 address to AS number

V=		1.6.5
D=		20160603
REVISION-main=	4
DISTNAME=	GeoIP-$V
PKGNAME-main=	GeoIP-$V
PKGNAME-db=	geolite-country-$D
PKGNAME-city=	geolite-city-$D
PKGNAME-asn=	geolite-asn-$D
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		geolite-data-$D.tar.xz:0

SHARED_LIBS +=	GeoIP                9.0      # 7.3

CATEGORIES=	net geo

HOMEPAGE=	http://dev.maxmind.com/geoip/legacy/downloadable/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# geoip-api-c: LGPLv2.1+
# geolite DBs: CC BY-SA 4.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += c

MASTER_SITES=	https://github.com/maxmind/geoip-api-c/releases/download/v$V/
MASTER_SITES0=	https://spacehopper.org/mirrors/

MULTI_PACKAGES=	-main -db -city -asn
RUN_DEPENDS-main= net/GeoIP,-db

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--datadir=${LOCALSTATEDIR}/db

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/GeoIP/
	${INSTALL_DATA} ${WRKDIR}/data/* ${PREFIX}/share/examples/GeoIP/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/examples/GeoIP/

pre-test:
	ln -s ../data ${WRKSRC}/data

# maintainer convenience target
geolite:
	set -x; \
	t=`mktemp -d /tmp/geoip.XXXXXXXXXX`; \
	d=`date +%Y%m%d`; \
	f=geolite-data-$${d}.tar.xz; \
	cd $$t; \
	mkdir data; \
	cd data; \
	echo "This file contains an unmodified dated snapshot of GeoLite data from MaxMind," > readme.txt; \
	echo "see http://www.maxmind.com and http://dev.maxmind.com/geoip/legacy/geolite/." >> readme.txt; \
	echo "Distributed under Creative Commons Attribution-ShareAlike 4.0 Unported License." >> readme.txt; \
	echo "Created at `date -z UTC` and intended for OS packaging purposes." >> readme.txt; \
	ftp http://geolite.maxmind.com/download/geoip/database/{GeoIPv6,GeoLiteCity,GeoLiteCityv6-beta/GeoLiteCityv6,GeoLiteCountry/GeoIP}.dat.gz http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum{,v6}.dat.gz; \
	gunzip *gz; \
	cd ..; \
	tar cf - data | xz -T 0 > $$f; \
	scp $$f naiad:mirrors/

.include <bsd.port.mk>
