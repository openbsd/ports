# $OpenBSD: Makefile,v 1.4 2000/02/16 10:52:14 espie Exp $

DISTNAME=	php-3.0.14
PKGNAME=	php3-3.0.14
CATEGORIES=	www lang

MAINTAINER=     jakob@openbsd.org

MASTER_SITES=	http://www.php.net/distributions/ \
		http://us.php.net/distributions/ \
		http://se.php.net/distributions/ \
		http://no.php.net/distributions/

# This port current only works with archs supporting dynamic loading
ONLY_FOR_ARCHS=	i386 m68k sparc mips

GNU_CONFIGURE=	yes

CONFIGURE_ARGS=		--with-apxs=/usr/sbin/apxs
CONFIGURE_ARGS+=	--without-pcre-regex \
			--with-config-file-path=/var/www/conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/php3
	${INSTALL_DATA} ${WRKSRC}/doc/* ${PREFIX}/share/doc/php3
	cp ${WRKSRC}/php3.ini-dist /var/www/conf/php3.ini

.include <bsd.port.mk>
