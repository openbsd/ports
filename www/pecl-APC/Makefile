# $OpenBSD: Makefile,v 1.18 2011/09/16 12:00:07 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Alternative PHP Cache

DISTNAME=	APC-3.1.7
REVISION=	1
PKGNAME=	pecl-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/APC

MAINTAINER=	William Yodlowsky <bsd@openbsd.rutgers.edu>

# PHP
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.59
AUTOMAKE_VERSION=	1.4

MODULES=	lang/php
BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-apc \
		--enable-apc-mmap \
		--with-apxs \
		--with-php-config=${MODPHP_PHP_CONFIG}

CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

WEBROOT=	/var/www
SUBST_VARS=	WEBROOT
DESTDIRNAME=	INSTALL_ROOT

MESSAGE=	${PORTSDIR}/lang/php/files/MESSAGE-ext
UNMESSAGE=	${PORTSDIR}/lang/php/files/UNMESSAGE-ext

# needs PHP CLI sapi to run
NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MODPHP_PHPIZE}

post-configure:
	@perl -pi -e "s,-rpath \\$$\\(phplibdir\\),-rpath ${LOCALBASE}/lib,g" \
		${WRKSRC}/Makefile

post-install:
	@${INSTALL_DATA_DIR} ${WRKINST}/${WEBROOT}/pecl-APC
	@${INSTALL_DATA} ${WRKSRC}/apc.php ${WRKSRC}/INSTALL \
		${WRKINST}/${WEBROOT}/pecl-APC
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${MODPHP_VERSION}
	@echo "extension=apc.so" > \
		${PREFIX}/share/examples/php-${MODPHP_VERSION}/apc.ini

.include <bsd.port.mk>
