# $OpenBSD: Makefile,v 1.16 2002/09/14 00:46:02 avsm Exp $

FULLPKGNAME=	php4-extensions-${V}
COMMENT=	"informational package about PHP4 extensions"

MULTI_PACKAGES=
SUBPACKAGE?=

FLAVORS=	no_x11
FLAVOR?= 

RUN_DEPENDS=	:php4-core-${V}:www/php4/core

CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs 

GRAPHIC_DEPENDS=	jpeg.62::graphics/jpeg \
			png.3::graphics/png \
			tiff.35::graphics/tiff

GRAPHIC_CONFIG=		--with-jpeg-dir=shared,${LOCALBASE} \
			--with-png-dir=shared,${LOCALBASE} \
			--with-tiff-dir=shared,${LOCALBASE}

# bz2
PSEUDO_FLAVORS+=	no_bz2
.if ${FLAVOR:L:Mno_bz2}
CONFIGURE_ARGS+=	--without-bz2
.else
MULTI_PACKAGES+=	-bz2
COMMENT-bz2=		"bzip2 compression extensions for php4"
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
BZ2_DEPENDS=		bz2.10::archivers/bzip2
.endif

# curl
PSEUDO_FLAVORS+=	no_curl
.if ${FLAVOR:L:Mno_curl}
CONFIGURE_ARGS+=	--without-curl
.else
MULTI_PACKAGES+=	-curl
COMMENT-curl=		"curl URL library extensions for php4"
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
CURL_DEPENDS=		curl.2::net/curl
.endif

# dba
PSEUDO_FLAVORS+=	no_dba
.if ${FLAVOR:L:Mno_dba}
CONFIGURE_ARGS+=	--disable-dba
.else
MULTI_PACKAGES+=	-dba
COMMENT-dba=		"dba GDBM access extensions for php4"
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
DBA_DEPENDS=		gdbm.2::databases/gdbm
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

# domxml
PSEUDO_FLAVORS+=	no_domxml
.if ${FLAVOR:L:Mno_domxml}
CONFIGURE_ARGS+=	--disable-dom
.else
MULTI_PACKAGES+=	-domxml
COMMENT-domxml=		"manipulate XML via the DOM API in php4"
CONFIGURE_ARGS+=	--with-dom=shared,${LOCALBASE}
DOMXML_DEPENDS=		xml2.6::textproc/libxml
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
GD_DEPENDS=		gd.18::graphics/gd ${GRAPHIC_DEPENDS} \
			ttf.1::print/freetype
CONFIGURE_ARGS+=	--with-gd=shared,${LOCALBASE} ${GRAPHIC_CONFIG} \
			--with-ttf=shared,${LOCALBASE} --without-freetype-dir
.if !${FLAVOR:L:Mno_x11}
USE_X11=		yes
CONFIGURE_ARGS+=	--with-xpm-dir=${X11BASE}
.else
CONFIGURE_ARGS+=	--without-xpm-dir 
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
GMP_DEPENDS=		gmp.4::devel/gmp
.endif

# imap
PSEUDO_FLAVORS+=	no_imap
.if ${FLAVOR:L:Mno_imap}
CONFIGURE_ARGS+=	--without-imap --without-kerberos
.else
MULTI_PACKAGES+=	-imap
COMMENT-imap=		"imap, pop3 and nntp extensions for php4"
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-kerberos=/usr/lib --with-imap-ssl
IMAP_DEPENDS=		c-client.3::mail/c-client
.endif

# ldap
PSEUDO_FLAVORS+=	no_ldap
.if ${FLAVOR:L:Mno_ldap}
CONFIGURE_ARGS+=	--without-ldap
.else
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		"ldap protocol extensions for php4"
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LDAP_DEPENDS=		ldap.2,lber::databases/openldap
.endif

# mcrypt
PSEUDO_FLAVORS+=	no_mcrypt
.if ${FLAVOR:L:Mno_mcrypt}
CONFIGURE_ARGS+=	--without-mcrypt
.else
MULTI_PACKAGES+=	-mcrypt
COMMENT-mcrypt=		"mcrypt encryption/decryption extensions for php4"
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
MCRYPT_DEPENDS=		mcrypt::security/libmcrypt ltdl.1::devel/libtool
.endif

# mhash
PSEUDO_FLAVORS+=	no_mhash
.if ${FLAVOR:L:Mno_mhash}
CONFIGURE_ARGS+=	--without-mhash
.else
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		"mhash extensions for php4"
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
MHASH_DEPENDS=		mhash.2::security/mhash
.endif

# mysql
PSEUDO_FLAVORS+=	no_mysql
.if ${FLAVOR:L:Mno_mysql}
CONFIGURE_ARGS+=	--without-mysql
.else
MULTI_PACKAGES+=	-mysql
COMMENT-mysql=		"mysql database access extensions for php4"
CONFIGURE_ARGS+=	--with-mysql=shared,${LOCALBASE}
MYSQL_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql
.endif

# ncurses
PSEUDO_FLAVORS+=	no_ncurses
.if ${FLAVOR:L:Mno_ncurses}
CONFIGURE_ARGS+=	--without-ncurses
.else
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	"ncurses extensions for php4"
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}
.endif

# odbc
PSEUDO_FLAVORS+=	no_odbc
.if ${FLAVOR:L:Mno_odbc}
CONFIGURE_ARGS+=	--without-odbc
.else
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		"odbc database access extensions for php4"
CONFIGURE_ARGS+=        --with-iodbc=shared
ODBC_DEPENDS=		iodbc.2::databases/iodbc
.endif

# pdf
PSEUDO_FLAVORS+=	no_pdf
.if ${FLAVOR:L:Mno_pdf}
CONFIGURE_ARGS+=	--without-pdflib
.else
MULTI_PACKAGES+=	-pdf
COMMENT-pdf=		"pdf viewing and creation extensions for php4"
CONFIGURE_ARGS+=	--with-pdflib=shared,${LOCALBASE} ${GRAPHIC_CONFIG}
PDF_DEPENDS=		pdf.2::print/pdflib ${GRAPHIC_DEPENDS} 
.endif

# pgsql
PSEUDO_FLAVORS+=	no_pgsql
.if ${FLAVOR:L:Mno_pgsql}
CONFIGURE_ARGS+=	--without-pgsql
.else
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		"pgsql database access extensions for php4"
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
PGSQL_DEPENDS=		pq.2::databases/postgresql
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
SNMP_DEPENDS=		snmp.42::net/ucd-snmp
.endif

# pspell
#PSEUDO_FLAVORS+=	no_pspell
#.if ${FLAVOR:L:Mno_pspell}
#CONFIGURE_ARGS+=	--without-pspell
#.else
#MULTI_PACKAGES+=	-pspell
#COMMENT-pspell=		"spell checking extensions for php4"
#CONFIGURE_ARGS+=	--with-pspell=shared,${LOCALBASE}
#LIB_DEPENDS+=		pspell-modules::textproc/pspell \
#			aspell.11::textproc/aspell
#.endif

# sybase-ct
PSEUDO_FLAVORS+=	no_sybase_ct
.if ${FLAVOR:L:Mno_sybase_ct}
CONFIGURE_ARGS+=	--without-sybase-ct
.else
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	"sybase database access extensions for php4"
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
SYBASE_CT_DEPENDS=	tds.0,ct.0::databases/freetds
.endif

# wddx & xml
PSEUDO_FLAVORS+=	no_xml
.if ${FLAVOR:L:Mno_xml}
CONFIGURE_ARGS+=	--without-wddx --without-xml
.else
MULTI_PACKAGES+=	-xml
COMMENT-xml=		"xml parsing extensions for php4"
CONFIGURE_ARGS+=	--with-wddx=shared --with-xml=shared \
			--with-expat-dir=shared,${LOCALBASE}
XML_DEPENDS=		expat.2::textproc/expat
.endif

# xslt
PSEUDO_FLAVORS+=	no_xslt
.if ${FLAVOR:L:Mno_xslt}
CONFIGURE_ARGS+=	--disable-xslt
.else
MULTI_PACKAGES+=	-xslt
COMMENT-xslt=		"xslt transformation extensions for php4"
CONFIGURE_ARGS+=	--enable-xslt=shared --with-xslt-sablot=shared=${LOCALBASE} \
			--with-expat-dir=shared,${LOCALBASE}
XSLT_DEPENDS=		sablot.96::textproc/sablotron expat.2::textproc/expat
.endif

.for i in ${MULTI_PACKAGES}
FULLPKGNAME${i}=	php4${i}-${V}
.endfor

.if defined(PACKAGING) && !empty(SUBPACKAGE)
MODULE_NAME=		${SUBPACKAGE:S/-//g}
LIB_DEPENDS=		${${MODULE_NAME:U}_DEPENDS}
MESSAGE=		${PKGDIR}/MESSAGE
SUBST_VARS=		MODULE_NAME PHP_CONFIG_FILE
.elif defined(PACKAGING) && empty(SUBPACKAGE)
LIB_DEPENDS=
MESSAGE=		${PKGDIR}/DESCR
SUBST_VARS=		V
.else
.for i in ${MULTI_PACKAGES}
LIB_DEPENDS+=		${${i:U:S/-//g}_DEPENDS}
.endfor
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${MODULES_SUBDIR}
.for m in ${MULTI_PACKAGES:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
.endfor


.include <bsd.port.mk>
