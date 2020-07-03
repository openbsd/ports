# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:26 sthen Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		carrier_weight
REVISION =		0

TRYTON_DEPENDS +=	carrier \
			company \
			currency \
			product \
			product_measurements

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
