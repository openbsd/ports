# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:55 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
TRYTON_MODULE =		carrier_percentage

TRYTON_DEPENDS +=	carrier \
			currency

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
