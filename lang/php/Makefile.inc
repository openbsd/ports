# $OpenBSD: Makefile.inc,v 1.152 2020/04/22 11:15:41 sthen Exp $

BROKEN-hppa=	no __sync_bool_compare_and_swap support nor asm fallback

COMMENT-main=		server-side HTML-embedded scripting language

PV=		${PHP_VERSION:R}
MV=		${PV:R}
SV=		${PV:S/.//}

PKGNAME-main?=		php-${PHP_VERSION}
PKGSTEM=		php-${PV}
PKGSTEM-main=		php-${PV}

DISTNAME?=		php-${PHP_VERSION}
#PGPSIGFILES?=		php-${PHP_VERSION}${EXTRACT_SUFX}.asc
EXTRACT_SUFX?=		.tar.xz

CATEGORIES=		lang www

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=		https://www.php.net/
MASTER_SITES=		https://www.php.net/distributions/

# UPGRADERS: please read BOTH the PHP and Zend licenses
# and make sure they are safe before an upgrade
PERMIT_PACKAGE=		Yes

MODPHP_CONFIG_PATH=	/var/www/conf

# where the main php module is stored (outside the chroot)
APACHE_MODULE_SUBDIR=	lib/php-${PV}
APACHE_MODULE_DIR=	${LOCALBASE}/${APACHE_MODULE_SUBDIR}

# where the PEAR and extension modules are (inside the chroot)
CHROOT_DIR?=		/var/www
MODULES_SUBDIR=		lib/php-${PV}/modules
MODULES_DIR=		${LOCALBASE}/${MODULES_SUBDIR}

INI_TEMPLATES?=		development production

PATCHORIG=		.orig.port
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION?=	2.69
COMPILER=		base-clang ports-gcc base-gcc
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			EXTENSION_DIR=${MODULES_DIR} \
			COMPILER_LIBCXX="${LIBCXX}" \
			lt_cv_path_SED=/usr/bin/sed

# configure detects us as having decimal fp support but it's not built in
# in libgcc. https://bugs.php.net/bug.php?id=68114
CONFIGURE_ENV+=		ac_cv_decimal_fp_supported=no

# don't pick-up libpam
CONFIGURE_ENV+=		ac_cv_lib_pam_pam_start=no

MAKE_ENV=		${CONFIGURE_ENV}

CONFIGURE_ARGS+=	--disable-rpath \
			--disable-static \
			--enable-inline-optimization \
			--enable-shared \
			--program-suffix=-${PV} \
			--with-config-file-path=${SYSCONFDIR} \
			--with-config-file-scan-dir=${SYSCONFDIR}/php-${PV} \
			--with-pcre-jit=no \
			--with-pear=${LOCALBASE}/share/php-${PV} \
			--with-pic \
			--with-readline

# override mysqlnd default of /tmp/mysql.sock (if using libmysql this
# is fetched from mysql_config instead)
CONFIGURE_ARGS+=	--with-mysql-sock=${LOCALSTATEDIR}/run/mysql/mysql.sock

# zend extensions
CONFIGURE_ARGS+=	--enable-opcache

# default included php extensions
CONFIGURE_ARGS+=	--with-gettext=${LOCALBASE} \
			--with-iconv=${LOCALBASE} \
			--with-openssl \
			--with-password-argon2=${LOCALBASE} \
			--with-sodium=${LOCALBASE} \
			--with-zlib \
			--enable-bcmath \
			--enable-calendar \
			--enable-ctype \
			--enable-exif \
			--enable-ftp \
			--enable-mbstring \
			--enable-phar \
			--enable-session \
			--enable-sockets \
			--enable-sysvmsg \
			--enable-sysvsem \
			--enable-sysvshm \
			--enable-xml

.if ${PV:M7.2} || ${PV:M7.3}
CONFIGURE_ARGS+=	--enable-wddx \
			--with-onig=${LOCALBASE} \
			--with-pcre-regex
.else
# wddx moved to pecl in 7.4
CONFIGURE_ARGS+=	--with-external-pcre
.endif

RUN_DEPENDS-main=	mail/femail,-chroot

TEST_TARGET=		test
TEST_FLAGS=		NO_INTERACTION=1

ZEND_EXTENSIONS+=	-opcache

# new subpackages must be added to devel/quirks $cve tables
PHP_EXTENSIONS+=	-bz2 -curl -dba -enchant -gd -gmp -intl -imap -ldap \
			-mysqli -odbc -pcntl -pdo_mysql -pdo_odbc -pdo_pgsql \
			-pdo_sqlite -pgsql -pspell -shmop -soap -snmp \
			-sqlite3 -pdo_dblib -tidy -xmlrpc -xsl -zip

SAPI+=			-main -apache -cgi -dbg
MULTI_PACKAGES=		${SAPI} ${PHP_EXTENSIONS}

# setup for no_* build options to allow disabling extensions with
# larger dependencies;
PSEUDO_FLAVORS=		${PHP_EXTENSIONS:C/-(pdo_)?mysqli?//:C/-(pcntl|shmop|zip)//:C/-/no_/g}
PSEUDO_FLAVORS+=	no_apache

.include <bsd.port.arch.mk>

# sapi
CONFIGURE_ARGS+=	--enable-cli \
			--enable-fpm \
			--with-fpm-user=www \
			--with-fpm-group=www

# cgi
COMMENT-cgi=		php CGI binary
CONFIGURE_ARGS+=	--enable-cgi

# apache
COMMENT-apache=		php module for Apache httpd
RUN_DEPENDS-apache=	www/apache-httpd
.if ${BUILD_PACKAGES:M-apache}
CONFIGURE_ARGS+=	--with-apxs2=${LOCALBASE}/sbin/apxs
BUILD_DEPENDS+=		www/apache-httpd
.endif

# phpdbg
COMMENT-dbg=		interactive php debugger
HOMEPAGE-dbg=		https://www.php.net/phpdbg
CONFIGURE_ARGS+=	--enable-phpdbg

.for i in ${SAPI}
WANTLIB$i +=		argon2 c crypto curses iconv intl lzma m onig
WANTLIB$i +=		pthread readline sodium ssl xml2 z
LIB_DEPENDS$i +=	devel/gettext,-runtime \
			security/argon2 \
			security/libsodium \
			textproc/libxml \
			textproc/oniguruma
.  if !${PV:M7.2} && !${PV:M7.3}
WANTLIB$i +=		${COMPILER_LIBCXX} pcre2-8
LIB_DEPENDS$i +=	devel/pcre2
.  endif
.endfor

#
# Loadable php extensions by name that are included in all versions
#

# bz2
COMMENT-bz2=		bzip2 compression extensions for php
HOMEPAGE-bz2=		https://www.php.net/bzip2
LIB_DEPENDS-bz2=	archivers/bzip2
WANTLIB-bz2=		bz2 pthread
.if ${BUILD_PACKAGES:M-bz2}
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
.endif

# curl
COMMENT-curl=		curl URL library extensions for php
HOMEPAGE-curl=		https://www.php.net/curl
LIB_DEPENDS-curl=	net/curl
WANTLIB-curl=		crypto curl nghttp2 pthread ssl z
.if ${BUILD_PACKAGES:M-curl}
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
.endif

# dba
COMMENT-dba=		dba GDBM access extensions for php
HOMEPAGE-dba=		https://www.php.net/dba
LIB_DEPENDS-dba=	databases/gdbm
WANTLIB-dba=		gdbm iconv intl pthread
.if ${BUILD_PACKAGES:M-dba}
CONFIGURE_ARGS+=	--enable-dba=shared \
			--with-gdbm=${LOCALBASE}
.endif

# enchant
COMMENT-enchant=	enchant library extensions for php
HOMEPAGE-enchant=	https://www.php.net/enchant
LIB_DEPENDS-enchant=	textproc/enchant
WANTLIB-enchant=	${COMPILER_LIBCXX} enchant glib-2.0 gmodule-2.0 \
			iconv intl
.if ${BUILD_PACKAGES:M-enchant}
CONFIGURE_ARGS+=	--with-enchant=shared,${LOCALBASE}
.endif

# gd
COMMENT-gd=		image manipulation extensions for php
HOMEPAGE-gd=		https://www.php.net/image
LIB_DEPENDS-gd=		graphics/jpeg \
			graphics/libwebp \
			graphics/png
WANTLIB-gd+=		freetype jpeg m png pthread webp z
# for bundled gd
WANTLIB-gd+=		X11 Xpm xcb
# for standalone gd (needs more testing, defer to post 6.7)
#WANTLIB-gd+=		expat fontconfig iconv lzma tiff zstd
#LIB_DEPENDS-gd=	graphics/gd
.if ${BUILD_PACKAGES:M-gd}
.  if ${PV:M7.2} || ${PV:M7.3}
CONFIGURE_ARGS+=	--with-gd=shared \
			--with-freetype-dir=${X11BASE} \
			--with-jpeg-dir=${LOCALBASE} \
			--with-png-dir=${LOCALBASE} \
			--with-webp-dir=${LOCALBASE} \
			--with-xpm-dir=${X11BASE} \
			--with-zlib-dir=/usr
.  else
CONFIGURE_ARGS+=	--enable-gd=shared \
			--with-freetype=${X11BASE} \
			--with-jpeg=${LOCALBASE} \
			--with-webp=${LOCALBASE} \
			--with-xpm=${X11BASE}
.  endif
.endif

# gmp
COMMENT-gmp=		gmp math library support for php
HOMEPAGE-gmp=		https://www.php.net/gmp
LIB_DEPENDS-gmp=	devel/gmp
WANTLIB-gmp=		gmp pthread
.if ${BUILD_PACKAGES:M-gd}
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
.endif

# imap
COMMENT-imap=		imap, pop3 and nntp extensions for php
HOMEPAGE-imap=		https://www.php.net/imap
LIB_DEPENDS-imap=	mail/alpine,-c-client
WANTLIB-imap=		c-client crypto pthread ssl
.if ${BUILD_PACKAGES:M-imap}
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-imap-ssl
.endif

# intl
COMMENT-intl=		intl library support for php
HOMEPAGE-intl=		https://www.php.net/intl
LIB_DEPENDS-intl=	textproc/icu4c
RUN_DEPENDS-intl=	textproc/icu4c,-wwwdata
WANTLIB-intl=		${COMPILER_LIBCXX} icudata icui18n icuio icuuc m
.if ${BUILD_PACKAGES:M-intl}
.  if ${PV:M7.2} || ${PV:M7.3}
CONFIGURE_ARGS+=	--enable-intl=shared \
			--with-icu-dir=${LOCALBASE}
.  else
CONFIGURE_ARGS+=	--enable-intl=shared
.  endif
.endif

# ldap
COMMENT-ldap=		ldap protocol extensions for php
HOMEPAGE-ldap=		https://www.php.net/ldap
LIB_DEPENDS-ldap=	databases/openldap
WANTLIB-ldap=		crypto lber ldap pthread sasl2 ssl
.if ${BUILD_PACKAGES:M-ldap}
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
.endif

# mysqli
COMMENT-mysqli=		mysql database access extensions for php
HOMEPAGE-mysqli	=	https://www.php.net/mysqli
CONFIGURE_ARGS+=	--with-mysqli=shared
LIB_DEPENDS-mysqli=	# empty: using PHP's mysqlnd
WANTLIB-mysqli=		pthread

# odbc
COMMENT-odbc=		odbc database access extensions for php
HOMEPAGE-odbc=		https://www.php.net/odbc
LIB_DEPENDS-odbc=	databases/iodbc
WANTLIB-odbc=		iodbc iodbcinst pthread
.if ${BUILD_PACKAGES:M-odbc}
CONFIGURE_ARGS+=	--with-iodbc=shared,${LOCALBASE}
.endif

# pcntl
COMMENT-pcntl=		PCNTL extensions for php
HOMEPAGE-pcntl=		https://www.php.net/pcntl
CONFIGURE_ARGS+=	--enable-pcntl=shared
LIB_DEPENDS-pcntl=	# empty
WANTLIB-pcntl=		pthread

# pdo-dblib
COMMENT-pdo_dblib=	PDO DB-LIB support for php
HOMEPAGE-pdo_dblib=	https://www.php.net/pdo_dblib
LIB_DEPENDS-pdo_dblib=	databases/freetds
WANTLIB-pdo_dblib=	ffi gmp gnutls hogweed iconv idn2 intl \
			nettle p11-kit pthread sybdb tasn1 unistring
.if ${BUILD_PACKAGES:M-pdo_dblib}
CONFIGURE_ARGS+=	--with-pdo-dblib=shared,${LOCALBASE}
.endif

# pdo-mysql
COMMENT-pdo_mysql=	PDO mysql database access extensions for php
HOMEPAGE-pdo_mysql=	https://www.php.net/pdo_mysql
CONFIGURE_ARGS+=	--with-pdo-mysql=shared
LIB_DEPENDS-pdo_mysql=	# empty: using PHP's mysqlnd
WANTLIB-pdo_mysql=	pthread

# pdo-odbc
COMMENT-pdo_odbc=	PDO database access extensions for php
HOMEPAGE-pdo_odbc=	https://www.php.net/pdo_odbc
LIB_DEPENDS-pdo_odbc=	databases/iodbc
WANTLIB-pdo_odbc=	iodbc pthread
.if ${BUILD_PACKAGES:M-pdo_odbc}
CONFIGURE_ARGS+=	--with-pdo-odbc=shared,iODBC,${LOCALBASE}
.endif

# pdo-pgsql
COMMENT-pdo_pgsql=	PDO pgsql database access extensions for php
HOMEPAGE-pdo_pgsql=	https://www.php.net/pdo_pgsql
LIB_DEPENDS-pdo_pgsql=	databases/postgresql
WANTLIB-pdo_pgsql=	crypto m pq pthread ssl
.if ${BUILD_PACKAGES:M-pdo_pgsql}
CONFIGURE_ARGS+=	--with-pdo-pgsql=shared,${LOCALBASE}
.endif

# pdo-sqlite
COMMENT-pdo_sqlite=	PDO sqlite3 database access extensions for php
HOMEPAGE-pdo_sqlite=	https://www.php.net/pdo_sqlite
LIB_DEPENDS-pdo_sqlite=	databases/sqlite3
WANTLIB-pdo_sqlite=	m pthread sqlite3 z
.if ${BUILD_PACKAGES:M-pdo_sqlite}
CONFIGURE_ARGS+=	--with-pdo-sqlite=shared,${LOCALBASE}
.else
CONFIGURE_ARGS+=	--with-pdo-sqlite=no
.endif

# pgsql
COMMENT-pgsql=		pgsql database access extensions for php
HOMEPAGE-pgsql=		https://www.php.net/pgsql
LIB_DEPENDS-pgsql=	databases/postgresql
WANTLIB-pgsql=		crypto m pq pthread ssl
.if ${BUILD_PACKAGES:M-pgsql}
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
.endif

# pspell
COMMENT-pspell=		pspell library extensions for php
HOMEPAGE-pspell=	https://www.php.net/pspell
LIB_DEPENDS-pspell=	textproc/aspell/core
WANTLIB-pspell=		aspell iconv intl pspell pthread
.if ${BUILD_PACKAGES:M-pspell}
CONFIGURE_ARGS+=	--with-pspell=shared,${LOCALBASE}
.endif

# shmop
COMMENT-shmop=		shared memory extensions for php
HOMEPAGE-shmop=		https://www.php.net/shmop
CONFIGURE_ARGS+=	--enable-shmop=shared,${LOCALBASE}
LIB_DEPENDS-shmop=	# empty
WANTLIB-shmop=		pthread

# snmp
COMMENT-snmp=		snmp protocol extensions for php
HOMEPAGE-snmp=		https://www.php.net/snmp
LIB_DEPENDS-snmp=	net/net-snmp
WANTLIB-snmp=		crypto m netsnmp pthread
.if ${BUILD_PACKAGES:M-snmp}
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE}
.endif

# soap
COMMENT-soap=		SOAP functions for php
HOMEPAGE-soap=		https://www.php.net/soap
LIB_DEPENDS-soap=	textproc/libxml
WANTLIB-soap=		iconv lzma m pthread xml2 z
.if ${BUILD_PACKAGES:M-soap}
CONFIGURE_ARGS+=	--enable-soap=shared,${LOCALBASE}
.endif

# sqlite3
COMMENT-sqlite3=	sqlite3 database access extension for php
HOMEPAGE-sqlite3=	https://www.php.net/sqlite3
LIB_DEPENDS-sqlite3=	databases/sqlite3
WANTLIB-sqlite3=	m pthread sqlite3 z
.if ${BUILD_PACKAGES:M-sqlite3}
CONFIGURE_ARGS+=	--with-sqlite3=shared,${LOCALBASE}
.else
CONFIGURE_ARGS+=	--with-sqlite3=no
.endif

# tidy
COMMENT-tidy=		tidy HTML cleaner bindings
HOMEPAGE-tidy=		https://www.php.net/tidy
LIB_DEPENDS-tidy=	www/tidy
WANTLIB-tidy=		pthread tidy
.if ${BUILD_PACKAGES:M-tidy}
CONFIGURE_ARGS+=	--with-tidy=shared,${LOCALBASE}
.endif

# xml-rpc
COMMENT-xmlrpc=		XML RPC functions for php
HOMEPAGE-xmlrpc=	https://www.php.net/xmlrpc
LIB_DEPENDS-xmlrpc=	textproc/libxml
WANTLIB-xmlrpc=		iconv lzma m pthread xml2 z
.if ${BUILD_PACKAGES:M-xmlrpc}
CONFIGURE_ARGS+=	--with-xmlrpc=shared
.endif

# xsl
COMMENT-xsl=		XSL functions for php
HOMEPAGE-xsl=		https://www.php.net/xsl
LIB_DEPENDS-xsl=	textproc/libxslt
WANTLIB-xsl=		exslt gcrypt gpg-error iconv intl lzma m pthread \
			xml2 xslt z
.if ${BUILD_PACKAGES:M-xsl}
CONFIGURE_ARGS+=	--with-xsl=shared --enable-dom
.endif

# zip
COMMENT-zip=		zip functions for php
HOMEPAGE-zip=		https://www.php.net/zip
.if ${PV:M7.2} || ${PV:M7.3}
CONFIGURE_ARGS+=	--enable-zip=shared,${LOCALBASE}
CONFIGURE_ARGS+=	--with-libzip=${LOCALBASE}
.else
CONFIGURE_ARGS+=	--with-zip=shared
.endif
LIB_DEPENDS-zip=	archivers/bzip2 \
			archivers/libzip
WANTLIB-zip=		bz2 crypto lzma pthread ssl z zip

# some variables to substitute
SUBST_VARS+=	CHROOT_DIR MODPHP_CONFIG_PATH SV PV MV
UPDATE_PLIST_ARGS+= -i MV
DEFAULT_PHP?=	No

.for i in TRUEPREFIX MODULES_DIR PHP_VERSION APACHE_MODULE_DIR
PHPXS_SUBST+= -e 's,${i},${${i}},'
.endfor

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/${APACHE_MODULE_SUBDIR}/modules

INSTALL_TARGET=	install-headers install-build install-programs
DESTDIRNAME=	INSTALL_ROOT

pre-configure:
	${SUBST_CMD} ${WRKSRC}/main/php_ini.c
	@perl -pi -e "s,OPENBSD_PEAR_ROOT,'${CHROOT_DIR}/pear',g;" \
		-e "s,OPENBSD_PREFIX,${TRUEPREFIX},;" \
		${WRKSRC}/scripts/phpize.in \
		${WRKSRC}/scripts/php-config.in

.for i in ${MULTI_PACKAGES:N-main:S/-//g}
DESCR-${i}=		${.CURDIR}/../files/DESCR-${i}
PKGNAME-${i}=		php-${i}-${PHP_VERSION}
PKGSPEC-${i}=		php-${i}-${PHP_PKGSPEC}
RUN_DEPENDS-${i}+=	php-${PHP_VERSION}:lang/php/${PV}
.endfor

DESCR-main=		${.CURDIR}/../files/DESCR-main

# shouldn't normally be needed, but sometimes file timestamps in the .tar.gz
# have the generated file older than the source file for re2c, resulting in a
# build failure if re2c was installed during autoconf but later junked.
BUILD_DEPENDS+=		devel/re2c

post-install:
	${SUBST_DATA} ${.CURDIR}/../files/README-main \
		${PREFIX}/share/doc/pkg-readmes/${PKGSTEM-main}
.if ${BUILD_PACKAGES:M-apache}
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp${MV}.so \
		${PREFIX}/${APACHE_MODULE_SUBDIR}/
.endif
	${INSTALL_DATA_DIR} ${WRKINST}/${CHROOT_DIR}/conf/php-${PV}.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${PV}
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin/php-${PV}
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cgi/php-cgi ${PREFIX}/bin/php-cgi-${PV}
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/phpdbg/phpdbg ${PREFIX}/bin/phpdbg-${PV}
	${INSTALL_MAN} ${WRKBUILD}/sapi/phpdbg/phpdbg.1 ${PREFIX}/man/man1/phpdbg-${PV}.1
# Make sure that php-cgi.1 still just sources php.1 when importing a new major version.
	${INSTALL_MAN} ${WRKSRC}/sapi/cli/php.1 ${PREFIX}/man/man1/php-cgi-${PV}.1
	${INSTALL_PROGRAM} ${WRKBUILD}/ext/phar/phar.phar ${PREFIX}/bin/phar-${PV}
	${INSTALL_MAN} ${WRKBUILD}/ext/phar/phar.1 ${PREFIX}/man/man1/phar-${PV}.1
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/fpm/php-fpm ${PREFIX}/sbin/php-fpm-${PV}
	${INSTALL_MAN} ${WRKBUILD}/sapi/fpm/php-fpm.8 ${PREFIX}/man/man8/php-fpm-${PV}.8
	${INSTALL_DATA} ${WRKBUILD}/sapi/fpm/php-fpm.conf \
		${PREFIX}/share/examples/php-${PV}/php-fpm.conf
	cat ${WRKBUILD}/sapi/fpm/www.conf >> \
		${PREFIX}/share/examples/php-${PV}/php-fpm.conf
	${SUBST_CMD} -m 644 -c ${.CURDIR}/../files/php.conf \
		${PREFIX}/share/examples/php-${PV}/modphp.conf

.for m in ${PHP_EXTENSIONS:S/-//g}
.if ${BUILD_PACKAGES:M-$m}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
	echo "extension=${m}.so" > \
		${PREFIX}/share/examples/php-${PV}/${m}.ini
.endif
.endfor
.for m in ${ZEND_EXTENSIONS:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
	echo "zend_extension=${m}.so" > \
		${PREFIX}/share/examples/php-${PV}/${m}.ini
.endfor
	${INSTALL_DATA_DIR} ${WRKINST}/${CHROOT_DIR}/etc
	echo "www:*:67:67::0:0:dummy user to appease c-client:/nonexistent:/sbin/nologin" > \
		${WRKINST}/${CHROOT_DIR}/etc/master.passwd.imap
	pwd_mkdb -d ${WRKINST}/${CHROOT_DIR}/etc master.passwd.imap

.for i in ${INI_TEMPLATES}
	@sed -e 's,MODULES_DIR,${MODULES_DIR},' \
	     -e 's,OPENBSD_INCLUDE_PATH,/pear/lib:${CHROOT_DIR}/pear/lib,' \
		<${WRKSRC}/php.ini-${i} \
		>${PREFIX}/share/examples/php-${PV}/php.ini-${i}
.endfor
	${INSTALL_MAN} ${WRKSRC}/sapi/cli/php.1 ${PREFIX}/man/man1/php-${PV}.1

.if ${DEFAULT_PHP:L} == yes
.for p in phar php
	ln -s $p-${PV} ${PREFIX}/bin/$p
.endfor
.endif
