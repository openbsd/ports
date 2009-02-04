# $OpenBSD: Makefile,v 1.1.1.1 2009/02/04 09:31:41 simon Exp $

SHARED_ONLY =	Yes
COMMENT =	PHP interface to swish-e

DISTNAME =	swish-0.3.0
PKGNAME =	pecl-${DISTNAME}
CATEGORIES =	www
EXTRACT_SUFX =	.tgz

HOMEPAGE =	http://pecl.php.net/package/swish
MASTER_SITES =	http://pecl.php.net/get/

# PHP License
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =	m pcre pcreposix z

LIB_DEPENDS =	swish-e::textproc/swish-e
BUILD_DEPENDS =	:pear-*:www/pear \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS =	:php5-core-*:www/php5/core

PREFIX =	/var/www
DESTDIRNAME =	INSTALL_ROOT

USE_LIBTOOL =	Yes
NO_REGRESS =	Yes

AUTOCONF_VERSION =	2.59
AUTOMAKE_VERSION =	1.4

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-configure:
	@perl -pi -e 's,(finish_cmds=").*,\1" #,g' ${WRKSRC}/libtool

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pecl-swish
	@${INSTALL_DATA} ${WRKSRC}/swish.php \
		${PREFIX}/share/examples/pecl-swish
	@${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=swish.so" > \
		${PREFIX}/conf/php5.sample/swish.ini

.include <bsd.port.mk>
