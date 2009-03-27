# $OpenBSD: Makefile,v 1.1.1.1 2009/03/27 10:41:01 jasper Exp $

COMMENT=		OpenID authentication for PHP

DISTNAME=		php-openid-2.1.2
CATEGORIES=		www security

# Apache 2.0 license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://openidenabled.com/php-openid/

MASTER_SITES=		http://openidenabled.com/files/php-openid/packages/
EXTRACT_SUFX=		.tar.bz2

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

# Although this library is not PEAR, installing it into
# ${PREFIX}/pear/lib will make sure it's picked up by PHP
# without the need to adjust the include path in php.ini
PREFIX=                 /var/www
INSTDIR=                ${PREFIX}/pear/lib/
SUBST_VARS=             INSTDIR

PHP_VERSION=	5
RUN_DEPENDS=	::databases/pear-DB \
		:php${PHP_VERSION}-gmp-*:www/php${PHP_VERSION}/extensions,-gmp \
		:php${PHP_VERSION}-curl-*:www/php${PHP_VERSION}/extensions,-curl

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/Auth ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
