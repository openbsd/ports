# $OpenBSD: Makefile,v 1.36 2007/05/07 13:46:59 bernd Exp $

MULTI_PACKAGES=	-main -pear

COMMENT-main=	"server-side HTML-embedded scripting language"
COMMENT-pear=	"base classes for common PHP tasks"
PKGNAME-main=	php4-core-${V}p3
FULLPKGNAME-pear= php4-pear-${V}p2

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
		--enable-exif

# some variables to substitute
SUBST_VARS=	PHP_CONFIG_FILE
PHP_VERSION=	${V}

.for i in TRUEPREFIX PHP_CONFIG_FILE MODULES_DIR PHP_VERSION APACHE_MODULE_DIR
PHPXS_SUBST+= -e 's,${i},${${i}},'
.endfor

WANTLIB-main=	c crypto des m ssl stdc++ z pthread
MODULES=	devel/gettext

.if ${MACHINE_ARCH} == "i386"
LIB_DEPENDS-main=${LIB_DEPENDS} recode::converters/recode
CONFIGURE_ARGS+= --with-recode=${LOCALBASE}
.endif

PREFIX-pear=		${CHROOT_DIR}
RUN_DEPENDS-pear=	:php4-core-${V}:www/php4/core
LIB_DEPENDS-pear=

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/${APACHE_MODULE_SUBDIR}

INSTALL_TARGET= install-pear install-headers install-build install-programs
FAKE_FLAGS= 	INSTALL_ROOT=${DESTDIR}

pre-configure:
	@perl -p -i.orig -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g" \
	    ${WRKSRC}/pear/PEAR/Config.php ${WRKSRC}/scripts/phpize.in \
	    ${WRKSRC}/scripts/php-config.in

post-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp4.so ${PREFIX}/${APACHE_MODULE_SUBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php4
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin
.for i in dist recommended
	@sed -e 's,MODULES_DIR,${MODULES_DIR},' \
	     -e 's,OPENBSD_INCLUDE_PATH,/pear/lib:${CHROOT_DIR}/pear/lib,' \
		<${WRKSRC}/php.ini-${i} \
		>${PREFIX}/share/examples/php4/php.ini-${i}
.endfor
	@sed ${PHPXS_SUBST} <${FILESDIR}/phpxs >${PREFIX}/sbin/phpxs
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/phpxs
	@chmod ${BINMODE} ${PREFIX}/sbin/phpxs
	${INSTALL_MAN} ${WRKSRC}/sapi/cli/php.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
