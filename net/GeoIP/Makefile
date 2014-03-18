# $OpenBSD: Makefile,v 1.29 2014/03/18 17:56:36 sthen Exp $

COMMENT=	find the country where IP address/hostname originates from

V=		1.6.0
DISTNAME=	GeoIP-$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} geolite-data-20140316.tar.bz2:0

SHARED_LIBS +=	GeoIP                9.0      # 7.0

CATEGORIES=	net geo

HOMEPAGE=	http://dev.maxmind.com/geoip/legacy/downloadable/
MASTER_SITES=	https://github.com/maxmind/geoip-api-c/releases/download/v$V/
MASTER_SITES0=	http://spacehopper.org/mirrors/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c z

SEPARATE_BUILD=	Yes
SUBST_VARS+=	LOCALSTATEDIR

CONFIGURE_STYLE= gnu
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
	t=`mktemp -d /tmp/geoip.XXXXXXXXXX`; \
	f=geolite-data-`date +%Y%m%d`.tar.bz2; \
	cd $$t; \
	mkdir data; \
	cd data; \
	echo "This file contains an unmodified dated snapshot of GeoLite data from MaxMind," > readme.txt; \
	echo "see http://www.maxmind.com and http://dev.maxmind.com/geoip/legacy/geolite/." >> readme.txt; \
	echo "Distributed under Creative Commons Attribution-ShareAlike 3.0 Unported License." >> readme.txt; \
	echo "Created at `date -z UTC` and intended for OS packaging purposes." >> readme.txt; \
	ftp http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz \
	http://geolite.maxmind.com/download/geoip/database/GeoIPv6.dat.gz \
	gunzip *gz; \
	cd ..; \
	tar cjf $$f data; \
	scp $$f naiad:mirrors/

.include <bsd.port.mk>
