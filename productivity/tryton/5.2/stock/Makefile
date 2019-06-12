# $OpenBSD: Makefile,v 1.2 2019/06/12 04:43:03 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
