# $OpenBSD: Makefile,v 1.6 2011/07/22 10:20:10 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	support for PHP archives (.phar)
DISTNAME=	phar-2.0.0
PKGNAME=	pecl-${DISTNAME}
REVISION=	3
EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://pecl.php.net/get/
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/phar/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/php
BUILD_DEPENDS=	www/pear
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-bz2

CONFIGURE_STYLE=gnu

DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	phar
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
