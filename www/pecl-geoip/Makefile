# $OpenBSD: Makefile,v 1.12 2013/08/10 14:57:29 robert Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.0.8

# PHP
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GeoIP

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
