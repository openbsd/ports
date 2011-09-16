# $OpenBSD: Makefile,v 1.6 2011/09/16 12:00:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	php bindings for the libssh2 library

DISTNAME=	ssh2-0.11.0
EXTRACT_SUFX=	.tgz
PKGNAME=	pecl-${DISTNAME}
REVISION=	2
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/ssh2/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += crypto ssh2 ssl z

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

MODULES=	lang/php
BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	security/libssh2

CONFIGURE_STYLE=gnu

DESTDIRNAME=	INSTALL_ROOT

# needs PHP CLI sapi to run
NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	ssh2
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
