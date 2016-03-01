# $OpenBSD: Makefile,v 1.22 2016/03/01 00:07:17 sthen Exp $

COMMENT=	Apache module for finding the country of web requests

DISTNAME =	mod_geoip_1.3.5
PKGNAME =	mod_geoip-1.3.5
REVISION =	0
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

do-build:
	cd ${WRKSRC} && \
		${MODAPACHE_APXS} -c -o mod_geoip.so ${FLAGS} -lGeoIP mod_geoip.c
	@${MODAPACHE_CREATE_ENABLE_SCRIPT}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mod_geoip
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/mod_geoip
	${MODAPACHE_INSTALL}

.include <bsd.port.mk>
