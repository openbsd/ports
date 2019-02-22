# $OpenBSD: Makefile,v 1.3 2019/02/22 07:24:36 semarie Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		sale_shipment_cost

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party

.include <bsd.port.mk>
