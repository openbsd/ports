# $OpenBSD: Makefile,v 1.1.1.1 2016/02/29 23:52:12 sthen Exp $

COMMENT=	dependency manager for PHP

CATEGORIES=	www devel

V=		1.0.0-alpha11
MASTER_SITES=	https://getcomposer.org/download/$V/
DISTNAME=	composer-${V:S/-alpha/alpha/}
DISTFILES=	composer-$V{composer}.phar
EXTRACT_ONLY=

HOMEPAGE=	https://getcomposer.org/

MODULES=	lang/php

PERMIT_PACKAGE_CDROM= Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

SUBST_VARS=	MODPHP_BIN

do-extract:
	mkdir ${WRKSRC}; \
	  cp ${FULLDISTDIR}/composer-$V.phar ${WRKSRC}/composer.phar

do-install:
	${INSTALL_DATA} ${WRKSRC}/composer.phar ${PREFIX}/libexec/
	${SUBST_CMD} -m 555 -c ${FILESDIR}/composer ${PREFIX}/bin/composer

.include <bsd.port.mk>
