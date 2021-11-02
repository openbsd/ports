# $OpenBSD: Makefile,v 1.9 2021/11/02 00:02:00 sthen Exp $

MODPY_EGG_VERSION =	5.0.5
TRYTON_MODULE =		sale_shipment_cost
REVISION =		0

TRYTON_DEPENDS +=	account_invoice \
			carrier \
			currency \
			sale \
			stock

TRYTON_TEST_DEPENDS +=	account \
			party

.include <bsd.port.mk>
