# $OpenBSD: Makefile,v 1.5 2011/07/08 21:46:36 robert Exp $

SHARED_ONLY =	Yes

COMMENT =	PHP extension for parsing and working with rfc822/MIME mail

DISTNAME =	mailparse-2.1.5
PKGNAME =	pecl-${DISTNAME}
REVISION =	2
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

MODULES=	lang/php

BUILD_DEPENDS =	www/pear \
		lang/php/${MODPHP_VERSION},-main:patch \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

FAKE_FLAGS =	INSTALL_ROOT=${WRKINST}
SUBST_VARS =	LOCALBASE

# needs command-line PHP installed and has some interactions
# with chroot directory structure.
NO_REGRESS =	Yes

USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static

MODPHP_DO_SAMPLE=	mailparse
MODPHP_DO_PHPIZE=	Yes

post-extract:
	ln -s ${WRKDIR}/lang/php/${MODPHP_VERSION}/php-* ${WRKDIR}/php

.include <bsd.port.mk>
