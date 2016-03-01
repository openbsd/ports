# $OpenBSD: Makefile,v 1.17 2016/03/01 00:07:18 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.0
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
