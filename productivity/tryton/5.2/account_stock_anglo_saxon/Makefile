# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_stock_anglo_saxon

TRYTON_DEPENDS +=	account \
			account_invoice \
			account_invoice_stock \
			account_product \
			account_stock_continental

TRYTON_TEST_DEPENDS +=	purchase \
			sale \
			sale_supply_drop_shipment

.include <bsd.port.mk>
