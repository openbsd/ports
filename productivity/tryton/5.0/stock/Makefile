# $OpenBSD: Makefile,v 1.8 2019/12/11 07:19:54 semarie Exp $

MODPY_EGG_VERSION =	5.0.7
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
