# $OpenBSD: Makefile,v 1.7 2012/04/19 21:30:38 sthen Exp $

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.0.7
REVISION=	3

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GeoIP

MODULES=	lang/php/pecl
CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/GeoIP

.include <bsd.port.mk>
