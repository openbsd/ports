# $OpenBSD: Makefile,v 1.2 2010/11/22 08:36:52 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	support for PHP archives (.phar)
DISTNAME=	phar-2.0.0
PKGNAME=	pecl-${DISTNAME}
EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://pecl.php.net/get/
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/phar/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS=	www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS=	www/php5/core \
		www/php5/extensions,-bz2

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
	@echo "extension=phar.so" > \
		${PREFIX}/conf/php5.sample/phar.ini

.include <bsd.port.mk>
