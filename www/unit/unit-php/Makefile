# $OpenBSD: Makefile,v 1.5 2022/01/07 10:48:05 sthen Exp $

UNIT_MODNAME=	php${MODPHP_VERSION}
UNIT_SHORTNAME=	${FLAVOR}
REVISION=	0

MODULES=	lang/php

FLAVORS=	php74 php80 php81
FLAVOR?=	php74
MODPHP_VERSION=	${FLAVOR:C/php([0-9])([0-9])/\1.\2/}
MODPHP_BUILDDEP= Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},embed,-embed
BUILD_DEPENDS=	lang/php/${MODPHP_VERSION},embed,-embed

post-configure:
	cd ${WRKSRC} && ./configure php \
		--config=${MODPHP_PHP_CONFIG} \
		--lib-path=${MODPHP_LIBDIR} \
		--module=php${MODPHP_VERSION}

.include <bsd.port.mk>
