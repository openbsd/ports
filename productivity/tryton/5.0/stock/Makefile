# $OpenBSD: Makefile,v 1.9 2020/03/02 07:23:33 semarie Exp $

MODPY_EGG_VERSION =	5.0.8
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
