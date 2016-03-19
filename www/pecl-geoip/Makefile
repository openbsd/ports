# $OpenBSD: Makefile,v 1.18 2016/03/19 21:18:38 naddy Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.0
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP c

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
