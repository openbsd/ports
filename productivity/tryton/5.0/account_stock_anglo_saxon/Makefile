# $OpenBSD: Makefile,v 1.1.1.1 2018/12/03 12:28:22 semarie Exp $

MODPY_EGG_VERSION =	5.0.0
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
