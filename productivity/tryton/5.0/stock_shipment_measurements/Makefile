# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		stock_shipment_measurements

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
