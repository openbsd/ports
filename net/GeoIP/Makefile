# $OpenBSD: Makefile,v 1.58 2018/12/21 23:45:10 ajacoutot Exp $

COMMENT-main=	find the country where IP address/hostname originates from
COMMENT-db=	GeoIP GeoLite database: IPv4/v6 address to country
COMMENT-city=	GeoIP GeoLite database: IPv4/v6 address to city
COMMENT-asn=	GeoIP GeoLite database: IPv4/v6 address to AS number

V=		1.6.12
REVISION-main=	1
D=		20180401
DISTNAME=	GeoIP-$V
PKGNAME-main=	GeoIP-$V
PKGNAME-db=	geolite-country-$D
PKGNAME-city=	geolite-city-$D
PKGNAME-asn=	geolite-asn-$D
PORTROACH=	skipv:$V
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		geolite-data-$D.tar.xz:0

SHARED_LIBS +=	GeoIP                9.0      # 7.3

CATEGORIES=	net geo

HOMEPAGE=	https://dev.maxmind.com/geoip/legacy/downloadable/

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

.include <bsd.port.mk>
