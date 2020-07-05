# $OpenBSD: Makefile,v 1.8 2020/07/05 04:51:44 semarie Exp $

MODPY_EGG_VERSION =	5.0.6
TRYTON_MODULE =		stock_supply

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
