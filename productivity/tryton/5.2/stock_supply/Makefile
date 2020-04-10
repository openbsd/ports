# $OpenBSD: Makefile,v 1.3 2020/04/10 15:22:50 semarie Exp $

MODPY_EGG_VERSION =	5.2.2
TRYTON_MODULE =		stock_supply

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
