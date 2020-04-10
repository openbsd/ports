# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:50 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		sale_shipment_cost

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party \
			sale_promotion

.include <bsd.port.mk>
