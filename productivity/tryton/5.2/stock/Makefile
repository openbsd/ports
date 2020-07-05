# $OpenBSD: Makefile,v 1.7 2020/07/05 04:51:45 semarie Exp $

MODPY_EGG_VERSION =	5.2.5
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
