# $OpenBSD: Makefile,v 1.67 2002/06/16 15:47:29 avsm Exp $

MULTI_PACKAGES=	-pear
SUBPACKAGE?=

COMMENT=	"server-side HTML-embedded scripting language"
COMMENT-pear=	"collection of base classes for common PHP tasks"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

V=		4.2.1
DISTNAME=	php-${V}
PKGNAME=	php4-${V}
FULLPKGNAME-pear= php4-pear-${V}

CATEGORIES=	www lang
NEED_VERSION=	1.502

MAINTAINER=     Anil Madhavapeddy <avsm@openbsd.org>

HOMEPAGE=	http://www.php.net/

MASTER_SITES=	http://www.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/ \
		http://uk.php.net/distributions/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-config-file-path=/var/www/conf \
			--enable-calendar \
			--enable-bcmath \
			--enable-trans-sid \
			--with-yp \
			--with-pcre-regex \
			--enable-ftp \
			--with-xml \
			--with-openssl \
			--with-zlib \
			--enable-sysvsem \
			--enable-sysvshm \
			--enable-inline-optimization \
			--enable-sockets \
			--disable-debug

USE_LIBTOOL=	Yes

FLAVORS+=	gdbm gettext imap ldap mhash mm recode snmp
FLAVORS+=	gd no_x11 pdflib mcrypt curl
FLAVORS+=	dbase filepro mysql mysql_bundled postgresql iodbc
# FLAVORS+=	freetds

FLAVOR?= 

.if ${FLAVOR:L:Mcurl}
CONFIGURE_ARGS+=	--with-curl=${LOCALBASE}
LIB_DEPENDS+=		curl.2::net/curl
.else
CONFIGURE_ARGS+=	--without-curl
.endif

.if ${FLAVOR:L:Mgdbm}
CONFIGURE_ARGS+=	--with-gdbm=${LOCALBASE}
LIB_DEPENDS+=		gdbm.2::databases/gdbm
.else
CONFIGURE_ARGS+=	--without-gdbm
.endif

.if ${FLAVOR:L:Mgettext}
CONFIGURE_ARGS+=	--with-gettext=${LOCALBASE}
MODULES=		gettext
.else
CONFIGURE_ARGS+=	--without-gettext
.endif

.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+=	--with-imap=${LOCALBASE} --with-imap-ssl=${LOCALBASE} --with-kerberos
LIB_DEPENDS+=		c-client.3:c-client->=4.40p1:mail/c-client
.else
CONFIGURE_ARGS+=	--without-imap
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--with-ldap=${LOCALBASE}
LIB_DEPENDS+=		ldap.2,lber:openldap-client-2.*:databases/openldap
.else
CONFIGURE_ARGS+=	--without-ldap
.endif

.if ${FLAVOR:L:Mmcrypt}
CONFIGURE_ARGS+=	--with-mcrypt=${LOCALBASE}
LIB_DEPENDS+=		mcrypt::security/libmcrypt
.else
CONFIGURE_ARGS+=	--without-mcrypt
.endif

.if ${FLAVOR:L:Mmhash}
CONFIGURE_ARGS+=	--with-mhash=${LOCALBASE}
LIB_DEPENDS+=		mhash.2::security/mhash
.else
CONFIGURE_ARGS+=	--without-mhash
.endif

.if ${FLAVOR:L:Mmm}
CONFIGURE_ARGS+=	--with-mm=${LOCALBASE}
LIB_DEPENDS+=		mm.11::devel/mm
.else
CONFIGURE_ARGS+=	--without-mm
.endif

.if ${FLAVOR:L:Mrecode}
CONFIGURE_ARGS+=	--with-recode=${LOCALBASE}
LIB_DEPENDS+=		recode::converters/recode
.else
CONFIGURE_ARGS+=	--without-recode
.endif

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=	--with-snmp=${LOCALBASE} --enable-ucd-snmp-hack
LIB_DEPENDS+=		snmp.42::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--without-snmp
.endif

.if ${FLAVOR:L:Mgd}
CFLAGS+=		-I${LOCALBASE}/include
MAKE_FLAGS+=		CFLAGS='${CFLAGS}'
LIB_DEPENDS+=		gd.18::graphics/gd \
			tiff.35::graphics/tiff \
			png.2::graphics/png
CONFIGURE_ARGS+=	--with-gd \
			--with-jpeg-dir=${LOCALBASE} \
			--with-tiff-dir=${LOCALBASE} \
			--with-png-dir=${LOCALBASE} \
			--with-ttf
.if !${FLAVOR:L:Mno_x11}
USE_X11=		yes
CONFIGURE_ARGS+=	--with-xpm-dir=${X11BASE}
.endif
.else
CONFIGURE_ARGS+=	--without-gd
.endif

.if ${FLAVOR:L:Mpdflib}
.if !${FLAVOR:L:Mgd}
ERRORS+= "Fatal: pdflib flavor requires the gd flavor also"
.endif
CONFIGURE_ARGS+=	--with-pdflib=${LOCALBASE}
LIB_DEPENDS+=		pdf.2::print/pdflib
.else
CONFIGURE_ARGS+=	--without-pdflib
.endif

.if ${FLAVOR:L:Mdbase}
CONFIGURE_ARGS+=	--enable-dbase
.else
CONFIGURE_ARGS+=	--disable-dbase
.endif

.if ${FLAVOR:L:Mfilepro}
CONFIGURE_ARGS+=	--enable-filepro
.else
CONFIGURE_ARGS+=	--disable-filepro
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-mysql=${LOCALBASE}
LIB_DEPENDS+=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql
.if ${FLAVOR:L:Mmysql_bundled}
ERRORS+= "Fatal: Conflicting flavor: ${FLAVOR}"
.endif
.elif ${FLAVOR:L:Mmysql_bundled}
CONFIGURE_ARGS+=	--with-mysql
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE}/lib
CFLAGS+=		-I${LOCALBASE}/include/postgresql 
MAKE_FLAGS+=		CFLAGS='${CFLAGS}'
LIB_DEPENDS+=		pq.2::databases/postgresql
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

.if ${FLAVOR:L:Miodbc}
CONFIGURE_ARGS+=        --with-iodbc
LIB_DEPENDS+=		iodbc.2::databases/iodbc
.else
CONFIGURE_ARGS+=        --without-iodbc
.endif        

# .if ${FLAVOR:L:Mfreetds}
# CONFIGURE_ARGS+=        --with-sybase-ct=${LOCALBASE}
# LIB_DEPENDS+=		tds.0,ct.0::databases/freetds
# .else
# CONFIGURE_ARGS+=        --without-sybase-ct
# .endif        

.if ${SUBPACKAGE} == "-pear"
LIB_DEPENDS=
RUN_DEPENDS=
.endif

do-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp4.so \
		${PREFIX}/lib/libphp4.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php4
	${INSTALL_DATA} ${WRKSRC}/php.ini-dist ${PREFIX}/share/doc/php4
	${INSTALL_DATA} ${WRKSRC}/php.ini-recommended ${PREFIX}/share/doc/php4
	@sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/php4-enable >${PREFIX}/sbin/php4-enable
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/php4-enable
	@chmod ${BINMODE} ${PREFIX}/sbin/php4-enable
	cd ${WRKSRC}/pear && env INSTALL_ROOT=${DESTDIR} make install
	cd ${PREFIX}/lib && tar -zxvf ${FILESDIR}/pear-412-421.tgz

.include <bsd.port.mk>
