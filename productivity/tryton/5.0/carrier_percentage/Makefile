# $OpenBSD: Makefile,v 1.4 2020/04/10 15:21:12 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		carrier_percentage

TRYTON_DEPENDS +=	carrier \
			currency

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
