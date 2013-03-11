# $OpenBSD: Makefile,v 1.19 2013/03/11 11:44:43 espie Exp $

COMMENT=	Apache module for finding the country of web requests

REVISION=	3
DISTNAME=	mod_geoip_1.3.4
PKGNAME=	mod_geoip-1.3.4
CATEGORIES=	www geo

HOMEPAGE=	http://www.maxmind.com/app/mod_geoip
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/mod_geoip/

MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP>=4

MODAPACHE_NAME=	geoip

LIB_DEPENDS=	net/GeoIP

FLAGS=		-I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_TEST=	Yes

APXS=		/usr/sbin/apxs

do-build:
	cd ${WRKSRC} && \
		${APXS} -c -o mod_geoip.so ${FLAGS} -lGeoIP mod_geoip.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_geoip
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/mod_geoip
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
