# $OpenBSD: Makefile,v 1.6 2021/11/02 00:02:00 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		stock_shipment_measurements
REVISION =		1

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
