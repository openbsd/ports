# $OpenBSD: Makefile,v 1.50 2009/08/26 13:42:30 sthen Exp $

FULLPKGNAME-main=	php5-extensions-${V}p0
COMMENT-main=		informational package about PHP5 extensions

MULTI_PACKAGES=	-main

DISTFILES=		php-${V}.tar.gz

# extensions get installed under the apache chroot
PREFIX?=		${CHROOT_DIR}

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		stdc++ m

MODULES=		devel/gettext

CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-iconv-dir=${LOCALBASE} \
			--with-iconv=${LOCALBASE} \
			--disable-dom \
			--disable-cgi

GRAPHIC_DEPENDS=	jpeg.>=62::graphics/jpeg \
			png.>=3::graphics/png

GRAPHIC_CONFIG=		--with-jpeg-dir=${LOCALBASE} \
			--with-png-dir=${LOCALBASE} \
			--with-zlib-dir=/usr

# bz2
PSEUDO_FLAVORS+=	no_bz2
.if ${FLAVOR:L:Mno_bz2}
CONFIGURE_ARGS+=	--without-bz2
.else
MULTI_PACKAGES+=	-bz2
COMMENT-bz2=		bzip2 compression extensions for php5
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
LIB_DEPENDS-bz2=	bz2.>=10::archivers/bzip2
.endif

# curl
PSEUDO_FLAVORS+=	no_curl
.if ${FLAVOR:L:Mno_curl}
CONFIGURE_ARGS+=	--without-curl
.else
MULTI_PACKAGES+=	-curl
COMMENT-curl=		curl URL library extensions for php5
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
LIB_DEPENDS-curl=	curl.>=2::net/curl
WANTLIB-curl=		${WANTLIB} crypto idn ssl z
.endif

# dba
PSEUDO_FLAVORS+=	no_dba
.if ${FLAVOR:L:Mno_dba}
CONFIGURE_ARGS+=	--disable-dba
.else
MULTI_PACKAGES+=	-dba
COMMENT-dba=		dba GDBM access extensions for php5
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
LIB_DEPENDS-dba=	gdbm.>=2::databases/gdbm
.endif

# dbase
PSEUDO_FLAVORS+=	no_dbase
.if ${FLAVOR:L:Mno_dbase}
CONFIGURE_ARGS+=	--disable-dbase
.else
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		dBase database access extensions for php5
CONFIGURE_ARGS+=	--enable-dbase=shared
LIB_DEPENDS-dbase=
.endif

# gd
PSEUDO_FLAVORS+=	no_gd
.if ${FLAVOR:L:Mno_gd}
CONFIGURE_ARGS+=	--without-gd --without-xpm-dir --without-ttf \
			--without-freetype-dir 
.else
MULTI_PACKAGES+=	-gd
COMMENT-gd=		image manipulation extensions for php5
LIB_DEPENDS-gd=		${GRAPHIC_DEPENDS} t1.>=5::devel/t1lib
WANTLIB-gd=		${WANTLIB} z
CONFIGURE_ENV+=		CPPFLAGS="${LOCALBASE}/include/libpng"
CONFIGURE_ARGS+=	--with-gd=shared ${GRAPHIC_CONFIG} \
			--with-t1lib=${LOCALBASE} \
			--with-freetype-dir=${X11BASE}

. if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-xpm-dir --without-freetype-dir
FULLPKGNAME-gd=		php5-gd-${V}p2-no_x11
. else
USE_X11=		yes
CONFIGURE_ARGS+=	--with-xpm-dir=${X11BASE}
WANTLIB-gd+=		X11 Xpm freetype
. endif
.endif

# gmp
PSEUDO_FLAVORS+=	no_gmp
.if ${FLAVOR:L:Mno_gmp}
CONFIGURE_ARGS+=	--without-gmp
.else
MULTI_PACKAGES+=	-gmp
COMMENT-gmp=		gmp math library support for php5
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
LIB_DEPENDS-gmp=	gmp.>=4::devel/gmp
.endif

# imap
PSEUDO_FLAVORS+=	no_imap
.if ${FLAVOR:L:Mno_imap}
CONFIGURE_ARGS+=	--without-imap --without-kerberos
.else
MULTI_PACKAGES+=	-imap
COMMENT-imap=		imap, pop3 and nntp extensions for php5
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-kerberos=/usr --with-imap-ssl
LIB_DEPENDS-imap=	c-client.>=5::mail/imap-uw,-c-client
WANTLIB-imap=		${WANTLIB} gssapi crypto krb5 ssl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/etc
	${INSTALL_DATA} ${FILESDIR}/master.passwd.imap ${PREFIX}/etc
	pwd_mkdb -d ${PREFIX}/etc master.passwd.imap
.endif

# ldap
PSEUDO_FLAVORS+=	no_ldap
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		ldap protocol extensions for php5
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LIB_DEPENDS-ldap=	ldap.>=2,lber::databases/openldap
.endif

# mbstring
PSEUDO_FLAVORS+=	no_mbstring
.if ${FLAVOR:L:Mno_mbstring}
CONFIGURE_ARGS+=	--disable-mbstring
.else
MULTI_PACKAGES+=	-mbstring
COMMENT-mbstring=	multibyte characters extensions for php5
CONFIGURE_ARGS+=	--enable-mbstring=shared
LIB_DEPENDS-mbstring=
.endif

# mcrypt
PSEUDO_FLAVORS+=	no_mcrypt
.if ${FLAVOR:L:Mno_mcrypt}
CONFIGURE_ARGS+=	--without-mcrypt
.else
MULTI_PACKAGES+=	-mcrypt
COMMENT-mcrypt=		mcrypt encryption/decryption extensions for php5
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
LIB_DEPENDS-mcrypt=	mcrypt::security/libmcrypt ltdl.>=1::devel/libtool,-ltdl
.endif

# mhash
PSEUDO_FLAVORS+=	no_mhash
.if ${FLAVOR:L:Mno_mhash}
CONFIGURE_ARGS+=	--without-mhash
.else
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		mhash extensions for php5
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
LIB_DEPENDS-mhash=	mhash.>=2::security/mhash
.endif

# mysql
PSEUDO_FLAVORS+=	no_mysql
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
COMMENT-mysql=		mysql database access extensions for php5
CONFIGURE_ARGS+=	--with-mysql=shared,${LOCALBASE}
LIB_DEPENDS-mysql=	lib/mysql/mysqlclient.>=10::databases/mysql
.endif

# mysqli
PSEUDO_FLAVORS+=	no_mysqli
.if ${FLAVOR:L:Mno_mysqli}
CONFIGURE_ARGS+=	--without-mysqli
.else
MULTI_PACKAGES+=	-mysqli
COMMENT-mysqli=		mysql database access extensions for php5
CONFIGURE_ARGS+=	--with-mysqli=shared,${LOCALBASE}/bin/mysql_config
LIB_DEPENDS-mysqli=	lib/mysql/mysqlclient.>=10::databases/mysql
WANTLIB-mysqli=		${WANTLIB} crypto ssl z
.endif

# ncurses
PSEUDO_FLAVORS+=	no_ncurses
.if ${FLAVOR:L:Mno_ncurses}
CONFIGURE_ARGS+=	--without-ncurses
.else
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	ncurses extensions for php5
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
LIB_DEPENDS-ncurses=
WANTLIB-ncurses=	${WANTLIB} ncurses panel
.endif

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		odbc database access extensions for php5
CONFIGURE_ARGS+=        --with-iodbc=shared
LIB_DEPENDS-odbc=	iodbc.>=2::databases/iodbc
.endif

# pdo-mysql
PSEUDO_FLAVORS+=	no_pdo_mysql
.if ${FLAVOR:L:Mno_pdo_mysql}
CONFIGURE_ARGS+=	--without-pdo-mysql
.else
MULTI_PACKAGES+=	-pdo_mysql
COMMENT-pdo_mysql=	PDO mysql database access extensions for php5
CONFIGURE_ARGS+=	--with-pdo-mysql=shared,${LOCALBASE}
LIB_DEPENDS-pdo_mysql=	lib/mysql/mysqlclient.>=10::databases/mysql
WANTLIB-pdo_mysql=	${WANTLIB} crypto ssl z
.endif

# pdo-pgsql
PSEUDO_FLAVORS+=	no_pdo_pgsql
.if ${FLAVOR:L:Mno_pdo_pgsql}
CONFIGURE_ARGS+=	--without-pdo-pgsql
.else
MULTI_PACKAGES+=	-pdo_pgsql
COMMENT-pdo_pgsql=	PDO database access extensions for php5
CONFIGURE_ARGS+=        --with-pdo-pgsql=shared,${LOCALBASE}
LIB_DEPENDS-pdo_pgsql=	pq.>=2:postgresql-client-*:databases/postgresql
.endif

# pdo-sqlite
PSEUDO_FLAVORS+=	no_pdo_sqlite
.if ${FLAVOR:L:Mno_pdo_sqlite}
CONFIGURE_ARGS+=	--without-pdo-sqlite
.else
MULTI_PACKAGES+=	-pdo_sqlite
COMMENT-pdo_sqlite=	PDO sqlite database access extensions for php5
CONFIGURE_ARGS+=	--with-pdo-sqlite=shared,${LOCALBASE} --enable-sqlite-utf8
LIB_DEPENDS-pdo_sqlite=	sqlite3.>=8::databases/sqlite3
.endif

# pgsql
PSEUDO_FLAVORS+=	no_pgsql
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		pgsql database access extensions for php5
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
LIB_DEPENDS-pgsql=	pq.>=2:postgresql-client-*:databases/postgresql
.endif

# pspell
PSEUDO_FLAVORS+=	no_pspell
.if ${FLAVOR:L:Mno_pspell}
CONFIGURE_ARGS+=	--without-pspell
.else
MULTI_PACKAGES+=	-pspell
COMMENT-pspell=		pspell library extensions for php5
CONFIGURE_ARGS+=	--with-pspell=shared,${LOCALBASE}
LIB_DEPENDS-pspell=	aspell.>=16.0,pspell.>=16.0::textproc/aspell/core
.endif

# shmop
PSEUDO_FLAVORS+=	no_shmop
.if ${FLAVOR:L:Mno_shmop}
CONFIGURE_ARGS+=	--disable-shmop
.else
MULTI_PACKAGES+=	-shmop
COMMENT-shmop=		shared memory extensions for php5
CONFIGURE_ARGS+=	--enable-shmop=shared
LIB_DEPENDS-shmop=
.endif

# soap
PSEUDO_FLAVORS+=	no_soap
.if ${FLAVOR:L:Mno_soap}
CONFIGURE_ARGS+=	--without-soap
.else
MULTI_PACKAGES+=	-soap
COMMENT-soap=		SOAP functions for php5
CONFIGURE_ARGS+=	--enable-soap=shared
LIB_DEPENDS-soap=
WANTLIB-soap=		${WANTLIB} xml2 z iconv
.endif

# snmp
PSEUDO_FLAVORS+=	no_snmp
.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--without-snmp
.else
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		snmp protocol extensions for php5
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE} --enable-ucd-snmp-hack
LIB_DEPENDS-snmp=	netsnmp.>=6.2::net/net-snmp
.endif

# sqlite
PSEUDO_FLAVORS+=	no_sqlite
.if ${FLAVOR:L:Mno_sqlite}
CONFIGURE_ARGS+=	--without-sqlite
.else
MULTI_PACKAGES+=	-sqlite
COMMENT-sqlite=		sqlite database access extensions for php5
CONFIGURE_ARGS+=	--with-sqlite=shared,${LOCALBASE} --enable-sqlite-utf8
LIB_DEPENDS-sqlite=	sqlite.>=8::databases/sqlite
.endif

# sybase-ct
PSEUDO_FLAVORS+=	no_sybase_ct
.if ${FLAVOR:L:Mno_sybase_ct}
CONFIGURE_ARGS+=	--without-sybase-ct
.else
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	sybase database access extensions for php5
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
LIB_DEPENDS-sybase_ct=	ct::databases/freetds
.endif

# xml-rpc
PSEUDO_FLAVORS+=	no_xmlrpc
.if ${FLAVOR:L:Mno_xmlrpc}
CONFIGURE_ARGS+=	--without-xmlrpc
.else
MULTI_PACKAGES+=	-xmlrpc
COMMENT-xmlrpc=		XML RPC functions for php5
CONFIGURE_ARGS+=	--with-xmlrpc=shared
LIB_DEPENDS-xmlrpc=
WANTLIB-xmlrpc=		${WANTLIB} iconv xml2 z
.endif

# xsl
PSEUDO_FLAVORS+=	no_xsl
.if ${FLAVOR:L:Mno_xsl}
CONFIGURE_ARGS+=	--without-xsl
.else
MULTI_PACKAGES+=	-xsl
COMMENT-xsl=		XSL functions for php5
CONFIGURE_ARGS+=	--with-xsl=shared --enable-dom
LIB_DEPENDS-xsl=	xslt.>=3,exslt::textproc/libxslt
WANTLIB-xsl=		${WANTLIB} iconv xml2 z
.endif

.for i in ${MULTI_PACKAGES}
FULLPKGNAME${i} ?=	php5${i}-${V}p2
RUN_DEPENDS${i}=	:php5-core-${V}:www/php5/core
MODULE_NAME${i}=	${i:S/-//g}
.endfor

MESSAGE=		${PKGDIR}/MESSAGE
UNMESSAGE=		${PKGDIR}/UNMESSAGE

SUBST_VARS=		MODULE_NAME PHP_CONFIG_FILE V

LIB_DEPENDS-main=
MESSAGE-main=		${PKGDIR}/DESCR-main
WANTLIB-main=

BUILD_DEPENDS+=		::textproc/libxml

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODULES_SUBDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/conf/php5.sample
.for m in ${MULTI_PACKAGES:N-main:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
	@echo "extension=${m}.so" > \
		${PREFIX}/conf/php5.sample/${m}.ini
.endfor

.include <bsd.port.mk>
