# $OpenBSD: Makefile,v 1.1.1.1 2009/08/10 05:18:19 jolan Exp $

SHARED_ONLY=	Yes

COMMENT=	PHP support for process control
DISTNAME=	pecl-pcntl-1.0
MASTER_SITES=	http://openbsddistfiles.org/~jolan/
CATEGORIES=	www

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
	@echo "extension=pcntl.so" > \
		${PREFIX}/conf/php5.sample/pcntl.ini

.include <bsd.port.mk>
