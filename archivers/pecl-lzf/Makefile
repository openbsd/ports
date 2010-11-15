# $OpenBSD: Makefile,v 1.2 2010/11/15 00:22:45 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		PHP support LZF de/compression

DISTNAME =		LZF-1.5.2
PKGNAME =		pecl-${DISTNAME:L}
CATEGORIES =		archivers
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =		http://pecl.php.net/package/lzf/

# PHP License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://pecl.php.net/get/
EXTRACT_SUFX =		.tgz

AUTOCONF_VERSION =	2.62
AUTOMAKE_VERSION =	1.9

BUILD_DEPENDS =		www/pear \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
RUN_DEPENDS =		www/php5/core

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
			AUTOCONF_VERSION=${AUTOCONF_VERSION}

PREFIX =		/var/www
DESTDIRNAME =		INSTALL_ROOT

REGRESS_TARGET =	test

USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=lzf.so" > \
		${PREFIX}/conf/php5.sample/lzf.ini

.include <bsd.port.mk>
