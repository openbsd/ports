# $OpenBSD: Makefile,v 1.3 2019/03/16 06:19:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		carrier_weight

TRYTON_DEPENDS +=	carrier \
			company \
			currency \
			product \
			product_measurements

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
