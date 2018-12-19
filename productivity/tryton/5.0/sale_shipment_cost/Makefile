# $OpenBSD: Makefile,v 1.1.1.1 2018/12/19 08:27:19 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
TRYTON_MODULE =		sale_shipment_cost

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party

.include <bsd.port.mk>
