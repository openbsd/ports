# $OpenBSD: Makefile,v 1.2 2020/04/10 15:22:44 semarie Exp $

MODPY_EGG_VERSION =	5.2.1
TRYTON_MODULE =		account_stock_continental

TRYTON_DEPENDS +=	account \
			account_product \
			stock

TRYTON_TEST_DEPENDS +=	sale \
			purchase \
			account_invoice \
			sale_supply_drop_shipment

.include <bsd.port.mk>
