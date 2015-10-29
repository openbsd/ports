# $OpenBSD: Makefile,v 1.15 2015/10/29 21:37:48 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
