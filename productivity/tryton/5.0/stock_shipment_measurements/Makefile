# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:29 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		stock_shipment_measurements
REVISION =		0

TRYTON_DEPENDS +=	product \
			product_measurements \
			stock

TRYTON_TEST_DEPENDS +=	stock_package

.include <bsd.port.mk>
