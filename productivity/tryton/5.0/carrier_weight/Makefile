# $OpenBSD: Makefile,v 1.6 2020/04/10 15:21:13 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		carrier_weight

TRYTON_DEPENDS +=	carrier \
			company \
			currency \
			product \
			product_measurements

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
