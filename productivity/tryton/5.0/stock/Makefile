# $OpenBSD: Makefile,v 1.10 2020/03/12 10:30:57 semarie Exp $

MODPY_EGG_VERSION =	5.0.9
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
