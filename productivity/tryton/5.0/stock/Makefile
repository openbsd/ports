# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:18 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
