# $OpenBSD: Makefile,v 1.7 2019/06/12 04:41:57 semarie Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
