# $OpenBSD: Makefile,v 1.3 2019/12/11 07:20:53 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		stock

TRYTON_DEPENDS +=	company \
			currency \
			party \
			product

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
