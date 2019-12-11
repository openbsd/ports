# $OpenBSD: Makefile,v 1.5 2019/12/11 07:19:54 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		stock_supply

TRYTON_DEPENDS +=	account \
			party \
			product \
			purchase \
			purchase_request \
			stock

RUN_DEPENDS +=		databases/py-sql${MODPY_FLAVOR}

.include <bsd.port.mk>
