# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:31 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		carrier_percentage
REVISION =		0

TRYTON_DEPENDS +=	carrier \
			currency

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
