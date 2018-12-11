# $OpenBSD: Makefile,v 1.21 2018/12/11 12:33:26 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.1.1
REVISION=	1

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP c

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
