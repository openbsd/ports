# $OpenBSD: Makefile,v 1.4 2020/03/02 07:24:36 semarie Exp $

MODPY_EGG_VERSION =	5.2.3
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
