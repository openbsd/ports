# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:26 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		carrier_percentage
REVISION =		0

TRYTON_DEPENDS +=	carrier \
			currency

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
