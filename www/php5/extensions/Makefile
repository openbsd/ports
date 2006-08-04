# $OpenBSD: Makefile,v 1.23 2006/08/04 00:10:42 espie Exp $

FULLPKGNAME=		php5-extensions-${V}
COMMENT=		"informational package about PHP5 extensions"

MULTI_PACKAGES=
SUBPACKAGE?=

# extensions get installed under the apache chroot
PREFIX?=		${CHROOT_DIR}

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		stdc++ m

.if ${FLAVOR:L:Mhardened}
RUN_DEPENDS=		:php5-core-${V}-hardened:www/php5/core,hardened
.else
RUN_DEPENDS=		:php5-core-${V}-!hardened:www/php5/core
.endif
.if !defined(PACKAGING)
MODULES=		devel/gettext
.endif

CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-iconv-dir=${LOCALBASE} \
			--with-iconv=${LOCALBASE} \
			--disable-dom

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
COMMENT-bz2=		"bzip2 compression extensions for php5"
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
BZ2_DEPENDS=		bz2.>=10::archivers/bzip2
.endif

# curl
PSEUDO_FLAVORS+=	no_curl
.if ${FLAVOR:L:Mno_curl}
CONFIGURE_ARGS+=	--without-curl
.else
MULTI_PACKAGES+=	-curl
COMMENT-curl=		"curl URL library extensions for php5"
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
CURL_DEPENDS=		curl.>=2::net/curl
CURL_WANTLIB=		crypto ssl z
.endif

# dba
PSEUDO_FLAVORS+=	no_dba
.if ${FLAVOR:L:Mno_dba}
CONFIGURE_ARGS+=	--disable-dba
.else
MULTI_PACKAGES+=	-dba
COMMENT-dba=		"dba GDBM access extensions for php5"
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
DBA_DEPENDS=		gdbm.>=2::databases/gdbm
.endif

# dbase
PSEUDO_FLAVORS+=	no_dbase
.if ${FLAVOR:L:Mno_dbase}
CONFIGURE_ARGS+=	--disable-dbase
.else
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		"dBase database access extensions for php5"
CONFIGURE_ARGS+=	--enable-dbase=shared
.endif

# filepro
PSEUDO_FLAVORS+=	no_filepro
.if ${FLAVOR:L:Mno_filepro}
CONFIGURE_ARGS+=	--disable-filepro
.else
MULTI_PACKAGES+=	-filepro
COMMENT-filepro=	"filepro database access extensions for php5"
CONFIGURE_ARGS+=	--enable-filepro=shared
.endif

# gd
PSEUDO_FLAVORS+=	no_gd
.if ${FLAVOR:L:Mno_gd}
CONFIGURE_ARGS+=	--without-gd --without-xpm-dir --without-ttf \
			--without-freetype-dir 
.else
MULTI_PACKAGES+=	-gd
COMMENT-gd=		"image manipulation extensions for php5"
GD_DEPENDS=		${GRAPHIC_DEPENDS} t1.>=5::devel/t1lib
GD_WANTLIB=		freetype z
CONFIGURE_ENV+=		CPPFLAGS="${LOCALBASE}/include/libpng"
CONFIGURE_ARGS+=	--with-gd=shared ${GRAPHIC_CONFIG} \
			--with-t1lib=${LOCALBASE} \
			--with-freetype-dir=${X11BASE}

. if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-xpm-dir
FULLPKGNAME-gd=		php5-gd-${V}-no_x11
. else
USE_X11=		yes
CONFIGURE_ARGS+=	--with-xpm-dir=${X11BASE}
FULLPKGNAME-gd=		php5-gd-${V}
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-gd"
GD_WANTLIB+=		X11 Xpm
.  endif
. endif
.endif

# gmp
PSEUDO_FLAVORS+=	no_gmp
.if ${FLAVOR:L:Mno_gmp}
CONFIGURE_ARGS+=	--without-gmp
.else
MULTI_PACKAGES+=	-gmp
COMMENT-gmp=		"gmp math library support for php5"
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
GMP_DEPENDS=		gmp.>=4::devel/gmp
.endif

# imap
PSEUDO_FLAVORS+=	no_imap
.if ${FLAVOR:L:Mno_imap}
CONFIGURE_ARGS+=	--without-imap --without-kerberos
.else
MULTI_PACKAGES+=	-imap
COMMENT-imap=		"imap, pop3 and nntp extensions for php5"
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-kerberos=/usr --with-imap-ssl
IMAP_DEPENDS=		c-client.>=3::mail/c-client
IMAP_WANTLIB=		gssapi crypto krb5 ssl
FULLPKGNAME-imap=	php5-imap-${V}
.endif

# ldap
PSEUDO_FLAVORS+=	no_ldap
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		"ldap protocol extensions for php5"
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LDAP_DEPENDS=		ldap.>=2,lber::databases/openldap
.endif

# mbstring
PSEUDO_FLAVORS+=	no_mbstring
.if ${FLAVOR:L:Mno_mbstring}
CONFIGURE_ARGS+=	--disable-mbstring
.else
MULTI_PACKAGES+=	-mbstring
COMMENT-mbstring=	"multibyte characters extensions for php5"
CONFIGURE_ARGS+=	--enable-mbstring=shared
.endif

# mcrypt
PSEUDO_FLAVORS+=	no_mcrypt
.if ${FLAVOR:L:Mno_mcrypt}
CONFIGURE_ARGS+=	--without-mcrypt
.else
MULTI_PACKAGES+=	-mcrypt
COMMENT-mcrypt=		"mcrypt encryption/decryption extensions for php5"
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
MCRYPT_DEPENDS=		mcrypt::security/libmcrypt ltdl.1::devel/libtool,-ltdl
.endif

# mhash
PSEUDO_FLAVORS+=	no_mhash
.if ${FLAVOR:L:Mno_mhash}
CONFIGURE_ARGS+=	--without-mhash
.else
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		"mhash extensions for php5"
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
MHASH_DEPENDS=		mhash.>=2::security/mhash
.endif

# mysql
PSEUDO_FLAVORS+=	no_mysql
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
COMMENT-mysql=		"mysql database access extensions for php5"
CONFIGURE_ARGS+=	--with-mysql=shared,${LOCALBASE}
MYSQL_DEPENDS=		lib/mysql/mysqlclient.>=10::databases/mysql
.endif

# mysqli
PSEUDO_FLAVORS+=	no_mysqli
.if ${FLAVOR:L:Mno_mysqli}
CONFIGURE_ARGS+=	--without-mysqli
.else
MULTI_PACKAGES+=	-mysqli
COMMENT-mysqli=		"mysql database access extensions for php5"
CONFIGURE_ARGS+=	--with-mysqli=shared,${LOCALBASE}/bin/mysql_config
MYSQLI_DEPENDS=		lib/mysql/mysqlclient.>=10::databases/mysql
MYSQLI_WANTLIB=		crypto ssl z
.endif

# ncurses
PSEUDO_FLAVORS+=	no_ncurses
.if ${FLAVOR:L:Mno_ncurses}
CONFIGURE_ARGS+=	--without-ncurses
.else
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	"ncurses extensions for php5"
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
NCURSES_WANTLIB=	ncurses panel
.endif

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		"odbc database access extensions for php5"
CONFIGURE_ARGS+=        --with-iodbc=shared
ODBC_DEPENDS=		iodbc.>=2::databases/iodbc
.endif

# pgsql
PSEUDO_FLAVORS+=	no_pgsql
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		"pgsql database access extensions for php5"
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
PGSQL_DEPENDS=		pq.>=2:postgresql-client-*:databases/postgresql
.endif

# shmop
PSEUDO_FLAVORS+=	no_shmop
.if ${FLAVOR:L:Mno_shmop}
CONFIGURE_ARGS+=	--disable-shmop
.else
MULTI_PACKAGES+=	-shmop
COMMENT-shmop=		"shared memory extensions for php5"
CONFIGURE_ARGS+=	--enable-shmop=shared
.endif

# soap
PSEUDO_FLAVORS+=	no_soap
.if ${FLAVOR:L:Mno_soap}
CONFIGURE_ARGS+=	--without-soap
.else
MULTI_PACKAGES+=	-soap
COMMENT-soap=		"SOAP functions for php5"
CONFIGURE_ARGS+=	--enable-soap=shared
SOAP_WANTLIB=		xml2 z iconv
FULLPKGNAME-soap=	php5-soap-${V}
.endif

# snmp
PSEUDO_FLAVORS+=	no_snmp
.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--without-snmp
.else
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		"snmp protocol extensions for php5"
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE} --enable-ucd-snmp-hack
SNMP_DEPENDS=		netsnmp.>=6.2::net/net-snmp
SNMP_WANTLIB=		crypto
.endif

# sqlite
PSEUDO_FLAVORS+=	no_sqlite
.if ${FLAVOR:L:Mno_sqlite}
CONFIGURE_ARGS+=	--without-sqlite
.else
MULTI_PACKAGES+=	-sqlite
COMMENT-sqlite=		"sqlite database access extensions for php5"
CONFIGURE_ARGS+=	--with-sqlite=shared,${LOCALBASE} --enable-sqlite-utf8
SQLITE_DEPENDS=		sqlite.>=8::databases/sqlite
.endif

# sybase-ct
PSEUDO_FLAVORS+=	no_sybase_ct
.if ${FLAVOR:L:Mno_sybase_ct}
CONFIGURE_ARGS+=	--without-sybase-ct
.else
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	"sybase database access extensions for php5"
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
SYBASE_CT_DEPENDS=	ct::databases/freetds
.endif

# xml-rpc
PSEUDO_FLAVORS+=	no_xmlrpc
.if ${FLAVOR:L:Mno_xmlrpc}
CONFIGURE_ARGS+=	--without-xmlrpc
.else
MULTI_PACKAGES+=	-xmlrpc
COMMENT-xmlrpc=		"XML RPC functions for php5"
CONFIGURE_ARGS+=	--with-xmlrpc=shared
XMLRPC_WANTLIB=		iconv xml2 z
.endif

# xsl
PSEUDO_FLAVORS+=	no_xsl
.if ${FLAVOR:L:Mno_xsl}
CONFIGURE_ARGS+=	--without-xsl
.else
MULTI_PACKAGES+=	-xsl
COMMENT-xsl=		"XSL functions for php5"
CONFIGURE_ARGS+=	--with-xsl=shared --enable-dom
XSL_DEPENDS=		xslt.>=3,exslt::textproc/libxslt
XSL_WANTLIB=		iconv xml2 z
FULLPKGNAME-xsl=	php5-xsl-${V}
.endif

.for i in ${MULTI_PACKAGES}
.  if !defined(FULLPKGNAME${i})
FULLPKGNAME${i}=	php5${i}-${V}
.  endif
.  if ${FLAVOR:L:Mhardened}
FULLPKGNAME${i}:=	${FULLPKGNAME${i}}-hardened
.  endif
.endfor

.if defined(PACKAGING) && !empty(SUBPACKAGE)
MODULE_NAME=		${SUBPACKAGE:S/-//g}
LIB_DEPENDS=		${${MODULE_NAME:U}_DEPENDS}
WANTLIB+=		${${MODULE_NAME:U}_WANTLIB}
MESSAGE=		${PKGDIR}/MESSAGE
SUBST_VARS=		MODULE_NAME PHP_CONFIG_FILE LOCALBASE
.elif defined(PACKAGING) && empty(SUBPACKAGE)
LIB_DEPENDS=
MESSAGE=		${PKGDIR}/DESCR
SUBST_VARS=		V
WANTLIB=
.else
BUILD_DEPENDS+=		xml2.>=8::textproc/libxml
.for i in ${MULTI_PACKAGES}
LIB_DEPENDS+=		${${i:U:S/-//g}_DEPENDS}
WANTLIB+=		${${i:U:S/-//g}_WANTLIB}
.endfor
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODULES_SUBDIR}
.for m in ${MULTI_PACKAGES:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
.endfor


.include <bsd.port.mk>
