# $OpenBSD: Makefile,v 1.2 2019/01/06 05:38:23 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
