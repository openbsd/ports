# $OpenBSD: Makefile,v 1.3 2019/04/03 06:27:29 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		stock_supply

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
