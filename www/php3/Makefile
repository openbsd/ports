# $OpenBSD: Makefile,v 1.7 2000/03/17 07:51:04 jakob Exp $

DISTNAME=	php-3.0.15
PKGNAME=	php3-3.0.15
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

CONFIGURE_ARGS=		--with-apxs=/usr/sbin/apxs
CONFIGURE_ARGS+=	--without-pcre-regex \
			--with-config-file-path=/var/www/conf

post-install:
	${CHMOD} ${LIBMODE} `apxs -q LIBEXECDIR`/libphp3.so
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/php3.ini-dist /var/www/conf/php3.ini

.include <bsd.port.mk>
