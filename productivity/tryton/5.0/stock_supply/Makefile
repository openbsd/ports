# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		stock_supply

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
