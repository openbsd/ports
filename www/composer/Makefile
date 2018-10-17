# $OpenBSD: Makefile,v 1.7 2018/10/17 14:15:56 sthen Exp $

COMMENT=	dependency manager for PHP

CATEGORIES=	www devel

V=		1.6.3
EPOCH=		0
REVISION=	1
MASTER_SITES=	https://getcomposer.org/download/$V/
DISTNAME=	composer-$V
DISTFILES=	composer-$V{composer}.phar
EXTRACT_SUFX=	.phar
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
