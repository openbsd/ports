# $OpenBSD: Makefile,v 1.6 2021/11/02 00:01:57 sthen Exp $

MODPY_EGG_VERSION =	5.0.2
TRYTON_MODULE =		account_stock_continental
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_product \
			stock

TRYTON_TEST_DEPENDS +=	sale \
			purchase \
			account_invoice \
			sale_supply_drop_shipment

.include <bsd.port.mk>
