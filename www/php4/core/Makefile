# $OpenBSD: Makefile,v 1.5 2002/08/12 04:27:41 avsm Exp $

COMMENT=	"server-side HTML-embedded scripting language"
PKGNAME=	php4-core-${V}

CONFIGURE_ARGS+= --with-apxs=/usr/sbin/apxs \
		--without-mysql \
		--without-xml \
		--enable-cli \
		--with-iconv=${LOCALBASE} \
		--with-gettext=${LOCALBASE} \
		--enable-dio \
		--without-pear \
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
		--enable-yp

MODULES=	gettext iconv

# some variables to substitute 
SUBST_VARS=	PHP_CONFIG_FILE
PHP_VERSION=	${V}

.for i in TRUEPREFIX PHP_CONFIG_FILE MODULES_DIR PHP_VERSION
PHPXS_SUBST+= -e 's,${i},${${i}},'
.endfor

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODULES_SUBDIR}

do-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp4.so ${PREFIX}/${MODULES_SUBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php4
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin
.for i in dist recommended
	@sed 's,MODULES_DIR,${MODULES_DIR},' \
		<${WRKSRC}/php.ini-${i} \
		>${PREFIX}/share/doc/php4/php.ini-${i}
.endfor
	@sed ${PHPXS_SUBST} <${FILESDIR}/phpxs >${PREFIX}/sbin/phpxs
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/phpxs
	@chmod ${BINMODE} ${PREFIX}/sbin/phpxs

.if ${MACHINE_ARCH} == "i386"
LIB_DEPENDS+=	recode.0::converters/recode
CONFIGURE_ARGS+= --with-recode=${LOCALBASE}
.endif

.include <bsd.port.mk>

