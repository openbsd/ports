# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:03 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		carrier_percentage
REVISION =		1

TRYTON_DEPENDS +=	carrier \
			currency

TRYTON_TEST_DEPENDS +=	purchase_shipment_cost \
			sale_shipment_cost

.include <bsd.port.mk>
