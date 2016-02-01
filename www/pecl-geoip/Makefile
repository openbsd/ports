# $OpenBSD: Makefile,v 1.16 2016/02/01 21:55:38 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.0
REVISION=	0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
