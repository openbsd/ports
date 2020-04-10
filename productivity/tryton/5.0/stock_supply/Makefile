# $OpenBSD: Makefile,v 1.6 2020/04/10 15:21:16 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		stock_supply

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
