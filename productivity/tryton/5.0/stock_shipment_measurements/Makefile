# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:51 sthen Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		stock_shipment_measurements
REVISION =		0

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
