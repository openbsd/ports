# $OpenBSD: Makefile,v 1.7 2020/07/03 21:12:28 sthen Exp $

MODPY_EGG_VERSION =	5.0.4
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
