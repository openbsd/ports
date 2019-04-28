# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:50 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
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
