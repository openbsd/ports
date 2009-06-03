# $OpenBSD: Makefile,v 1.44 2009/06/03 00:50:38 sthen Exp $

COMMENT-main=	server-side HTML-embedded scripting language
COMMENT-fastcgi=stand-alone FastCGI version of PHP

PKGNAME=	php5-core-${V}
PKGNAME-main=	php5-core-${V}p2
PKGNAME-fastcgi=php5-fastcgi-${V}p0

DISTFILES=	php-${V}.tar.gz

MULTI_PACKAGES=	-main -fastcgi

CONFIGURE_ARGS+=--with-apxs=/usr/sbin/apxs \
		--without-mysql \
		--enable-xml \
		--enable-wddx \
		--enable-cli \
		--with-iconv=${LOCALBASE} \
		--with-gettext=${LOCALBASE} \
		--enable-bcmath \
		--enable-session \
		--enable-calendar \
		--enable-ctype \
		--enable-ftp \
		--with-pcre-regex \
		--enable-sockets \
		--enable-sysvsem \
		--enable-sysvshm \
		--enable-exif \
		--without-sqlite \
		--without-pdo-sqlite \
		--with-pear=${LOCALBASE}/share/php5 \
		--enable-fastcgi \
		--enable-force-cgi-redirect \
		--with-config-file-scan-dir=${PHP_CONFIG_PATH}/php5
		
MODULES=	devel/gettext

# some variables to substitute
SUBST_VARS=	PHP_CONFIG_FILE PHP_CONFIG_PATH
PHP_VERSION=	${V}

.for i in TRUEPREFIX PHP_CONFIG_FILE MODULES_DIR PHP_VERSION APACHE_MODULE_DIR
PHPXS_SUBST+= -e 's,${i},${${i}},'
.endfor

WANTLIB=	c crypto m ssl stdc++ z pthread
LIB_DEPENDS=	xml2.>=8::textproc/libxml

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/${APACHE_MODULE_SUBDIR}
INSTALL_TARGET= install-headers install-build install-programs
DESTDIRNAME=	INSTALL_ROOT

pre-configure:
	@perl -pi -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g" \
		${WRKSRC}/scripts/phpize.in \
		${WRKSRC}/scripts/php-config.in

post-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp5.so \
		${PREFIX}/${APACHE_MODULE_SUBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php5
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cgi/php-cgi ${PREFIX}/bin/php-fastcgi
	${INSTALL_DATA} ${FILESDIR}/php5.conf \
		${PREFIX}/share/examples/php5/php5.conf
	@perl -pi -e "s,!!PREFIX!!,${TRUEPREFIX},g" \
		${PREFIX}/share/examples/php5/php5.conf
	
.for i in dist recommended
	@sed -e 's,MODULES_DIR,${MODULES_DIR},' \
	     -e 's,OPENBSD_INCLUDE_PATH,/pear/lib:${CHROOT_DIR}/pear/lib,' \
		<${WRKSRC}/php.ini-${i} \
		>${PREFIX}/share/examples/php5/php.ini-${i}
.endfor
	${INSTALL_MAN} ${WRKSRC}/sapi/cli/php.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
