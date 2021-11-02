# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:57 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_stock_landed_cost_weight
REVISION =		1

TRYTON_DEPENDS +=	account_stock_landed_cost \
			product \
			product_measurements \
			stock_shipment_measurements

.include <bsd.port.mk>
