# $OpenBSD: Makefile.inc,v 1.103 2018/05/08 12:04:55 martijn Exp $

BROKEN-hppa=	no __sync_bool_compare_and_swap support nor asm fallback

COMMENT-main=		server-side HTML-embedded scripting language
COMMENT-cgi=		cgi sapi for php

PKGNAME-main?=		php-${V}

DISTFILES+=		php-${V}.tar.bz2

DISTNAME?=		php-${V}
CATEGORIES=		lang www

MAINTAINER=		Robert Nagy <robert@openbsd.org>
HOMEPAGE=		http://www.php.net/

MASTER_SITES=		http://se.php.net/distributions/ \
			http://us.php.net/distributions/ \
			http://no.php.net/distributions/ \
			http://uk.php.net/distributions/

# UPGRADERS: please read BOTH the PHP and Zend licenses
# and make sure they are safe before an upgrade
PERMIT_PACKAGE_CDROM=   Yes

MODULES+=		gcc4
# for atomic builtins
MODGCC4_ARCHS+=		arm
MODGCC4_LANGS+=		c++

MODPHP_CONFIG_PATH=	/var/www/conf

# where the main php module is stored (outside the chroot)
APACHE_MODULE_SUBDIR=	lib/php-${PV}
APACHE_MODULE_DIR=	${LOCALBASE}/${APACHE_MODULE_SUBDIR}

# where the PEAR and extension modules are (inside the chroot)
CHROOT_DIR?=		/var/www
MODULES_SUBDIR=		lib/php-${PV}/modules
MODULES_DIR=		${LOCALBASE}/${MODULES_SUBDIR}

INI_TEMPLATES?=		development production

# XXX use the bundled libtool because it needs some specific options we
# don't have.
USE_LIBTOOL?=		No

PATCHORIG=		.orig.port
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION?=	2.69
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread" \
			EXTENSION_DIR=${MODULES_DIR} \
			COMPILER_LIBCXX="${LIBCXX}" \
			lt_cv_path_SED=/usr/bin/sed
# configure detects us as having decimal fp support but it's not built in
# in libgcc. https://bugs.php.net/bug.php?id=68114
CONFIGURE_ENV+=		ac_cv_decimal_fp_supported=no
MAKE_ENV=               ${CONFIGURE_ENV}

CONFIGURE_ARGS+=	--enable-shared \
			--disable-static \
			--disable-rpath \
			--with-config-file-path=${SYSCONFDIR} \
			--enable-inline-optimization \
			--with-pic \
			--with-pear=${LOCALBASE}/share/php-${PV} \
			--with-config-file-scan-dir=${SYSCONFDIR}/php-${PV} \
			--with-pdo-sqlite \
			--with-sqlite3 \
			--program-suffix=-${PV} \
			--with-readline

# sapi
CONFIGURE_ARGS+=	--enable-cgi

CONFIGURE_ARGS+=	--with-apxs2=${LOCALBASE}/sbin/apxs2
BUILD_DEPENDS+=		www/apache-httpd

CONFIGURE_ARGS+=	--enable-fpm \
			--with-fpm-user=www \
			--with-fpm-group=www

# zend extensions
CONFIGURE_ARGS+=	--enable-opcache

# default included php extensions
CONFIGURE_ARGS+=	--with-openssl \
			--with-zlib \
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
			--enable-sysvmsg \
			--enable-sysvsem \
			--enable-sysvshm \
			--enable-mbstring \
			--enable-exif

TEST_TARGET=		test
TEST_FLAGS=		NO_INTERACTION=1

SAPI+=			-main -cgi
ZEND_EXTENSIONS+=	-opcache
MULTI_PACKAGES+=	${SAPI} ${PHP_EXTENSIONS}

RUN_DEPENDS-main=	mail/femail,-chroot

.for i in ${SAPI}
WANTLIB$i+=		c crypto curses iconv intl lzma m pthread \
			readline ssl xml2 z
LIB_DEPENDS$i+=		devel/gettext \
			textproc/libxml
.endfor


#
# Loadable php extensions by name that are included in all versions
#

# bz2
PHP_EXTENSIONS+=	-bz2
COMMENT-bz2=		bzip2 compression extensions for php
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
LIB_DEPENDS-bz2=	archivers/bzip2
WANTLIB-bz2=		bz2>=10 pthread

# curl
PHP_EXTENSIONS+=	-curl
COMMENT-curl=		curl URL library extensions for php
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
LIB_DEPENDS-curl=	net/curl
WANTLIB-curl=		pthread crypto nghttp2 ssl z curl>=2

# dba
PHP_EXTENSIONS+=	-dba
COMMENT-dba=		dba GDBM access extensions for php
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
LIB_DEPENDS-dba=	databases/gdbm
WANTLIB-dba=		gdbm>=2 pthread

# gd
PHP_EXTENSIONS+=	-gd
COMMENT-gd=		image manipulation extensions for php
LIB_DEPENDS-gd=		graphics/jpeg \
			graphics/png
.if ${PV} == "5.6"
LIB_DEPENDS-gd+=	devel/t1lib
WANTLIB-gd+=		t1>=5
.endif
WANTLIB-gd+=		z jpeg>=62 png>=3 pthread X11 Xpm freetype
CONFIGURE_ARGS+=	--with-gd=shared \
			--with-jpeg-dir=${LOCALBASE} \
			--with-png-dir=${LOCALBASE} \
			--with-zlib-dir=/usr \
			--with-t1lib=${LOCALBASE} \
			--with-freetype-dir=${X11BASE} \
			--with-xpm-dir=${X11BASE}

# gmp
PHP_EXTENSIONS+=	-gmp
COMMENT-gmp=		gmp math library support for php
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
LIB_DEPENDS-gmp=	devel/gmp
WANTLIB-gmp=		gmp>=4 pthread

# intl
PHP_EXTENSIONS+=	-intl
COMMENT-intl=		intl library support for php
CONFIGURE_ARGS+=	--enable-intl=shared \
			--with-icu-dir=${LOCALBASE}
LIB_DEPENDS-intl=	textproc/icu4c
RUN_DEPENDS-intl=	textproc/icu4c,-wwwdata
WANTLIB-intl=		icudata icui18n icuio icuuc pthread
# only needed for php7+, simpler to list it unconditionally
WANTLIB-intl+=		${COMPILER_LIBCXX} m

# imap
PHP_EXTENSIONS+=	-imap
COMMENT-imap=		imap, pop3 and nntp extensions for php
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-imap-ssl
LIB_DEPENDS-imap=	mail/alpine,-c-client
WANTLIB-imap=		pthread crypto ssl c-client>=5

# ldap
PHP_EXTENSIONS+=	-ldap
COMMENT-ldap=		ldap protocol extensions for php
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LIB_DEPENDS-ldap=	databases/openldap
WANTLIB-ldap=		pthread ldap>=2 lber

# mcrypt
PHP_EXTENSIONS+=	-mcrypt
COMMENT-mcrypt=		mcrypt encryption/decryption extensions for php
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
LIB_DEPENDS-mcrypt=	security/libmcrypt devel/libtool,-ltdl
WANTLIB-mcrypt=		mcrypt ltdl>=1 pthread

# mysqli
PHP_EXTENSIONS+=	-mysqli
COMMENT-mysqli=		mysql database access extensions for php
CONFIGURE_ARGS+=	--with-mysqli=shared,${LOCALBASE}/bin/mysql_config
LIB_DEPENDS-mysqli=	databases/mariadb
WANTLIB-mysqli=		crypto m pthread ssl z lib/mysql/mysqlclient

# odbc
PHP_EXTENSIONS+=	-odbc
COMMENT-odbc=		odbc database access extensions for php
CONFIGURE_ARGS+=        --with-iodbc=shared,${LOCALBASE}
LIB_DEPENDS-odbc=	databases/iodbc
WANTLIB-odbc=		iodbc>=2 pthread iodbcinst

# pcntl
PHP_EXTENSIONS+=	-pcntl
COMMENT-pcntl=		PCNTL extensions for php
CONFIGURE_ARGS+=	--enable-pcntl=shared
LIB_DEPENDS-pcntl=
WANTLIB-pcntl=		pthread

# pdo-mysql
PHP_EXTENSIONS+=	-pdo_mysql
COMMENT-pdo_mysql=	PDO mysql database access extensions for php
CONFIGURE_ARGS+=	--with-pdo-mysql=shared,${LOCALBASE}
LIB_DEPENDS-pdo_mysql=	databases/mariadb
WANTLIB-pdo_mysql=	crypto m pthread ssl z lib/mysql/mysqlclient

# pdo-pgsql
PHP_EXTENSIONS+=	-pdo_pgsql
COMMENT-pdo_pgsql=	PDO database access extensions for php
CONFIGURE_ARGS+=        --with-pdo-pgsql=shared,${LOCALBASE}
LIB_DEPENDS-pdo_pgsql=	databases/postgresql
WANTLIB-pdo_pgsql=	pq>=2 pthread

# pgsql
PHP_EXTENSIONS+=	-pgsql
COMMENT-pgsql=		pgsql database access extensions for php
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
LIB_DEPENDS-pgsql=	databases/postgresql
WANTLIB-pgsql=		pq>=2 pthread

# pspell
PHP_EXTENSIONS+=	-pspell
COMMENT-pspell=		pspell library extensions for php
CONFIGURE_ARGS+=	--with-pspell=shared,${LOCALBASE}
LIB_DEPENDS-pspell=	textproc/aspell/core
WANTLIB-pspell=		aspell>=16 pspell>=16 pthread

# shmop
PHP_EXTENSIONS+=	-shmop
COMMENT-shmop=		shared memory extensions for php
CONFIGURE_ARGS+=	--enable-shmop=shared,${LOCALBASE}
LIB_DEPENDS-shmop=
WANTLIB-shmop=		pthread

# soap
PHP_EXTENSIONS+=	-soap
COMMENT-soap=		SOAP functions for php
CONFIGURE_ARGS+=	--enable-soap=shared,${LOCALBASE}
LIB_DEPENDS-soap=	textproc/libxml
WANTLIB-soap=		iconv m pthread z xml2>=8 lzma

# snmp
PHP_EXTENSIONS+=	-snmp
COMMENT-snmp=		snmp protocol extensions for php
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE}
LIB_DEPENDS-snmp=	net/net-snmp
WANTLIB-snmp=		crypto m netsnmp>=6.2 pthread

# pdo-dblib
PHP_EXTENSIONS+=	-pdo_dblib
COMMENT-pdo_dblib=	PDO DB-LIB support for php
CONFIGURE_ARGS+=        --with-pdo-dblib=shared,${LOCALBASE}
LIB_DEPENDS-pdo_dblib=	databases/freetds
WANTLIB-pdo_dblib=	sybdb>=6 pthread

# tidy
PHP_EXTENSIONS+=	-tidy
COMMENT-tidy=		tidy HTML cleaner bindings
CONFIGURE_ARGS+=	--with-tidy=shared,${LOCALBASE}
LIB_DEPENDS-tidy=	www/tidyp
WANTLIB-tidy=		tidyp pthread

# xml-rpc
PHP_EXTENSIONS+=	-xmlrpc
COMMENT-xmlrpc=		XML RPC functions for php
CONFIGURE_ARGS+=	--with-xmlrpc=shared
LIB_DEPENDS-xmlrpc=	textproc/libxml
WANTLIB-xmlrpc=		iconv m z xml2>=8 pthread lzma

# xsl
PHP_EXTENSIONS+=	-xsl
COMMENT-xsl=		XSL functions for php
CONFIGURE_ARGS+=	--with-xsl=shared --enable-dom
LIB_DEPENDS-xsl=	textproc/libxslt
WANTLIB-xsl=		m xml2 xslt>=3 exslt pthread

# zip
PHP_EXTENSIONS+=	-zip
COMMENT-zip=		zip functions for php
CONFIGURE_ARGS+=	--enable-zip=shared,${LOCALBASE}
LIB_DEPENDS-zip=
WANTLIB-zip=		z pthread

# some variables to substitute
SUBST_VARS=	MODPHP_CONFIG_PATH SV PV
PHP_VERSION=	${V}
SV=		${PV:S/.//}

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
PKGNAME-${i}=		php-${i}-${V}
.if ${V:M5.6*}
PKGSPEC-${i}=		php-${i}->=5.6,<5.7
.elif ${V:M7.0*}
PKGSPEC-${i}=		php-${i}->=7.0,<7.1
.endif
RUN_DEPENDS-${i}+=	php-${V}:lang/php/${PV}
.endfor

DESCR-main=		${.CURDIR}/../files/DESCR-main

post-install:
	${SUBST_DATA} ${.CURDIR}/../files/README-main \
		${PREFIX}/share/doc/pkg-readmes/${FULLPKGNAME-main}
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp${PV:C/\.[0-9]$//}.so \
		${PREFIX}/${APACHE_MODULE_SUBDIR}/
	${INSTALL_DATA_DIR} ${WRKINST}/${CHROOT_DIR}/conf/php-${PV}.sample
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/php-${PV}
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cli/php ${PREFIX}/bin/php-${PV}
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/cgi/php-cgi ${PREFIX}/bin/php-cgi-${PV}
# Make sure that php-cgi.1 still just sources php.1 when importing a new major version.
	${INSTALL_MAN} ${WRKSRC}/sapi/cli/php.1 ${PREFIX}/man/man1/php-cgi-${PV}.1
	${INSTALL_PROGRAM} ${WRKBUILD}/sapi/fpm/php-fpm ${PREFIX}/sbin/php-fpm-${PV}
	${INSTALL_MAN} ${WRKBUILD}/sapi/fpm/php-fpm.8 ${PREFIX}/man/man8/php-fpm-${PV}.8
	${INSTALL_DATA} ${WRKBUILD}/sapi/fpm/php-fpm.conf \
		${PREFIX}/share/examples/php-${PV}/php-fpm.conf
.if ${PV} == "7.0"
	cat ${WRKBUILD}/sapi/fpm/www.conf >> \
		${PREFIX}/share/examples/php-${PV}/php-fpm.conf
.endif

	${INSTALL_DATA} ${.CURDIR}/../files/php.conf \
		${PREFIX}/share/examples/php-${PV}/php.conf
	@perl -pi -e "s,!!PREFIX!!,${TRUEPREFIX},g;s,!!PV!!,${PV},g;s,!!MV!!,${PV:R},g" \
		${PREFIX}/share/examples/php-${PV}/php.conf

.for m in ${PHP_EXTENSIONS:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
	echo "extension=${m}.so" > \
		${PREFIX}/share/examples/php-${PV}/${m}.ini
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
