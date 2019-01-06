# $OpenBSD: Makefile,v 1.2 2019/01/06 05:38:23 semarie Exp $

MODPY_EGG_VERSION =	5.0.1
TRYTON_MODULE =		sale_shipment_cost

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party

.include <bsd.port.mk>
