# $OpenBSD: Makefile,v 1.11 2000/04/17 19:29:47 jakob Exp $

DISTNAME=	php-3.0.16
PKGNAME=	php3-3.0.16
CATEGORIES=	www lang

MAINTAINER=     jakob@openbsd.org

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

GNU_CONFIGURE=	yes
FAKE=		yes

CONFIGURE_ARGS+=	--with-apxs=/usr/sbin/apxs \
			--without-pcre-regex \
			--with-xml \
			--with-config-file-path=/var/www/conf

BUILD_DEPENDS+=		${PREFIX}/lib/libexpat.a::textproc/expat

FLAVORS=	mysql

FLAVOR?=
.if ${FLAVOR:L} == "mysql"
CONFIGURE_ARGS+=	--with-mysql 
BUILD_DEPENDS+=		${PREFIX}/lib/mysql/libmysqlclient.a::databases/mysql
.else
CONFIGURE_ARGS+=	--without-mysql 
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
