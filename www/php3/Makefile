# $OpenBSD: Makefile,v 1.23 2000/12/14 14:04:09 espie Exp $

DISTNAME=	php-3.0.18
PKGNAME=	php3-3.0.18
CATEGORIES=	www lang
NEED_VERSION=	1.319

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

# This port current only works with archs supporting dynamic loading
ONLY_FOR_ARCHS=	i386 m68k sparc mips

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--with-pcre-regex \
			--with-xml \
			--with-config-file-path=/var/www/conf

LIB_DEPENDS+=		expat.1.::textproc/expat

FLAVORS=	imap mysql postgresql

FLAVOR?=

.if ${FLAVOR:L:Mimap}
CONFIGURE_ARGS+=	--with-imap=${PREFIX}
BUILD_DEPENDS+=		${PREFIX}/lib/libc-client.a::mail/c-client
.else
CONFIGURE_ARGS+=	--without-imap
.endif

.if ${FLAVOR:L:Mmysql}
CONFIGURE_ARGS+=	--with-mysql 
BUILD_DEPENDS+=		${PREFIX}/lib/mysql/libmysqlclient.a::databases/mysql
.else
CONFIGURE_ARGS+=	--without-mysql 
.endif

.if ${FLAVOR:L:Mpostgresql}
CONFIGURE_ARGS+=	--with-pgsql
BUILD_DEPENDS+=		${PREFIX}/pgsql/lib/libpq.a::databases/postgresql
.else
CONFIGURE_ARGS+=	--without-pgsql
.endif

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libphp3.so ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/php3.ini-dist ${PREFIX}/share/doc/php3
	sed 's,y0y0y0,${TRUEPREFIX},' \
		<${FILESDIR}/php3-enable >${PREFIX}/sbin/php3-enable
	chown ${BINOWN}:${BINGRP} ${PREFIX}/sbin/php3-enable
	chmod ${BINMODE} ${PREFIX}/sbin/php3-enable

.include <bsd.port.mk>
