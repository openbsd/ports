# $OpenBSD: Makefile,v 1.19 2001/01/04 00:51:23 brad Exp $

# This port current only works with archs supporting dynamic loading
ONLY_FOR_ARCHS=	i386 m68k sparc

DISTNAME=	php-4.0.4
PKGNAME=	php4-4.0.4
CATEGORIES=	www lang
NEED_VERSION=	1.346

MAINTAINER=     Anil Madhavapeddy <avsm@openbsd.org>, Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.php.net/

MASTER_SITES=	http://www.php.net/distributions/ \
		http://us.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/ \
		http://uk.php.net/distributions/ 

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-config-file-path=/var/www/conf \
			--enable-calendar \
			--enable-bcmath \
			--enable-trans-sid \
			--with-yp \
			--with-pcre-regex \
			--with-xml \
			--with-zlib

FLAVORS+=	gdbm gettext ftp imap ldap mhash mm recode snmp
FLAVORS+=	gd no_x11 pdflib mcrypt
FLAVORS+=	dbase filepro mysql mysql_bundled postgresql iodbc
FLAVOR?= 

.if ${FLAVOR:L:Mgdbm}
CONFIGURE_ARGS+=	--with-gdbm
LIB_DEPENDS+=		gdbm.2::databases/gdbm
.else
CONFIGURE_ARGS+=	--without-gdbm
.endif

.if ${FLAVOR:L:Mgettext}
CONFIGURE_ARGS+=	--with-gettext
LIB_DEPENDS+=		intl.1::devel/gettext
.else
CONFIGURE_ARGS+=	--without-gettext
.endif

.if ${FLAVOR:L:Mftp}
CONFIGURE_ARGS+=	--enable-ftp
.else
CONFIGURE_ARGS+=	--disable-ftp
.endif

.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+=	--with-imap=${PREFIX}
LIB_DEPENDS+=		c-client.2::mail/c-client
.else
CONFIGURE_ARGS+=	--without-imap
.endif

.if ${FLAVOR:L:Mldap}
CONFIGURE_ARGS+=	--with-ldap=${PREFIX}
LIB_DEPENDS+=		ldap.2::databases/openldap
.else
CONFIGURE_ARGS+=	--without-ldap
.endif

.if ${FLAVOR:L:Mmcrypt}
CONFIGURE_ARGS+=	--with-mcrypt
LIB_DEPENDS+=		mcrypt.4::security/libmcrypt
.else
CONFIGURE_ARGS+=	--without-mcrypt
.endif

.if ${FLAVOR:L:Mmhash}
CONFIGURE_ARGS+=	--with-mhash
LIB_DEPENDS+=		mhash.2::security/mhash
.else
CONFIGURE_ARGS+=	--without-mhash
.endif

.if ${FLAVOR:L:Mmm}
CONFIGURE_ARGS+=	--with-mm
LIB_DEPENDS+=		mm.11::devel/mm
.else
CONFIGURE_ARGS+=	--without-mm
.endif

.if ${FLAVOR:L:Mrecode}
CONFIGURE_ARGS+=	--with-recode
BUILD_DEPENDS+=		${PREFIX}/lib/librecode.a::converters/recode
.else
CONFIGURE_ARGS+=	--without-recode
.endif

.if ${FLAVOR:L:Msnmp}
CONFIGURE_ARGS+=	--with-snmp --enable-ucd-snmp-hack --with-openssl
LIB_DEPENDS+=		snmp.41::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--without-snmp --without-openssl
.endif

.if ${FLAVOR:L:Mgd}
MAKE_FLAGS+=		CFLAGS='${CFLAGS} -I${LOCALBASE}/include'
LIB_DEPENDS+=		gd.18::graphics/gd
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--with-gd \
			--with-jpeg-dir=${PREFIX} \
			--with-ttf
.else
USE_X11=		yes
CONFIGURE_ARGS+=	--with-gd \
			--with-jpeg-dir=${PREFIX} \
			--with-xpm-dir=${X11BASE} \
			--with-ttf
.endif
.else
CONFIGURE_ARGS+=	--without-gd
.endif

.if ${FLAVOR:L:Mpdflib}
CONFIGURE_ARGS+=	--with-pdflib=${PREFIX}
BUILD_DEPENDS+=		${PREFIX}/lib/libpdf.a::print/pdflib
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
CONFIGURE_ARGS+=	--with-mysql=${PREFIX}
LIB_DEPENDS+=		mysqlclient.6::databases/mysql
.if ${FLAVOR:L:Mmysql_bundled}
.BEGIN:
	@echo "Conflicting flavor: ${FLAVOR}"
	@exit 1
.endif
.elif ${FLAVOR:L:Mmysql_bundled}
CONFIGURE_ARGS+=	--with-mysql
.else
CONFIGURE_ARGS+=	--without-mysql
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql=${PREFIX}/pgsql
LIB_DEPENDS+=		pq.2::databases/postgresql
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

.if ${FLAVOR:L:Miodbc}
CONFIGURE_ARGS+=        --with-iodbc
BUILD_DEPENDS+=         ${PREFIX}/lib/libiodbc.a::databases/iodbc
.else
CONFIGURE_ARGS+=        --without-iodbc
.endif        

do-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp4.so.0.0 \
		${PREFIX}/lib/libphp4.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php4
	${INSTALL_DATA} ${WRKSRC}/php.ini-dist ${PREFIX}/share/doc/php4
	${INSTALL_DATA} ${WRKSRC}/php.ini-optimized ${PREFIX}/share/doc/php4
	@sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/php4-enable >${PREFIX}/sbin/php4-enable
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/php4-enable
	@chmod ${BINMODE} ${PREFIX}/sbin/php4-enable

.include <bsd.port.mk>
