# $OpenBSD: Makefile,v 1.11 2013/03/11 11:44:47 espie Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.0.7
REVISION=	6

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
