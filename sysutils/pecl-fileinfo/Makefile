# $OpenBSD: Makefile,v 1.3 2010/11/20 17:22:41 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		PHP support for retrieving info about files

DISTNAME =		Fileinfo-1.0.4
PKGNAME =		pecl-${DISTNAME:L}
CATEGORIES =		sysutils
MAINTAINER =		Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =		http://pecl.php.net/package/fileinfo/

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

LIB_DEPENDS =		devel/libmagic
WANTLIB +=		z magic

PREFIX =		/var/www
DESTDIRNAME =		INSTALL_ROOT

REGRESS_TARGET =	test

USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static

pre-configure:
	@cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${LOCALBASE}/bin/phpize

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
	@echo "extension=fileinfo.so" > \
		${PREFIX}/conf/php5.sample/fileinfo.ini

.include <bsd.port.mk>
