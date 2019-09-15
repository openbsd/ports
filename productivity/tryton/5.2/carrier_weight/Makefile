# $OpenBSD: Makefile,v 1.2 2019/09/15 16:42:38 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		carrier_weight

TRYTON_DEPENDS +=	carrier \
			company \
			currency \
			product \
			product_measurements

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
