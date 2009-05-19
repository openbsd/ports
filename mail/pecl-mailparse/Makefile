# $OpenBSD: Makefile,v 1.3 2009/05/19 10:32:49 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-2.1.5
PKGNAME =	pecl-${DISTNAME}p1
CATEGORIES =	www mail

HOMEPAGE =	http://pecl.php.net/package/mailparse

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# PHP License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://pecl.php.net/get/
EXTRACT_SUFX =	.tgz

AUTOCONF_VERSION =	2.52
AUTOMAKE_VERSION =	1.4

BUILD_DEPENDS =	:pear-*:www/pear \
		::www/php5/extensions,-mbstring:patch \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS =	:php5-core-*:www/php5/core \
		:php5-mbstring-*:www/php5/extensions,-mbstring

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX =	/var/www
FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}
SUBST_VARS =	LOCALBASE

# needs command-line PHP installed and has some interactions
# with chroot directory structure.
NO_REGRESS =	Yes

USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize
	@ln -s ${WRKDIR}/www/php5/extensions/php-5* ${WRKDIR}/php

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=mailparse.so" > \
	    ${PREFIX}/conf/php5.sample/mailparse.ini
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/php/modules/mailparse.so

.include <bsd.port.mk>
