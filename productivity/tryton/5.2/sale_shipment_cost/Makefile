# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:33 sthen Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		sale_shipment_cost
REVISION =		0

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party \
			sale_promotion

.include <bsd.port.mk>
