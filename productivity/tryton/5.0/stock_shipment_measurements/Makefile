# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:16 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		stock_shipment_measurements

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
