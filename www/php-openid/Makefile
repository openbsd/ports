# $OpenBSD: Makefile,v 1.3 2011/07/08 23:05:31 robert Exp $

COMMENT=		OpenID authentication for PHP

DISTNAME=		php-openid-2.1.2
REVISION=		0
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

MODULES=	lang/php
RUN_DEPENDS=	databases/pear-DB \
		lang/php/${MODPHP_VERSION},-gmp \
		lang/php/${MODPHP_VERSION},-curl

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cp -Rp ${WRKSRC}/Auth ${INSTDIR}
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
