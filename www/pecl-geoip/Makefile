# $OpenBSD: Makefile,v 1.4 2011/07/09 00:04:11 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for geocoding IPv4 addresses

DISTNAME=	geoip-1.0.7
REVISION=	0
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/geoip/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GeoIP

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	lang/php
BUILD_DEPENDS=	www/pear
LIB_DEPENDS=	net/GeoIP

CONFIGURE_STYLE=gnu

DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	geoip
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
