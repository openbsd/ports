# $OpenBSD: Makefile,v 1.11 2005/12/21 15:42:06 robert Exp $

MULTI_PACKAGES=	-pear
SUBPACKAGE?=

COMMENT=	"server-side HTML-embedded scripting language"
COMMENT-pear=	"base classes for common PHP tasks"
PKGNAME=	php5-core-${V}
FULLPKGNAME-pear= php5-pear-${V}
DISTFILES=	php-${V}.tar.gz \
			pear-core-20051215.tar.gz:0

CONFIGURE_ARGS+= --with-apxs=/usr/sbin/apxs \
		--without-mysql \
		--enable-xml \
		--enable-wddx \
		--enable-cli \
		--with-iconv=${LOCALBASE} \
		--with-gettext=${LOCALBASE} \
		--enable-dio \
		--with-pear=${PEAR_DIR} \
		--enable-bcmath \
		--enable-session \
		--enable-trans-sid \
		--enable-calendar \
		--enable-ctype \
		--enable-ftp \
		--with-pcre-regex \
		--with-posix \
		--enable-sockets \
		--enable-sysvsem \
		--enable-sysvshm \
		--enable-yp \
		--enable-exif \
		--without-sqlite

MODULES=	devel/gettext

# some variables to substitute
SUBST_VARS=	PHP_CONFIG_FILE
PHP_VERSION=	${V}

.for i in TRUEPREFIX PHP_CONFIG_FILE MODULES_DIR PHP_VERSION APACHE_MODULE_DIR
PHPXS_SUBST+= -e 's,${i},${${i}},'
.endfor

WANTLIB=	c crypto des m ssl stdc++ z

.if defined(PACKAGING) && !empty(SUBPACKAGE)
PREFIX=		${CHROOT_DIR}
RUN_DEPENDS=	:php5-core-${V}:www/php5/core
WANTLIB=
MODULES=
.else
LIB_DEPENDS=	xml2.8::textproc/libxml
.endif

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/${APACHE_MODULE_SUBDIR}
	@perl -p -i.orig -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g" \
		${WRKDIR}/pear-core/PEAR/Config.php ${WRKDIR}/pear-core/install-pear.php
	@cd ${WRKDIR}/pear-core && ${WRKSRC}/sapi/cli/php -n make-installpear-nozlib-phar.php
	@cp ${WRKDIR}/pear-core/install-pear-nozlib.phar ${WRKSRC}/pear/

INSTALL_TARGET= install-pear install-headers install-build install-programs
FAKE_FLAGS=     INSTALL_ROOT=${DESTDIR}

post-patch:
	@perl -p -i.orig -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g" \
		${WRKSRC}/scripts/phpize.in ${WRKSRC}/scripts/php-config.in 

post-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp5.so ${PREFIX}/${APACHE_MODULE_SUBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php5
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin
.for i in dist recommended
	@sed -e 's,MODULES_DIR,${MODULES_DIR},' \
	     -e 's,OPENBSD_INCLUDE_PATH,/pear/lib:${CHROOT_DIR}/pear/lib,' \
		<${WRKSRC}/php.ini-${i} \
		>${PREFIX}/share/examples/php5/php.ini-${i}
.endfor
	@sed ${PHPXS_SUBST} <${FILESDIR}/phpxs >${PREFIX}/sbin/phpxs
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/phpxs
	@chmod ${BINMODE} ${PREFIX}/sbin/phpxs
	${INSTALL_MAN} ${WRKSRC}/sapi/cli/php.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
