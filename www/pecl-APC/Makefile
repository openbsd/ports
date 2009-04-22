# $OpenBSD: Makefile,v 1.14 2009/04/22 21:24:09 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Alternative PHP Cache

DISTNAME=	APC-3.1.2
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/APC

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.4

BUILD_DEPENDS=	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	:php5-core-*:www/php5/core

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-apc \
		--enable-apc-mmap \
		--with-apxs \
		--with-php-config=$(LOCALBASE)/bin/php-config

CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
DESTDIRNAME=	INSTALL_ROOT

# needs PHP CLI sapi to run
NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-configure:
	@perl -pi -e "s,-rpath \\$$\\(phplibdir\\),-rpath ${LOCALBASE}/lib,g" \
		${WRKSRC}/Makefile

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/pecl-APC
	@${INSTALL_DATA} ${WRKSRC}/apc.php ${WRKSRC}/INSTALL \
		${PREFIX}/pecl-APC
	@${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=apc.so" > \
		${PREFIX}/conf/php5.sample/apc.ini

.include <bsd.port.mk>
