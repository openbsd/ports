# $OpenBSD: Makefile,v 1.35 2015/06/29 20:03:22 sthen Exp $

COMMENT=	find the country where IP address/hostname originates from

V=		1.6.5
REVISION=	0
DISTNAME=	GeoIP-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		geolite-data-20150629.tar.bz2:0

SHARED_LIBS +=	GeoIP                9.0      # 7.3

CATEGORIES=	net geo

HOMEPAGE=	http://dev.maxmind.com/geoip/legacy/downloadable/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	https://github.com/maxmind/geoip-api-c/releases/download/v$V/
MASTER_SITES0=	http://spacehopper.org/mirrors/

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--datadir=${LOCALSTATEDIR}/db \
		${CONFIGURE_SHARED}

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
	f=geolite-data-$${d}.tar.bz2; \
	cd $$t; \
	mkdir data; \
	cd data; \
	echo "This file contains an unmodified dated snapshot of GeoLite data from MaxMind," > readme.txt; \
	echo "see http://www.maxmind.com and http://dev.maxmind.com/geoip/legacy/geolite/." >> readme.txt; \
	echo "Distributed under Creative Commons Attribution-ShareAlike 3.0 Unported License." >> readme.txt; \
	echo "Created at `date -z UTC` and intended for OS packaging purposes." >> readme.txt; \
	ftp http://geolite.maxmind.com/download/geoip/database/{GeoIPv6.dat.gz,GeoLiteCountry/GeoIP.dat.gz}; \
	gunzip *gz; \
	cd ..; \
	tar cjf $$f data; \
	scp $$f naiad:mirrors/

.include <bsd.port.mk>
