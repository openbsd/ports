# $OpenBSD: Makefile.inc,v 1.101 2018/02/23 18:51:44 martijn Exp $

BROKEN-hppa=	no __sync_bool_compare_and_swap support nor asm fallback

COMMENT-main=		server-side HTML-embedded scripting language
COMMENT-cgi=		cgi sapi for php

PKGNAME-main?=		php-${V}
PKGNAME-cgi?=		php-cgi-${V}

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

# apache module
CONFIGURE_ARGS+=	--with-apxs2=${LOCALBASE}/sbin/apxs2
BUILD_DEPENDS+=		www/apache-httpd

# default included extensions
CONFIGURE_ARGS+= 	--with-openssl \
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
			--enable-exif \
			--enable-cgi \
			--enable-fpm \
			--with-fpm-user=www \
			--with-fpm-group=www

TEST_TARGET=		test
TEST_FLAGS=		NO_INTERACTION=1

MULTI_PACKAGES+=	-main -cgi

#
# Loadable php extensions by name that are included in all versions
#

# bz2
MULTI_PACKAGES+=	-bz2
COMMENT-bz2=		bzip2 compression extensions for php
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
LIB_DEPENDS-bz2=	archivers/bzip2
WANTLIB-bz2=		bz2>=10 pthread

# curl
MULTI_PACKAGES+=	-curl
COMMENT-curl=		curl URL library extensions for php
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
LIB_DEPENDS-curl=	net/curl
WANTLIB-curl=		pthread crypto nghttp2 ssl z curl>=2

# dba
MULTI_PACKAGES+=	-dba
COMMENT-dba=		dba GDBM access extensions for php
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
LIB_DEPENDS-dba=	databases/gdbm
WANTLIB-dba=		gdbm>=2 pthread

# gd
MULTI_PACKAGES+=	-gd
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
MULTI_PACKAGES+=	-gmp
COMMENT-gmp=		gmp math library support for php
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
LIB_DEPENDS-gmp=	devel/gmp
WANTLIB-gmp=		gmp>=4 pthread

# intl
MULTI_PACKAGES+=	-intl
COMMENT-intl=		intl library support for php
CONFIGURE_ARGS+=	--enable-intl=shared \
			--with-icu-dir=${LOCALBASE}
LIB_DEPENDS-intl=	textproc/icu4c
RUN_DEPENDS-intl=	textproc/icu4c,-wwwdata
WANTLIB-intl=		${COMPILER_LIBCXX} icudata icui18n icuio icuuc m pthread

# imap
MULTI_PACKAGES+=	-imap
COMMENT-imap=		imap, pop3 and nntp extensions for php
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-imap-ssl
LIB_DEPENDS-imap=	mail/alpine,-c-client
WANTLIB-imap=		pthread crypto ssl c-client>=5

# ldap
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		ldap protocol extensions for php
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LIB_DEPENDS-ldap=	databases/openldap
WANTLIB-ldap=		pthread ldap>=2 lber

# mcrypt
MULTI_PACKAGES+=	-mcrypt
COMMENT-mcrypt=		mcrypt encryption/decryption extensions for php
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
LIB_DEPENDS-mcrypt=	security/libmcrypt devel/libtool,-ltdl
WANTLIB-mcrypt=		mcrypt ltdl>=1 pthread

# mysqli
MULTI_PACKAGES+=	-mysqli
COMMENT-mysqli=		mysql database access extensions for php
CONFIGURE_ARGS+=	--with-mysqli=shared,${LOCALBASE}/bin/mysql_config
LIB_DEPENDS-mysqli=	databases/mariadb
WANTLIB-mysqli=		crypto m pthread ssl z lib/mysql/mysqlclient

# odbc
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		odbc database access extensions for php
CONFIGURE_ARGS+=        --with-iodbc=shared,${LOCALBASE}
LIB_DEPENDS-odbc=	databases/iodbc
WANTLIB-odbc=		iodbc>=2 pthread iodbcinst

# pcntl
MULTI_PACKAGES+=	-pcntl
COMMENT-pcntl=		PCNTL extensions for php
CONFIGURE_ARGS+=	--enable-pcntl=shared
LIB_DEPENDS-pcntl=
WANTLIB-pcntl=		pthread

# pdo-mysql
MULTI_PACKAGES+=	-pdo_mysql
COMMENT-pdo_mysql=	PDO mysql database access extensions for php
CONFIGURE_ARGS+=	--with-pdo-mysql=shared,${LOCALBASE}
LIB_DEPENDS-pdo_mysql=	databases/mariadb
WANTLIB-pdo_mysql=	crypto m pthread ssl z lib/mysql/mysqlclient

# pdo-pgsql
MULTI_PACKAGES+=	-pdo_pgsql
COMMENT-pdo_pgsql=	PDO database access extensions for php
CONFIGURE_ARGS+=        --with-pdo-pgsql=shared,${LOCALBASE}
LIB_DEPENDS-pdo_pgsql=	databases/postgresql
WANTLIB-pdo_pgsql=	pq>=2 pthread

# pgsql
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		pgsql database access extensions for php
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
LIB_DEPENDS-pgsql=	databases/postgresql
WANTLIB-pgsql=		pq>=2 pthread

# pspell
MULTI_PACKAGES+=	-pspell
COMMENT-pspell=		pspell library extensions for php
CONFIGURE_ARGS+=	--with-pspell=shared,${LOCALBASE}
LIB_DEPENDS-pspell=	textproc/aspell/core
WANTLIB-pspell=		aspell>=16 pspell>=16 pthread

# shmop
MULTI_PACKAGES+=	-shmop
COMMENT-shmop=		shared memory extensions for php
CONFIGURE_ARGS+=	--enable-shmop=shared,${LOCALBASE}
LIB_DEPENDS-shmop=
WANTLIB-shmop=		pthread

# soap
MULTI_PACKAGES+=	-soap
COMMENT-soap=		SOAP functions for php
CONFIGURE_ARGS+=	--enable-soap=shared,${LOCALBASE}
LIB_DEPENDS-soap=	textproc/libxml
WANTLIB-soap=		iconv m pthread z xml2>=8 lzma

# snmp
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		snmp protocol extensions for php
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE}
LIB_DEPENDS-snmp=	net/net-snmp
WANTLIB-snmp=		crypto m netsnmp>=6.2 pthread

# pdo-dblib
MULTI_PACKAGES+=	-pdo_dblib
COMMENT-pdo_dblib=	PDO DB-LIB support for php
CONFIGURE_ARGS+=        --with-pdo-dblib=shared,${LOCALBASE}
LIB_DEPENDS-pdo_dblib=	databases/freetds
WANTLIB-pdo_dblib=	sybdb>=6 pthread

# tidy
MULTI_PACKAGES+=	-tidy
COMMENT-tidy=		tidy HTML cleaner bindings
CONFIGURE_ARGS+=	--with-tidy=shared,${LOCALBASE}
LIB_DEPENDS-tidy=	www/tidyp
WANTLIB-tidy=		tidyp pthread

# xml-rpc
MULTI_PACKAGES+=	-xmlrpc
COMMENT-xmlrpc=		XML RPC functions for php
CONFIGURE_ARGS+=	--with-xmlrpc=shared
LIB_DEPENDS-xmlrpc=	textproc/libxml
WANTLIB-xmlrpc=		iconv m z xml2>=8 pthread lzma

# xsl
MULTI_PACKAGES+=	-xsl
COMMENT-xsl=		XSL functions for php
CONFIGURE_ARGS+=	--with-xsl=shared --enable-dom
LIB_DEPENDS-xsl=	textproc/libxslt
WANTLIB-xsl=		iconv m xml2 z xslt>=3 exslt pthread lzma

# zip
MULTI_PACKAGES+=	-zip
COMMENT-zip=		zip functions for php
CONFIGURE_ARGS+=	--enable-zip=shared,${LOCALBASE}
LIB_DEPENDS-zip=
WANTLIB-zip=		z pthread

# some variables to substitute
SUBST_VARS=	MODPHP_CONFIG_PATH SV PV ^MODULE_NAME
PHP_VERSION=	${V}
SV=		${PV:S/.//}

.for i in TRUEPREFIX MODULES_DIR PHP_VERSION APACHE_MODULE_DIR
PHPXS_SUBST+= -e 's,${i},${${i}},'
.endfor

WANTLIB-main+=		c crypto iconv intl lzma m pthread ssl xml2>=8 z
WANTLIB-main+=		ncurses readline ${COMPILER_LIBCXX}

WANTLIB-cgi=		${WANTLIB-main}
LIB_DEPENDS-main=	devel/gettext \
			textproc/libxml
RUN_DEPENDS-main=	mail/femail,-chroot
LIB_DEPENDS-cgi=	${LIB_DEPENDS-main}
RUN_DEPENDS-cgi=	php-${V}:lang/php/${PV}

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

.for i in ${MULTI_PACKAGES:N-main:N-cgi:S/-//g}
MODULE_NAME-${i}=	${i}
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
DESCR-cgi=		${.CURDIR}/../files/DESCR-cgi

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

.for m in ${MULTI_PACKAGES:N-main:N-cgi:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
	echo "extension=${m}.so" > \
		${PREFIX}/share/examples/php-${PV}/${m}.ini
.endfor
	if [ -f ${WRKBUILD}/modules/opcache.so ]; then \
		${INSTALL_DATA} ${WRKBUILD}/modules/opcache.so \
		    ${PREFIX}/${MODULES_SUBDIR}/opcache.so; \
		echo "zend_extension=opcache.so" > \
		    ${PREFIX}/share/examples/php-${PV}/opcache.ini; fi
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
