# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:06 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		sale_shipment_cost
REVISION =		1

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party \
			sale_promotion

.include <bsd.port.mk>
