# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:50 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		stock_shipment_measurements

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
