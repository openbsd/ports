# $OpenBSD: Makefile,v 1.20 2018/04/26 15:08:56 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.1
REVISION=	0

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP c

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
