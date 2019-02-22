# $OpenBSD: Makefile,v 1.2 2019/02/22 07:24:36 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		stock_shipment_measurements

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
