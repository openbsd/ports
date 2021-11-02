# $OpenBSD: Makefile,v 1.7 2021/11/02 00:01:57 sthen Exp $

MODPY_EGG_VERSION =	5.0.3
TRYTON_MODULE =		account_stock_anglo_saxon
REVISION =		1

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_invoice_stock \
			account_product \
			account_stock_continental

TRYTON_TEST_DEPENDS +=	purchase \
			sale \
			sale_supply_drop_shipment

.include <bsd.port.mk>
