# $OpenBSD: Makefile,v 1.8 2021/04/05 15:58:15 semarie Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		sale_shipment_cost

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party

.include <bsd.port.mk>
