# $OpenBSD: Makefile,v 1.19 2017/05/21 21:51:27 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP c

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
