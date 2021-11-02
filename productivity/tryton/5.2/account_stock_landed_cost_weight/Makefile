# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_stock_landed_cost_weight
REVISION =		1

TRYTON_DEPENDS +=	account_stock_landed_cost \
			product \
			product_measurements \
			stock_shipment_measurements

.include <bsd.port.mk>
