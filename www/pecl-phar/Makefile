# $OpenBSD: Makefile,v 1.7 2011/09/16 12:00:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	support for PHP archives (.phar)
DISTNAME=	phar-2.0.0
PKGNAME=	pecl-${DISTNAME}
REVISION=	4
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
