# $OpenBSD: Makefile,v 1.5 2019/09/15 16:37:25 semarie Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		carrier_weight

TRYTON_DEPENDS +=	carrier \
			company \
			currency \
			product \
			product_measurements

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
