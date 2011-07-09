# $OpenBSD: Makefile,v 1.3 2011/07/09 00:04:11 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for setproctitle

DISTNAME=	proctitle-0.1.1
REVISION=	0
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/proctitle/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	lang/php
BUILD_DEPENDS=	www/pear

DESTDIRNAME=	INSTALL_ROOT

CONFIGURE_STYLE=gnu

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	proctitle
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
