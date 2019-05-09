# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:49:00 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		stock_shipment_measurements

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
