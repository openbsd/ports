# $OpenBSD: Makefile,v 1.5 2000/10/04 21:19:13 jakob Exp $

DISTNAME=	php-4.0.2
PKGNAME=	php4-4.0.2
CATEGORIES=	www lang
NEED_VERSION=	1.319

MAINTAINER=     jakob@openbsd.org

HOMEPAGE=	http://www.php.net/

MASTER_SITES=	http://www.php.net/distributions/ \
		http://us.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/

MASTER_SITES0=	http://www.php.net/extra/ \
		http://us.php.net/extra/ \
		http://se.php.net/extra/ \
		http://no.php.net/extra/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} number4.tar.gz:0
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
DIST_SUBDIR=	php4

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# This port current only works with archs supporting dynamic loading
ONLY_FOR_ARCHS=		i386 m68k sparc mips

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-config-file-path=/var/www/conf \
			--enable-calendar \
			--enable-bcmath \
			--enable-trans-sid \
			--enable-versioning \
			--with-yp \
			--with-pcre-regex \
			--with-xml \
			--with-zlib

FLAVORS+=	gdbm gettext ftp imap mhash mm recode snmp gd no_x11 pdflib
FLAVORS+=	dbase filepro mysql mysql_bundled postgresql
FLAVOR?=

.if ${FLAVOR:L:Mgdbm}
CONFIGURE_ARGS+=	--with-gdbm
BUILD_DEPENDS+=		${PREFIX}/lib/libgdbm.a::databases/gdbm
.else
CONFIGURE_ARGS+=	--without-gdbm
.endif

.if ${FLAVOR:L:Mgettext}
CONFIGURE_ARGS+=	--with-gettext
BUILD_DEPENDS+=		${PREFIX}/lib/libintl.a::devel/gettext
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
BUILD_DEPENDS+=		${PREFIX}/lib/libc-client.a::mail/c-client
.else
CONFIGURE_ARGS+=	--without-imap
.endif

.if ${FLAVOR:L:Mmhash}
CONFIGURE_ARGS+=	--with-mhash
BUILD_DEPENDS+=		${PREFIX}/lib/libmhash.a::devel/mhash
.else
CONFIGURE_ARGS+=	--without-mhash
.endif

.if ${FLAVOR:L:Mmm}
CONFIGURE_ARGS+=	--with-mm
BUILD_DEPENDS+=		${PREFIX}/lib/libmm.a::devel/mm
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
BUILD_DEPENDS+=		${PREFIX}/lib/libsnmp.a::net/ucd-snmp
.else
CONFIGURE_ARGS+=	--without-snmp --without-openssl
.endif

.if ${FLAVOR:L:Mgd}
.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--with-gd \
			--with-jpeg-dir=${PREFIX} 
BUILD_DEPENDS+=		${PREFIX}/lib/libgd.a::graphics/gd
.else
USE_X11=		yes
CONFIGURE_ARGS+=	--with-gd \
			--with-jpeg-dir=${PREFIX} \
			--with-xpm-dir=${X11BASE} \
			--with-ttf
BUILD_DEPENDS+=		${PREFIX}/lib/libgd.a::graphics/gd \
			${PREFIX}/lib/libttf.a::print/freetype
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
BUILD_DEPENDS+=		${PREFIX}/lib/mysql/libmysqlclient.a::databases/mysql
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
BUILD_DEPENDS+=		${PREFIX}/pgsql/lib/libpq.a::databases/postgresql
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif


post-extract:
	@(cd ${WRKSRC}; tar xzf ${FULLDISTDIR}/number4.tar.gz)

do-install:
	${INSTALL_DATA} ${WRKBUILD}/.libs/libphp4.so.0.0 \
		${PREFIX}/lib/libphp4.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php4
	${INSTALL_DATA} ${WRKSRC}/php.ini-dist ${PREFIX}/share/doc/php4
	${INSTALL_DATA} ${WRKSRC}/php.ini-optimized ${PREFIX}/share/doc/php4
	sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/php4-enable >${PREFIX}/sbin/php4-enable
	chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/php4-enable
	chmod ${BINMODE} ${PREFIX}/sbin/php4-enable

.include <bsd.port.mk>
