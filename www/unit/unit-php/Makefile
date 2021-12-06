# $OpenBSD: Makefile,v 1.3 2021/12/06 20:37:21 sthen Exp $

UNIT_MODNAME=	php${MODPHP_VERSION}
UNIT_SHORTNAME=	${FLAVOR}

MODULES=	lang/php

FLAVORS=	php74 php80
FLAVOR?=	php74
MODPHP_VERSION=	${FLAVOR:C/php([0-9])([0-9])/\1.\2/}
MODPHP_BUILDDEP= Yes

RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-embed
BUILD_DEPENDS+=	lang/php/${MODPHP_VERSION},embed,-embed

post-configure:
	cd ${WRKSRC} && ./configure php \
		--config=${MODPHP_PHP_CONFIG} \
		--lib-path=${MODPHP_LIBDIR} \
		--module=php${MODPHP_VERSION}

.include <bsd.port.mk>
