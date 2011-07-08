# $OpenBSD: Makefile,v 1.4 2011/07/08 18:25:40 robert Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for rar archives
DISTNAME=	rar-2.0.0
PKGNAME=	pecl-${DISTNAME}
EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://pecl.php.net/get/
CATEGORIES=	archivers www

REVISION=	0

HOMEPAGE=	http://pecl.php.net/package/rar/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

MODULES=	lang/php
BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
WANTLIB=	stdc++

CONFIGURE_STYLE=gnu
DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

MODPHP_DO_SAMPLE=	rar
MODPHP_DO_PHPIZE=	Yes

.include <bsd.port.mk>
