# $OpenBSD: Makefile,v 1.22 2019/07/12 20:50:59 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.1
REVISION=	1

# PHP
PERMIT_PACKAGE=	Yes

WANTLIB += GeoIP c

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
