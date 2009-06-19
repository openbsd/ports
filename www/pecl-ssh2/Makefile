# $OpenBSD: Makefile,v 1.2 2009/06/19 12:37:23 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	php bindings for the libssh2 library

DISTNAME=	ssh2-0.11.0
EXTRACT_SUFX=	.tgz
PKGNAME=	pecl-${DISTNAME}p0
CATEGORIES=	www

HOMEPAGE=	http://pecl.php.net/package/ssh2/

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://pecl.php.net/get/
EXTRACT_SUFX=	.tgz

AUTOCONF_VERSION=	2.62
AUTOMAKE_VERSION=	1.9

BUILD_DEPENDS=	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS=	ssh2::security/libssh2
RUN_DEPENDS=	:php5-core-*:www/php5/core
WANTLIB=	crypto ssl z

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX=		/var/www
DESTDIRNAME=	INSTALL_ROOT

# needs PHP CLI sapi to run
NO_REGRESS=	Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=ssh2.so" > \
		${PREFIX}/conf/php5.sample/ssh2.ini

.include <bsd.port.mk>
