# $OpenBSD: Makefile,v 1.14 2006/05/09 14:15:40 robert Exp $

MULTI_PACKAGES=	-pear
SUBPACKAGE?=

COMMENT=	"server-side HTML-embedded scripting language"
COMMENT-pear=	"base classes for common PHP tasks"
PKGNAME=	php5-core-${V}
FULLPKGNAME-pear= php5-pear-${V}
DISTFILES=	php-${V}.tar.gz \
		pear-20060428.tar.gz:0

CONFIGURE_ARGS+=--with-apxs=/usr/sbin/apxs \
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

WANTLIB=	c crypto m ssl stdc++ z

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
INSTALL_TARGET= install-headers install-build install-programs
FAKE_FLAGS=	INSTALL_ROOT=${DESTDIR}

pre-configure:
	@cd ${WRKDIR}/pear && ${PATCH} -p0 --quiet < patch-OpenBSD 
	@perl -pi -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g" \
		${WRKDIR}/pear/PEAR/Config.php ${WRKSRC}/scripts/phpize.in \
		${WRKSRC}/scripts/php-config.in

post-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp5.so \
		${PREFIX}/${APACHE_MODULE_SUBDIR}
	${INSTALL_DATA_DIR} ${WRKINST}/${CHROOT_DIR}/pear/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php5
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin
	
	@cd ${WRKDIR}/pear && ${PREFIX}/bin/php \
		-n -dshort_open_tag=0 -dsafe_mode=0 -derror_reporting=E_ALL \
		-ddetect_unicode=0 install-pear.php -b ${PREFIX}/bin \
		-c ${WRKINST} -d ${WRKINST}${CHROOT_DIR}/pear *.tar 

	@cp ${WRKDIR}/pear/PEAR/Config.php \
		${WRKINST}${CHROOT_DIR}/pear/lib/PEAR/Config.php
	@perl -pi -e "s,${WRKINST},,g" ${PREFIX}/bin/pear \
				${PREFIX}/bin/peardev \
				${PREFIX}/bin/pecl \
				${WRKINST}${PEAR_DIR}/lib/pearcmd.php \
				${WRKINST}${PEAR_DIR}/lib/peclcmd.php \
				${WRKINST}${PEAR_DIR}/lib/PEAR/Command/Package.php

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
