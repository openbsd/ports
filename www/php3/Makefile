# $OpenBSD: Makefile,v 1.44 2002/08/07 22:16:54 avsm Exp $

BROKEN=		"unsupported with possible security holes - use php4 instead"

COMMENT=	"server-side HTML-embedded scripting language"

# This port currently only works with archs supporting dynamic loading
# and has Apache that supports DSO's.
ONLY_FOR_ARCHS=	alpha i386 m68k powerpc sparc sparc64

VERSION=	3.0.18
DISTNAME=	php-${VERSION}
PKGNAME=	php3-${VERSION}p2
CATEGORIES=	www lang
NEED_VERSION=	1.500

HOMEPAGE=	http://www.php.net/

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	http://www.php.net/distributions/ \
		http://us.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-pcre-regex \
			--with-xml \
			--with-config-file-path=/var/www/conf

LIB_DEPENDS+=		expat.2::textproc/expat
LIB_DEPENDS+=		gdbm::databases/gdbm

FLAVORS=	imap gd mysql postgresql
FLAVOR?= 

.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+=	--with-imap=${LOCALBASE}
LIB_DEPENDS+=		c-client.3:c-client->=4.40p1:mail/c-client
.else
CONFIGURE_ARGS+=	--without-imap
.endif

.if ${FLAVOR:L:Mgd}
CONFIGURE_ARGS+=	--with-gd  --with-jpegdir=${LOCALBASE}/lib
LIB_DEPENDS+=		gd.18::graphics/gd
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -ljpeg"
.else
CONFIGURE_ARGS+=	--without-gd
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-mysql 
LIB_DEPENDS+=		lib/mysql/mysqlclient.10:mysql-client-3.23.*:databases/mysql
.else
CONFIGURE_ARGS+=	--without-mysql 
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql=${LOCALBASE}
LIB_DEPENDS+=		pq.2::databases/postgresql
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libphp3.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/php3.ini-dist ${PREFIX}/share/doc/php3
	@sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/php3-enable >${PREFIX}/sbin/php3-enable
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/php3-enable
	@chmod ${BINMODE} ${PREFIX}/sbin/php3-enable

.include <bsd.port.mk>
