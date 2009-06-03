# $OpenBSD: Makefile,v 1.12 2009/06/03 00:48:51 pyr Exp $

COMMENT=	Apache module for finding the country of web requests

DISTNAME=	mod_geoip_1.3.4
PKGNAME=	mod_geoip-1.3.4p0
CATEGORIES=	www geo

HOMEPAGE=	http://www.maxmind.com/app/mod_geoip
MASTER_SITES=	http://www.maxmind.com/download/geoip/api/mod_geoip/

MODULES+=	apache-module

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODAPACHE_NAME=	geoip

LIB_DEPENDS=	GeoIP.>=4::net/GeoIP

FLAGS=		-I${LOCALBASE}/include -L${LOCALBASE}/lib

NO_REGRESS=	Yes

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
