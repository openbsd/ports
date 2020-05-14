# $OpenBSD: Makefile,v 1.6 2020/05/14 17:25:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.4
TRYTON_MODULE =		sale_shipment_cost

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party

.include <bsd.port.mk>
