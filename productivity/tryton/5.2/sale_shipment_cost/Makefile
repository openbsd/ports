# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:48:59 semarie Exp $

MODPY_EGG_VERSION =	5.2.0
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
