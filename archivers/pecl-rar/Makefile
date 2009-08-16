# $OpenBSD: Makefile,v 1.1.1.1 2009/08/16 06:39:12 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for rar archives
DISTNAME=	rar-1.0.0
PKGNAME=	pecl-${DISTNAME}
EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://pecl.php.net/get/
CATEGORIES=	archivers www

HOMEPAGE=	http://pecl.php.net/package/rar/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS=	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	:php5-core-*:www/php5/core
WANTLIB=	stdc++

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
DESTDIRNAME=	INSTALL_ROOT

NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=rar.so" > \
		${PREFIX}/conf/php5.sample/rar.ini

.include <bsd.port.mk>
