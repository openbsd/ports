# $OpenBSD: Makefile,v 1.5 2019/04/22 11:22:50 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
