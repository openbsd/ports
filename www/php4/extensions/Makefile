# $OpenBSD: Makefile,v 1.9 2002/07/24 16:14:27 avsm Exp $

PKGNAME=	php4-extensions-${V}
COMMENT=	"informational package about PHP4 extensions"

MULTI_PACKAGES=
SUBPACKAGE?=

FLAVORS+=	no_x11
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
MULTI_PACKAGES+=	-bz2
COMMENT-bz2=		"bzip2 compression extensions for php4"
CONFIGURE_ARGS+=	--with-bz2=shared,${LOCALBASE}
BZ2_DEPENDS=		bz2.10::archivers/bzip2

# curl
MULTI_PACKAGES+=	-curl
COMMENT-curl=		"curl URL library extensions for php4"
CONFIGURE_ARGS+=	--with-curl=shared,${LOCALBASE}
CURL_DEPENDS=		curl.2::net/curl

# dba
MULTI_PACKAGES+=	-dba
COMMENT-dba=		"dba GDBM access extensions for php4"
CONFIGURE_ARGS+=	--enable-dba=shared --with-gdbm=${LOCALBASE}
DBA_DEPENDS=		gdbm.2::databases/gdbm

# dbase
MULTI_PACKAGES+=	-dbase
COMMENT-dbase=		"dBase database access extensions for php4"
CONFIGURE_ARGS+=	--enable-dbase=shared

# filepro
MULTI_PACKAGES+=	-filepro
COMMENT-filepro=	"filepro database access extensions for php4"
CONFIGURE_ARGS+=	--enable-filepro=shared

# gd
MULTI_PACKAGES+=	-gd
COMMENT-gd=		"image manipulation extensions for php4"
GD_DEPENDS=		gd.18::graphics/gd ${GRAPHIC_DEPENDS}
CONFIGURE_ARGS+=	--with-gd=shared,${LOCALBASE} ${GRAPHIC_CONFIG}
.if !${FLAVOR:L:Mno_x11}
USE_X11=		yes
CONFIGURE_ARGS+=	--with-xpm-dir=${X11BASE} --with-ttf=shared,${LOCALBASE} --without-freetype-dir
.else
CONFIGURE_ARGS+=	--without-xpm-dir --without-freetype-dir --without-ttf
.endif

# gmp
MULTI_PACKAGES+=	-gmp
COMMENT-gmp=		"gmp math library support for php4"
CONFIGURE_ARGS+=	--with-gmp=shared,${LOCALBASE}
GMP_DEPENDS=		gmp.4::devel/gmp

# imap
MULTI_PACKAGES+=	-imap
COMMENT-imap=		"imap, pop3 and nntp extensions for php4"
CONFIGURE_ARGS+=	--with-imap=shared,${LOCALBASE} \
			--with-kerberos=/usr/lib --with-imap-ssl
IMAP_DEPENDS=		c-client.3::mail/c-client

# ldap
MULTI_PACKAGES+=	-ldap
COMMENT-ldap=		"ldap protocol extensions for php4"
CONFIGURE_ARGS+=	--with-ldap=shared,${LOCALBASE}
LDAP_DEPENDS=		ldap.2,lber::databases/openldap

# mcrypt
MULTI_PACKAGES+=	-mcrypt
COMMENT-mcrypt=		"mcrypt encryption/decryption extensions for php4"
CONFIGURE_ARGS+=	--with-mcrypt=shared,${LOCALBASE}
MCRYPT_DEPENDS=		mcrypt::security/libmcrypt

# mhash
MULTI_PACKAGES+=	-mhash
COMMENT-mhash=		"mhash extensions for php4"
CONFIGURE_ARGS+=	--with-mhash=shared,${LOCALBASE}
MHASH_DEPENDS=		mhash.2::security/mhash

# mysql
MULTI_PACKAGES+=	-mysql
COMMENT-mysql=		"mysql database access extensions for php4"
CONFIGURE_ARGS+=	--with-mysql=shared,${LOCALBASE}
MYSQL_DEPENDS=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql

# ncurses
MULTI_PACKAGES+=	-ncurses
COMMENT-ncurses=	"ncurses extensions for php4"
CONFIGURE_ARGS+=	--with-ncurses=shared,${LOCALBASE}

# odbc
MULTI_PACKAGES+=	-odbc
COMMENT-odbc=		"odbc database access extensions for php4"
CONFIGURE_ARGS+=        --with-iodbc=shared
ODBC_DEPENDS=		iodbc.2::databases/iodbc

# pdf
MULTI_PACKAGES+=	-pdf
COMMENT-pdf=		"pdf viewing and creation extensions for php4"
CONFIGURE_ARGS+=	--with-pdflib=shared,${LOCALBASE} ${GRAPHIC_CONFIG}
PDF_DEPENDS=		pdf.2::print/pdflib ${GRAPHIC_DEPENDS} 

# pgsql
MULTI_PACKAGES+=	-pgsql
COMMENT-pgsql=		"pgsql database access extensions for php4"
CONFIGURE_ARGS+=	--with-pgsql=shared,${LOCALBASE}
PGSQL_DEPENDS=		pq.2::databases/postgresql

# shmop
MULTI_PACKAGES+=	-shmop
COMMENT-shmop=		"shared memory extensions for php4"
CONFIGURE_ARGS+=	--enable-shmop=shared

# snmp 
MULTI_PACKAGES+=	-snmp
COMMENT-snmp=		"snmp protocol extensions for php4"
CONFIGURE_ARGS+=	--with-snmp=shared,${LOCALBASE} --enable-ucd-snmp-hack
LIB_DEPENDS+=		snmp.42::net/ucd-snmp

# sybase-ct
MULTI_PACKAGES+=	-sybase_ct
COMMENT-sybase_ct=	"sybase database access extensions for php4"
CONFIGURE_ARGS+=        --with-sybase-ct=shared,${LOCALBASE}
SYBASE_CT_DEPENDS=	tds.0,ct.0::databases/freetds

# wddx & xml
MULTI_PACKAGES+=	-xml
COMMENT-xml=		"xml parsing extensions for php4"
CONFIGURE_ARGS+=	--with-wddx=shared --with-xml=shared \
			--with-expat-dir=shared,${LOCALBASE}
XML_DEPENDS=		expat.2::textproc/expat

# xslt
MULTI_PACKAGES+=	-xslt
COMMENT-xslt=		"xslt transformation extensions for php4"
CONFIGURE_ARGS+=	--enable-xslt=shared --with-xslt-sablot=shared=${LOCALBASE} \
			--with-expat-dir=shared,${LOCALBASE}
XSLT_DEPENDS=		sablot.90::textproc/sablotron expat.2::textproc/expat

.for i in ${MULTI_PACKAGES}
FULLPKGNAME${i}=	php4${i}-${V}
PSEUDO_FLAVORS+=	no_${i:L:S/-//g}
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
.for m in gd ${MULTI_PACKAGES:S/-//g}
	${INSTALL_DATA} ${WRKBUILD}/modules/${m}.so \
		${PREFIX}/${MODULES_SUBDIR}/${m}.so
.endfor


.include <bsd.port.mk>
