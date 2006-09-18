# $OpenBSD: Makefile,v 1.50 2006/09/18 09:04:03 espie Exp $

FULLPKGNAME=	php4-extensions-${V}p0
COMMENT=	"informational package about PHP4 extensions"

MULTI_PACKAGES=
SUBPACKAGE?=

# extensions get installed under the apache chroot
PREFIX?=	${CHROOT_DIR}

FLAVORS=	no_x11
FLAVOR?=

WANTLIB=	stdc++ m

RUN_DEPENDS=	:php4-core-${V}:www/php4/core
.if !defined(PACKAGING)
MODULES=	devel/gettext
.endif

CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-iconv-dir=${LOCALBASE} \
			--with-iconv=${LOCALBASE}

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
COMMENT-bz2=		"bzip2 compression extensions for php4"
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
BZ2_DEPENDS=		bz2.>=10::archivers/bzip2
.endif

# curl
PSEUDO_FLAVORS+=	no_curl
.if ${FLAVOR:L:Mno_curl}
CONFIGURE_ARGS+=	--without-curl
.else
MULTI_PACKAGES+=	-curl
COMMENT-curl=		"curl URL library extensions for php4"
FULLPKGNAME-curl=	php4-curl-${V}p0
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
COMMENT-dba=		"dba GDBM access extensions for php4"
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
DBA_DEPENDS=		gdbm.>=2::databases/gdbm
.endif

# dbase
PSEUDO_FLAVORS+=	no_dbase
.if ${FLAVOR:L:Mno_dbase}
CONFIGURE_ARGS+=	--disable-dbase
.else
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		"dBase database access extensions for php4"
CONFIGURE_ARGS+=	--enable-dbase=shared
.endif

# dbx
PSEUDO_FLAVORS+=	no_dbx
.if ${FLAVOR:L:Mno_dbx}
CONFIGURE_ARGS+=	--disable-dbx
.else
MULTI_PACKAGES+=	-dbx
COMMENT-dbx=		"dbx database abstraction interface for php4"
CONFIGURE_ARGS+=	--enable-dbx=shared
.endif

# domxml
PSEUDO_FLAVORS+=	no_domxml
.if ${FLAVOR:L:Mno_domxml}
CONFIGURE_ARGS+=	--disable-dom
.else
MULTI_PACKAGES+=	-domxml
COMMENT-domxml=		"manipulate XML via the DOM API in php4"
CONFIGURE_ARGS+=	--with-dom=shared,${LOCALBASE}
DOMXML_DEPENDS=		xml2.>=6::textproc/libxml
DOMXML_WANTLIB=		z iconv
.endif

# filepro
PSEUDO_FLAVORS+=	no_filepro
.if ${FLAVOR:L:Mno_filepro}
CONFIGURE_ARGS+=	--disable-filepro
.else
MULTI_PACKAGES+=	-filepro
COMMENT-filepro=	"filepro database access extensions for php4"
CONFIGURE_ARGS+=	--enable-filepro=shared
.endif

# gd
PSEUDO_FLAVORS+=	no_gd
.if ${FLAVOR:L:Mno_gd}
CONFIGURE_ARGS+=	--without-gd --without-xpm-dir --without-ttf \
			--without-freetype-dir
.else
MULTI_PACKAGES+=	-gd
COMMENT-gd=		"image manipulation extensions for php4"
GD_DEPENDS=		ttf.>=1::print/freetype ${GRAPHIC_DEPENDS} \
			t1.>=5::devel/t1lib
GD_WANTLIB=		z
CONFIGURE_ARGS+=	--with-gd=shared ${GRAPHIC_CONFIG} \
			--with-ttf=shared,${LOCALBASE} --without-freetype-dir \
			--with-t1lib=${LOCALBASE}
.if !${FLAVOR:L:Mno_x11}
USE_X11=               yes
CONFIGURE_ARGS+=       --with-xpm-dir=${X11BASE}
.  if !defined(PACKAGING) || ${SUBPACKAGE} == "-gd"
WANTLIB+=		X11 Xpm
.  endif
FULLPKGNAME-gd=		php4-gd-${V}p4
.else
CONFIGURE_ARGS+=       --without-xpm-dir
FULLPKGNAME-gd=		php4-gd-${V}p4-no_x11
.endif
.endif

# gmp
PSEUDO_FLAVORS+=	no_gmp
.if ${FLAVOR:L:Mno_gmp}
CONFIGURE_ARGS+=	--without-gmp
.else
MULTI_PACKAGES+=	-gmp
COMMENT-gmp=		"gmp math library support for php4"
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
GMP_DEPENDS=		gmp.>=4::devel/gmp
.endif

# imap
PSEUDO_FLAVORS+=	no_imap
.if ${FLAVOR:L:Mno_imap}
CONFIGURE_ARGS+=	--without-imap --without-kerberos
.else
MULTI_PACKAGES+=	-imap
COMMENT-imap=		"imap, pop3 and nntp extensions for php4"
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-kerberos=/usr --with-imap-ssl
IMAP_DEPENDS=		c-client.>=3::mail/c-client
IMAP_WANTLIB=		des gssapi crypto krb5 ssl
.endif

# ldap
PSEUDO_FLAVORS+=	no_ldap
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		"ldap protocol extensions for php4"
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LDAP_DEPENDS=		ldap.>=2,lber::databases/openldap
.endif

# mcrypt
PSEUDO_FLAVORS+=	no_mcrypt
.if ${FLAVOR:L:Mno_mcrypt}
CONFIGURE_ARGS+=	--without-mcrypt
.else
MULTI_PACKAGES+=	-mcrypt
COMMENT-mcrypt=		"mcrypt encryption/decryption extensions for php4"
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
MCRYPT_DEPENDS=		mcrypt::security/libmcrypt ltdl.>=1::devel/libtool,-ltdl
.endif

# mhash
PSEUDO_FLAVORS+=	no_mhash
.if ${FLAVOR:L:Mno_mhash}
CONFIGURE_ARGS+=	--without-mhash
.else
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		"mhash extensions for php4"
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
MHASH_DEPENDS=		mhash.>=2::security/mhash
.endif

# mysql
PSEUDO_FLAVORS+=	no_mysql
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
COMMENT-mysql=		"mysql database access extensions for php4"
CONFIGURE_ARGS+=	--with-mysql=shared,${LOCALBASE}
MYSQL_DEPENDS=		lib/mysql/mysqlclient.>=10::databases/mysql
.endif

# ncurses
PSEUDO_FLAVORS+=	no_ncurses
.if ${FLAVOR:L:Mno_ncurses}
CONFIGURE_ARGS+=	--without-ncurses
.else
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	"ncurses extensions for php4"
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
NCURSES_WANTLIB+=	ncurses panel
.endif

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		"odbc database access extensions for php4"
CONFIGURE_ARGS+=        --with-iodbc=shared
ODBC_DEPENDS=		iodbc.>=2::databases/iodbc
.endif

# pdf
PSEUDO_FLAVORS+=	no_pdf
.if ${FLAVOR:L:Mno_pdf}
CONFIGURE_ARGS+=	--without-pdflib
.else
MULTI_PACKAGES+=	-pdf
COMMENT-pdf=		"pdf viewing and creation extensions for php4"
CONFIGURE_ARGS+=	--with-pdflib=shared,${LOCALBASE} ${GRAPHIC_CONFIG} \
			--with-tiff-dir=${LOCALBASE}
PDF_DEPENDS=		pdf.>=2::print/pdflib ${GRAPHIC_DEPENDS} \
			tiff.>=35::graphics/tiff
PDF_WANTLIB=		z
.endif

# pgsql
PSEUDO_FLAVORS+=	no_pgsql
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		"pgsql database access extensions for php4"
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
PGSQL_DEPENDS=		pq.>=2:postgresql-client-*:databases/postgresql
.endif

# shmop
PSEUDO_FLAVORS+=	no_shmop
.if ${FLAVOR:L:Mno_shmop}
CONFIGURE_ARGS+=	--disable-shmop
.else
MULTI_PACKAGES+=	-shmop
COMMENT-shmop=		"shared memory extensions for php4"
CONFIGURE_ARGS+=	--enable-shmop=shared
.endif

# snmp
PSEUDO_FLAVORS+=	no_snmp
.if ${FLAVOR:L:Mno_snmp}
CONFIGURE_ARGS+=	--without-snmp
.else
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		"snmp protocol extensions for php4"
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE} --enable-ucd-snmp-hack
SNMP_DEPENDS=		netsnmp.>=6.2::net/net-snmp
SNMP_WANTLIB=		crypto
.endif

# sybase-ct
PSEUDO_FLAVORS+=	no_sybase_ct
.if ${FLAVOR:L:Mno_sybase_ct}
CONFIGURE_ARGS+=	--without-sybase-ct
.else
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	"sybase database access extensions for php4"
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
SYBASE_CT_DEPENDS=	ct::databases/freetds
.endif

# xml-rpc
PSEUDO_FLAVORS+=	no_xmlrpc
.if ${FLAVOR:L:Mno_xmlrpc}
CONFIGURE_ARGS+=	--without-xmlrpc
.else
MULTI_PACKAGES+=	-xmlrpc
COMMENT-xmlrpc=		"XML RPC functions for php4"
CONFIGURE_ARGS+=	--with-xmlrpc=shared
XMLRPC_DEPENDS=		expat.>=2::textproc/expat
XMLRPC_WANTLIB=		iconv
.endif

# xslt
PSEUDO_FLAVORS+=	no_xslt
.if ${FLAVOR:L:Mno_xslt}
CONFIGURE_ARGS+=	--disable-xslt
.else
MULTI_PACKAGES+=	-xslt
COMMENT-xslt=		"xslt transformation extensions for php4"
CONFIGURE_ARGS+=	--enable-xslt=shared --with-xslt-sablot=shared,${LOCALBASE} \
			--with-expat-dir=${LOCALBASE}
XSLT_DEPENDS=		sablot.>=96::textproc/sablotron expat.>=2::textproc/expat
XSLT_WANTLIB=		iconv
.endif

.for i in ${MULTI_PACKAGES}
.if !defined(FULLPKGNAME${i})
FULLPKGNAME${i}=	php4${i}-${V}p0
.endif
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
