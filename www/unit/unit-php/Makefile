# $OpenBSD: Makefile,v 1.1 2021/11/19 10:01:02 sthen Exp $

UNIT_MODNAME=	php${MODPHP_VERSION}
UNIT_SHORTNAME=	${FLAVOR}

MODULES=	lang/php

FLAVORS=	php74 php80
FLAVOR?=	php74
MODPHP_VERSION=	${FLAVOR:C/php([0-9])([0-9])/\1.\2/}

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-embed

post-configure:
	cd ${WRKSRC} && ./configure php \
		--config=${MODPHP_PHP_CONFIG} \
		--lib-path=${MODPHP_LIBDIR} \
		--module=php${MODPHP_VERSION}

.include <bsd.port.mk>
